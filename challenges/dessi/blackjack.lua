SMODS.Challenge({
    key = "blackjack",
    rules = {
        custom = {
            { id = "no_base_chips" },
            { id = "must_play_at_least_N_cards", value = 2 },
            { id = "blackjack" },
            { id = "by_dessi" },
        },
        modifiers = {
            --{id = 'dollars', value = 4},
            --{id = 'discards', value = 3},
            --{id = 'hands', value = 4},
            --{id = 'hand_size', value = 8},
            --{id = 'joker_slots', value = 5},
            --{id = 'reroll_cost', value = 5},
            --{id = 'consumable_slots', value = 2},
        },
    },
    jokers = {},
    consumables = {},
    vouchers = {},
    restrictions = {
        banned_cards = {
        },
        banned_tags = {
        },
        banned_other = {
        },
    },
    deck = {
        type = 'Challenge Deck'
    },
    button_colour = PINK,
    unlocked = function()
        return true
    end

})


local set_blind_ref = Blind.set_blind
function Blind:set_blind(blind, reset, silent)
    if G.GAME.modifiers.one_hand_type and not reset then
        self.only_hand = false
    end
    return set_blind_ref(self, blind, reset, silent)
end

local get_loc_debuff_text_ref = Blind.get_loc_debuff_text
function Blind:get_loc_debuff_text()
    if G.GAME.modifiers.one_hand_type then
        local disp_text = (self.config.blind.name == 'The Wheel' and G.GAME.probabilities.normal or '') ..
            self.loc_debuff_text
        if self.only_hand then
            disp_text = disp_text ..
                ' [' .. localize(self.only_hand, 'poker_hands') .. ']'
        end
        return disp_text
    else
        return get_loc_debuff_text_ref(self)
    end
end

local debuff_hand_ref = Blind.debuff_hand
function Blind:debuff_hand(cards, hand, handname, check)
    if G.GAME.modifiers.one_hand_type then
        if self.debuff then
            if self.only_hand and self.only_hand ~= handname then
                self.triggered = true
                return true
            end
            if not check then self.only_hand = handname end
        end
    else
        return debuff_hand_ref(self, cards, hand, handname, check)
    end
end

local level_up_hand_ref = level_up_hand
function level_up_hand(card, hand, instant, amount)
    if G.GAME.modifiers.no_base_chips then
        amount = amount or 1
        G.GAME.hands[hand].level = math.max(0, G.GAME.hands[hand].level + amount)
        G.GAME.hands[hand].mult = math.max(
            G.GAME.hands[hand].s_mult + G.GAME.hands[hand].l_mult * (G.GAME.hands[hand].level - 1), 1)
        G.GAME.hands[hand].chips = 0
        if not instant then
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.2,
                func = function()
                    play_sound('tarot1')
                    if card then card:juice_up(0.8, 0.5) end
                    G.TAROT_INTERRUPT_PULSE = true
                    return true
                end
            }))
            update_hand_text({ delay = 0 }, { mult = G.GAME.hands[hand].mult, StatusText = true })
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.9,
                func = function()
                    play_sound('tarot1')
                    if card then card:juice_up(0.8, 0.5) end
                    return true
                end
            }))
            update_hand_text({ delay = 0 }, { chips = G.GAME.hands[hand].chips, StatusText = true })
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.9,
                func = function()
                    play_sound('tarot1')
                    if card then card:juice_up(0.8, 0.5) end
                    G.TAROT_INTERRUPT_PULSE = nil
                    return true
                end
            }))
            update_hand_text({ sound = 'button', volume = 0.7, pitch = 0.9, delay = 0 },
                { level = G.GAME.hands[hand].level })
            delay(1.3)
        end
        G.E_MANAGER:add_event(Event({
            trigger = 'immediate',
            func = (function()
                check_for_unlock { type = 'upgrade_hand', hand = hand, level = G.GAME.hands[hand].level }
                return true
            end)
        }))
    else
        level_up_hand_ref(card, hand, instant, amount)
    end
end

