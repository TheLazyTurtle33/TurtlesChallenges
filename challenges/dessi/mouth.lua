SMODS.Challenge({
    key = "mouth",
    rules = {
        custom = {
            { id = "level_up_N_times", value = 1 },
            { id = "one_hand_type" },
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
            { id = 'bl_mouth', type = 'blind' },
        },
    },
    deck = {
        type = 'Challenge Deck'
    },
    button_colour = HEX("FF69B4"),
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
    level_up_hand_ref(card, hand, instant, amount)
    if G.GAME.modifiers.level_up_N_times then
        for i = 1, G.GAME.modifiers.level_up_N_times, 1 do
            level_up_hand_ref(card, hand, instant, amount)
        end
    end
end
