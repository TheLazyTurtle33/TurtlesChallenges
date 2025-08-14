SMODS.Challenge({
    key = "nope",
    rules = {
        custom = {
            { id = "nope",           value = 4 },
            -- { id = "blind_size_multi", value = 0.9 },
            { id = "by_lazyturtle33" },
            { id = "warning_buggy" },

        },
        modifiers = {
            { id = 'dollars',     value = 5 },
            { id = 'discards',    value = 5 },
            { id = 'hands',       value = 6 },
            { id = 'reroll_cost', value = 4 },
            --{id = 'hand_size', value = 8},
            --{id = 'joker_slots', value = 5},
            --{id = 'consumable_slots', value = 2},

        },
    },
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
    button_colour = HEX("00FBFF"),
    unlocked = function()
        return true
    end

})



render_nope = function(used_tarot)
    G.E_MANAGER:add_event(Event({
        trigger = 'before',
        delay = 0.4,
        func = function()
            attention_text({
                text = localize('k_nope_ex'),
                scale = 1.3,
                hold = 1.4,
                major = used_tarot,
                backdrop_colour = G.C.SECONDARY_SET.Tarot,
                align = 'cm',
                offset = { x = 0, y = 0 },
                silent = false
            })
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.06 * G.SETTINGS.GAMESPEED,
                blockable = false,
                blocking = false,
                func = function()
                    play_sound('tarot2', 0.76, 0.4); return true
                end
            }))

            return true
        end
    }))
end

local Blind_set_blind_ref = Blind.set_blind
function Blind:set_blind(blind, reset, silent)
    if not copier then set_consumeable_usage(self) end
    local used_tarot = copier or self
    local ret = Blind_set_blind_ref(self, blind, reset, silent)
    if G.GAME.modifiers.nope and pseudorandom(pseudoseed('nope')) < 1 / G.GAME.modifiers.nope and (not reset) and self.config.blind.boss then
        if G.GAME.blind and ((not G.GAME.blind.disabled) and (G.GAME.blind:get_type() == 'Boss')) then
            -- card_eval_status_text(context.blueprint_card or self, 'extra', nil, nil, nil, {message = localize('ph_boss_disabled')})
            G.GAME.blind:disable()
        end
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                attention_text({
                    text = localize('k_nope_ex'),
                    scale = 1.3,
                    hold = 1.4,
                    major = used_tarot,
                    backdrop_colour = G.C.SECONDARY_SET.Tarot,
                    -- align = 'cm',
                    offset = { x = 0, y = 0 },
                    silent = true
                })
                G.E_MANAGER:add_event(Event({
                    trigger = 'after',
                    delay = 0.06 * G.SETTINGS.GAMESPEED,
                    blockable = false,
                    blocking = false,
                    func = function()
                        play_sound('tarot2', 0.76, 0.4); return true
                    end
                }))
                play_sound('tarot2', 1, 0.4)
                used_tarot:juice_up(0.3, 0.5)
                return true
            end
        }))
    else
        if blind and G.GAME.modifiers.ante_base_per_round then
            G.GAME.starting_params.ante_scaling = G.GAME.starting_params.ante_scaling +
                G.GAME.modifiers.ante_base_per_round
        end
        return ret
    end
end

local CardClickRef = Card.click;
function Card:click()
    local ltp = G.GAME.last_tarot_planet
    -- if not copier then set_consumeable_usage(self) end
    local used_tarot = copier or self

    if G.GAME.modifiers.nope then
        if pseudorandom(pseudoseed('nope')) < 1 / G.GAME.modifiers.nope then
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.4,
                func = function()
                    attention_text({
                        text = localize('k_nope_ex'),
                        scale = 1.3,
                        hold = 1.4,
                        major = used_tarot,
                        backdrop_colour = G.C.SECONDARY_SET.Tarot,
                        -- align = 'cm',
                        offset = { x = 0, y = 0 },
                        silent = true
                    })
                    G.E_MANAGER:add_event(Event({
                        trigger = 'after',
                        delay = 0.06 * G.SETTINGS.GAMESPEED,
                        blockable = false,
                        blocking = false,
                        func = function()
                            play_sound('tarot2', 0.76, 0.4); return true
                        end
                    }))
                    play_sound('tarot2', 1, 0.4)
                    used_tarot:juice_up(0.3, 0.5)
                    return true
                end
            }))
            G.GAME.last_tarot_planet = ltp
        else
            CardClickRef(self)
        end
    else
        CardClickRef(self)
    end
end