local play_cards_from_highlighted_ref = G.FUNCS.play_cards_from_highlighted;
G.FUNCS.play_cards_from_highlighted = function(e)
    if G.GAME.modifiers.blackjack then
        G.GAME.modifiers.blackjack_vals = {
            is_blackjack = false,
            is_777 = false,
            is_21 = false,
        }
        local cards = G.hand.highlighted
        local sum = 0
        local aces = 0

        -- First, add up values, counting Aces as 11 initially
        for i = 1, #cards do
            local val = cards[i].base.nominal
            if val == 11 then -- Ace
                aces = aces + 1
            end
            sum = sum + val
        end

        while sum > 21 and aces > 0 do
            sum = sum - 10
            aces = aces - 1
        end
        if #cards == 2 then
            local has_ace, has_ten = false, false
            for i = 1, #cards do
                local val = cards[i].base.nominal
                if val == 11 then
                    has_ace = true
                elseif val == 10 then
                    has_ten = true
                end
            end
            if has_ace and has_ten then
                G.GAME.modifiers.blackjack_vals.is_blackjack = true
            end
        end

        if #cards == 3 then
            local all_sevens = true
            for i = 1, #cards do
                if cards[i].base.nominal ~= 7 then
                    all_sevens = false
                    break
                end
            end
            if all_sevens then
                G.GAME.modifiers.blackjack_vals.is_777 = true
            end
        end
        if sum == 21 then
            G.GAME.modifiers.blackjack_vals.is_21 = true
        end
        if sum > 21 then
            G.E_MANAGER:add_event(Event({
                func = (function()
                    local text = "BUST"
                    play_sound('gong', 0.94, 0.3)
                    play_sound('gong', 0.94 * 1.5, 0.2)
                    play_sound('tarot1', 1.5)
                    ease_colour(G.C.UI_CHIPS, { 0.8, 0.45, 0.85, 1 })
                    ease_colour(G.C.UI_MULT, { 0.8, 0.45, 0.85, 1 })
                    attention_text({
                        scale = 1.4, text = text, hold = 2, align = 'cm', offset = { x = 0, y = -2.7 }, major = G.play
                    })
                    return true
                end)
            }))
            ease_hands_played(-1)
            play_cards_from_highlighted_ref(e)
        else
            play_cards_from_highlighted_ref(e)
        end
    else
        play_cards_from_highlighted_ref(e)
    end
end


local trigger_effect_ref = Back.trigger_effect
function Back:trigger_effect(args)
    if not args then return end
    if G.GAME.modifiers.blackjack and args.context == 'final_scoring_step' then
        if not G.GAME.modifiers.blackjack_vals then
            G.GAME.modifiers.blackjack_vals = {
                is_blackjack = false,
                is_777 = false,
                is_21 = false,
            }
        elseif G.GAME.modifiers.blackjack_vals.is_blackjack then
            args.chips = args.chips * 4
            G.E_MANAGER:add_event(Event({
                func = (function()
                    local text = "blackjack"
                    play_sound('gong', 0.94, 0.3)
                    play_sound('gong', 0.94 * 1.5, 0.2)
                    play_sound('tarot1', 1.5)
                    ease_colour(G.C.UI_CHIPS, { 0.8, 0.45, 0.85, 1 })
                    ease_colour(G.C.UI_MULT, { 0.8, 0.45, 0.85, 1 })
                    attention_text({
                        scale = 1.4, text = text, hold = 2, align = 'cm', offset = { x = 0, y = -2.7 }, major = G.play
                    })
                    return true
                end)
            }))
            delay(0.6)
        elseif G.GAME.modifiers.blackjack_vals.is_777 then
            args.chips = args.chips * 7
            G.E_MANAGER:add_event(Event({
                func = (function()
                    local text = "777"
                    play_sound('gong', 0.94, 0.3)
                    play_sound('gong', 0.94 * 1.5, 0.2)
                    play_sound('tarot1', 1.5)
                    ease_colour(G.C.UI_CHIPS, { 0.8, 0.45, 0.85, 1 })
                    ease_colour(G.C.UI_MULT, { 0.8, 0.45, 0.85, 1 })
                    attention_text({
                        scale = 1.4, text = text, hold = 2, align = 'cm', offset = { x = 0, y = -2.7 }, major = G.play
                    })
                    return true
                end)
            }))
            delay(0.6)
        elseif G.GAME.modifiers.blackjack_vals.is_21 then
            args.chips = args.chips * 2
            G.E_MANAGER:add_event(Event({
                func = (function()
                    local text = "21"
                    play_sound('gong', 0.94, 0.3)
                    play_sound('gong', 0.94 * 1.5, 0.2)
                    play_sound('tarot1', 1.5)
                    ease_colour(G.C.UI_CHIPS, { 0.8, 0.45, 0.85, 1 })
                    ease_colour(G.C.UI_MULT, { 0.8, 0.45, 0.85, 1 })
                    attention_text({
                        scale = 1.4, text = text, hold = 2, align = 'cm', offset = { x = 0, y = -2.7 }, major = G.play
                    })
                    return true
                end)
            }))
            delay(0.6)
        end


        return args.chips, args.mult
    end
    return trigger_effect_ref(args)
end