local buy_from_shop_ref = G.FUNCS.buy_from_shop;
G.FUNCS.buy_from_shop = function(e)
    local c1 = e.config.ref_table
    if c1 and c1:is(Card) then
        if G.GAME.modifiers.nope and pseudorandom(pseudoseed('nope')) < 1 / G.GAME.modifiers.nope then
            --if not copier then set_consumeable_usage(e) end
            local used_tarot = copier or e
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.4,
                func = function()
                    attention_text({
                        text = localize('k_nope_ex'),
                        scale = 1.3,
                        hold = 1.4,
                        major = used_tarot,
                        backdrop_colour = G.C.SECONDARY_SET.Tarot,
                        -- align = 'cm',
                        offset = { x = 0, y = 0 },
                        silent = true
                    })
                    G.E_MANAGER:add_event(Event({
                        trigger = 'after',
                        delay = 0.06 * G.SETTINGS.GAMESPEED,
                        blockable = false,
                        blocking = false,
                        func = function()
                            play_sound('tarot2', 0.76, 0.4); return true
                        end
                    }))
                    play_sound('tarot2', 1, 0.4)
                    used_tarot:juice_up(0.3, 0.5)
                    play_sound('card1')
                    inc_career_stat('c_shop_dollars_spent', c1.cost)
                    if c1.cost ~= 0 then
                        ease_dollars(-c1.cost)
                    end
                    return true
                end
            }))
            e.disable_button = nil
            return false
        else
            buy_from_shop_ref(e)
        end
    end
end

local sell_card_ref = G.FUNCS.sell_card;
G.FUNCS.sell_card = function(e)
    local c1 = e.config.ref_table
    if c1 and c1:is(Card) then
        if G.GAME.modifiers.nope and pseudorandom(pseudoseed('nope')) < 1 / G.GAME.modifiers.nope then
            --if not copier then set_consumeable_usage(e) end
            local used_tarot = copier or e
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.4,
                func = function()
                    attention_text({
                        text = localize('k_nope_ex'),
                        scale = 1.3,
                        hold = 1.4,
                        major = used_tarot,
                        backdrop_colour = G.C.SECONDARY_SET.Tarot,
                        -- align = 'cm',
                        offset = { x = 0, y = 0 },
                        silent = true
                    })
                    G.E_MANAGER:add_event(Event({
                        trigger = 'after',
                        delay = 0.06 * G.SETTINGS.GAMESPEED,
                        blockable = false,
                        blocking = false,
                        func = function()
                            play_sound('tarot2', 0.76, 0.4); return true
                        end
                    }))
                    ease_dollars(e.config.ref_table.sell_cost)
                    play_sound('coin2')
                    e.config.ref_table:juice_up(0.3, 0.4)

                    return true
                end
            }))
            e.disable_button = nil
            return false
        else
            sell_card_ref(e)
        end
    end
end


local reroll_shop_ref = G.FUNCS.reroll_shop;
G.FUNCS.reroll_shop = function(e)
    if G.GAME.modifiers.nope and pseudorandom(pseudoseed('nope')) < 1 / G.GAME.modifiers.nope then
        --if not copier then set_consumeable_usage(e) end
        local used_tarot = copier or e
        if G.GAME.current_round.reroll_cost > 0 then
            inc_career_stat('c_shop_dollars_spent', G.GAME.current_round.reroll_cost)
            inc_career_stat('c_shop_rerolls', 1)
            ease_dollars(-G.GAME.current_round.reroll_cost)
        end
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                attention_text({
                    text = localize('k_nope_ex'),
                    scale = 1.3,
                    hold = 1.4,
                    major = used_tarot,
                    backdrop_colour = G.C.SECONDARY_SET.Tarot,
                    align = 'cm',
                    offset = { x = 0, y = 0 },
                    silent = true
                })
                G.E_MANAGER:add_event(Event({
                    trigger = 'after',
                    delay = 0.06 * G.SETTINGS.GAMESPEED,
                    blockable = false,
                    blocking = false,
                    func = function()
                        play_sound('tarot2', 0.76, 0.4); return true
                    end
                }))

                play_sound('coin2')
                play_sound('other1')


                return true
            end
        }))
        -- e.disable_button = nil
        return false
    else
        reroll_shop_ref(e)
    end
end

local reroll_boss_ref = G.FUNCS.reroll_boss;
G.FUNCS.reroll_boss = function(e)
    if G.GAME.modifiers.nope and pseudorandom(pseudoseed('nope')) < 1 / G.GAME.modifiers.nope then
        --if not copier then set_consumeable_usage(e) end
        local used_tarot = copier or e
        if G.GAME.current_round.reroll_cost > 0 then
            inc_career_stat('c_shop_dollars_spent', G.GAME.current_round.reroll_cost)
            inc_career_stat('c_shop_rerolls', 1)
            ease_dollars(-G.GAME.current_round.reroll_cost)
        end
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                attention_text({
                    text = localize('k_nope_ex'),
                    scale = 1.3,
                    hold = 1.4,
                    major = used_tarot,
                    backdrop_colour = G.C.SECONDARY_SET.Tarot,
                    align = 'cm',
                    offset = { x = 0, y = 0 },
                    silent = true
                })
                G.E_MANAGER:add_event(Event({
                    trigger = 'after',
                    delay = 0.06 * G.SETTINGS.GAMESPEED,
                    blockable = false,
                    blocking = false,
                    func = function()
                        play_sound('tarot2', 0.76, 0.4); return true
                    end
                }))

                play_sound('coin2')
                play_sound('other1')


                return true
            end
        }))
        -- e.disable_button = nil
        return false
    else
        reroll_boss_ref(e)
    end
end

local discard_cards_from_highlighted_ref = G.FUNCS.discard_cards_from_highlighted;
G.FUNCS.discard_cards_from_highlighted = function(e, hook)
    if G.GAME.modifiers.nope then
        local highlighted_count = math.min(#G.hand.highlighted, G.discard.config.card_limit - #G.play.cards)
        if highlighted_count > 0 then
            --if not copier then set_consumeable_usage(e) end
            local used_tarot = copier or e
            if pseudorandom(pseudoseed('nope')) < 1 / G.GAME.modifiers.nope then
                render_nope(used_tarot)

                if not hook then
                    if G.GAME.modifiers.discard_cost then
                        ease_dollars(-G.GAME.modifiers.discard_cost)
                    end
                    ease_discard(-1)
                    G.GAME.current_round.discards_used = G.GAME.current_round.discards_used + 1
                end
                e.disable_button = nil
                -- return false
            else
                discard_cards_from_highlighted_ref(e, hook)
            end
        end
    else
        discard_cards_from_highlighted_ref(e, hook)
    end
end

local play_cards_from_highlighted_ref = G.FUNCS.play_cards_from_highlighted;
G.FUNCS.play_cards_from_highlighted = function(e)
    if G.GAME.modifiers.nope and G.GAME.current_round.hands_left > 1 then
        local highlighted_count = math.min(#G.hand.highlighted, G.discard.config.card_limit - #G.play.cards)
        if highlighted_count > 0 then
            --if not copier then set_consumeable_usage(e) end
            local used_tarot = copier or e
            if pseudorandom(pseudoseed('nope')) < 1 / G.GAME.modifiers.nope then
                render_nope(used_tarot)


                -- G.throw_hand = true
                discard_cards_from_highlighted_ref(e, false)
                if G.GAME.current_round.discards_left > 0 then
                    ease_discard(1)
                end
                ease_hands_played(-1)



                e.disable_button = nil
                -- return false
            else
                play_cards_from_highlighted_ref(e)
            end
        end
    else
        play_cards_from_highlighted_ref(e)
    end
end


local use_card_ref = G.FUNCS.use_card;
G.FUNCS.use_card = function(e, mute, nosave)
    local card = e.config.ref_table
    if G.GAME.modifiers.nope then
        -- if not copier then set_consumeable_usage(card) end
        local used_tarot = copier or card
        if pseudorandom(pseudoseed('nope')) < 1 / G.GAME.modifiers.nope then
            G.E_MANAGER:add_event(Event({
                trigger = 'before',
                delay = 0.4,
                func = function()
                    attention_text({
                        text = localize('k_nope_ex'),
                        scale = 1.3,
                        hold = 1.4,
                        major = used_tarot,
                        backdrop_colour = G.C.SECONDARY_SET.Tarot,
                        -- align = 'cm',
                        offset = { x = 0, y = 0 },
                        silent = true
                    })
                    G.E_MANAGER:add_event(Event({
                        trigger = 'after',
                        delay = 0.06 * G.SETTINGS.GAMESPEED,
                        blockable = false,
                        blocking = false,
                        func = function()
                            play_sound('tarot2', 0.76, 0.4); return true
                        end
                    }))
                    if (card.ability.set == 'Booster' or card.ability.set == 'Voucher') and not nosave and G.STATE == G.STATES.SHOP then
                        play_sound('tarot2', 1, 0.4)
                        used_tarot:juice_up(0.3, 0.5)
                        play_sound('card1')
                        inc_career_stat('c_shop_dollars_spent', card.cost)
                        if card.cost ~= 0 then
                            ease_dollars(-card.cost)
                        end
                        -- else
                        --     G.FUNCS.skip_booster(e)
                    end
                    return true
                end
            }))
            if G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.PLANET_PACK or G.STATE == G.STATES.BUFFOON_PACK or G.STATE == G.STATES.STANDARD_PACK then
                G.GAME.pack_choices = G.GAME.pack_choices - 1


                if G.GAME.pack_choices <= 0 then
                    G.CONTROLLER.interrupt.focus = true
                    G.FUNCS.end_consumeable(nil, 1)
                end
            end
            if not (card.ability.set == 'Booster' or card.ability.set == 'Voucher') then
                card.getting_sliced = true
                G.E_MANAGER:add_event(Event({
                    func = function()
                        card:start_dissolve({ G.C.RED }, nil, 1.6)
                        return true
                    end
                }))
                e.disable_button = nil
            end
            e.disable_button = nil
            return false
        else
            use_card_ref(e, mute, nosave)
        end
    else
        use_card_ref(e, mute, nosave)
    end
end
