--[[
SMODS.Challenge({
	key = "",
    rules = {
        custom = {
            
        },
        modifiers = {
            --{id = 'dollars', value = 4},
            --{id = 'discards', value = 3},
            --{id = 'hands', value = 4},
            --{id = 'hand_size', value = 8},
            --{id = 'joker_slots', value = 5},
            --{id = 'reroll_cost', value = 10},
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
	unlocked = function()
		return true
	end
    
})
]]

SMODS.Challenge({ -- AAAA
	key = "aaaa",
    rules = {
        custom = {
            {id="by_lazyturtle33"},
        },
        modifiers = {
            {id = 'discards', value = 3},
            {id = 'hands', value = 4},
        }
    },
    restrictions = {
        banned_cards = {
            {id = 'v_telescope', ids = {'v_observatory'}},
            {id = 'v_magic_trick', ids = {'v_illusion'}},
            {id = 'c_familiar'},
            {id = 'c_grim'},
            {id = 'c_incantation'},
            {id = 'c_sigil'},
            {id = 'c_ouija'},
            {id = 'c_immolate'},
            {id = 'c_cryptid'},
            {id = 'c_lovers'},
            {id = 'c_strength'},
            {id = 'c_death'},
            {id = 'c_hanged_man'},
            {id = 'c_tower'},
            {id = 'c_sun'},
            {id = 'c_moon'},
            {id = 'c_star'},
            {id = 'c_world'},
            {id = 'c_justice'},
            {id = 'j_marble'},
            {id = 'j_dna'},
            {id = 'j_certificate'},
            {id = 'j_idol'},
            { id = 'j_trading' },
            {id = 'p_standard_normal_1', ids = {
                'p_standard_normal_1','p_standard_normal_2','p_standard_normal_3','p_standard_normal_4','p_standard_jumbo_1','p_standard_jumbo_2','p_standard_mega_1','p_standard_mega_2',
                }
            },
        },
        banned_tags = {
            {id="tag_standard"},
        },
        banned_other = {
                { id = 'bl_psychic', type = 'blind' },
        },
    },
    deck = {
        type = 'Challenge Deck',
        yes_ranks = {['A'] = true},
    },
	unlocked = function()
		return true
	end
    
})
SMODS.Challenge({ -- AAAA but fuck you
	key = "aaaa_fu",
    rules = {
        custom = {
            {id="by_lazyturtle33"},
        },
        modifiers = {
        {id = 'dollars', value = 1},
        {id = 'discards', value = 1},
        {id = 'hands', value = 2},
        {id = 'hand_size', value = 4},
        {id = 'joker_slots', value = 4},
        {id = 'consumable_slots', value = 1},
        },
    },
    restrictions = {
        banned_cards = {
            {id = 'v_telescope', ids = {'v_observatory'}},
            {id = 'v_magic_trick', ids = {'v_illusion'}},
            {id = 'v_directors_cut', ids = {'v_Retcon'}},
            {id = 'c_familiar'},
            {id = 'c_grim'},
            {id = 'c_incantation'},
            {id = 'c_sigil'},
            {id = 'c_ouija'},
            {id = 'c_immolate'},
            {id = 'c_cryptid'},
            {id = 'c_mars'},
            {id = 'c_strength'},
            {id = 'c_death'},
            {id = 'c_hanged_man'},
            {id = 'c_tower'},
            {id = 'c_sun'},
            {id = 'c_moon'},
            {id = 'c_star'},
            {id = 'c_world'},
            {id = 'c_justice'},
            {id = 'c_lovers'},
            {id = 'j_marble'},
            {id = 'j_dna'},
            {id = 'j_certificate'},
            {id = 'j_idol'},
            {id = 'j_trading' },
            {id = 'j_fibonacci'},
            {id = 'j_scholar'},
            {id = 'j_space'},
            {id = 'j_hiker'},
            {id = 'j_cavendish'},
            {id = 'p_standard_normal_1', ids = {
                'p_standard_normal_1','p_standard_normal_2','p_standard_normal_3','p_standard_normal_4','p_standard_jumbo_1','p_standard_jumbo_2','p_standard_mega_1','p_standard_mega_2',
                }
            },
        },
        banned_tags = {
            {id="tag_standard"},
        },
        banned_other = {
            { id = 'bl_psychic', type = 'blind' },
        },
    },
    deck = {
        type = 'Challenge Deck',
        yes_ranks = {['A'] = true},
    },
	unlocked = function()
		return true
	end
    
})

SMODS.Challenge({
	key = "empty_orbit",
    rules = {
        custom = {
            { id = "no_planets" },
            { id = "by_lazyturtle33" },
        },
        modifiers = {
            --{id = 'dollars', value = 4},
            -- {id = 'discards', value = 0},
            -- {id = 'hands', value = 6},
            --{id = 'hand_size', value = 8},
            --{id = 'joker_slots', value = 5},
            --{id = 'consumable_slots', value = 2},
        },
    },
    restrictions = {
        banned_cards = {
            {id='v_planet_merchant'},
            {id='j_space'},
            {id='j_burnt'},
            {id='c_high_priestess'},
            {id = 'p_celestial_normal_1', ids = {
                'p_celestial_normal_1','p_celestial_normal_2','p_celestial_normal_3','p_celestial_normal_4',
                'p_celestial_jumbo_1', 'p_celestial_jumbo_2', 'p_celestial_mega_1', 'p_celestial_mega_2',
            }},
        },
        banned_tags = {
            {id="tag_meteor"},
            {id="tag_orbital"},
        },
        banned_other = {
        },
    },
    deck = {
    },
	unlocked = function()
		return true
	end
    
})


SMODS.Challenge({
	key = "nope",
    rules = {
        custom = {
            { id = "nope", value = 4 },
            -- { id = "blind_size_multi", value = 0.9 },
            {id="by_lazyturtle33"},
            
        },
        modifiers = {
            {id = 'dollars', value = 5},
            {id = 'discards', value = 5},
            {id = 'hands', value = 6},
            {id = 'reroll_cost', value = 4},
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
	unlocked = function()
		return true
	end
    
})


local game_start_run_ref = Game.start_run
function Game:start_run(args)
    game_start_run_ref(self, args)
    local saveTable = args.savetext or nil
    if not saveTable then
        if args.challenge then
            local _ch = args.challenge
            if _ch.rules then
                if _ch.rules.custom then
                    for k, v in ipairs(_ch.rules.custom) do
                        if v.id == 'blind_size_multi' then
                            G.GAME.starting_params.ante_scaling = v.value
                        elseif v.id == 'reach_x_ante' then
                            G.GAME.win_ante = v.value
                        elseif v.id == 'no_planets' then
                            G.GAME.planet_rate = 0
                        elseif v.id == 'ante_scaling_2x' then
                                G.GAME.modifiers.scaling = 2
                        end
                    end
                end
            end
        end
    end
end


render_nope = function (used_tarot)
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
            return ret
        end
end

local CardClickRef = Card.click;
function Card:click()
    print(G.GAME.last_tarot_planet)
    local ltp = G.GAME.last_tarot_planet
    if not copier then set_consumeable_usage(self) end
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
                if not copier then set_consumeable_usage(e) end
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
                if not copier then set_consumeable_usage(e) end
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
            if not copier then set_consumeable_usage(e) end
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
            if not copier then set_consumeable_usage(e) end
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
            if not copier then set_consumeable_usage(e) end
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
            if not copier then set_consumeable_usage(e) end
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
        if not copier then set_consumeable_usage(card) end
        local used_tarot = copier or card
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
                    
                    else
                    card.getting_sliced = true
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            card:start_dissolve({ G.C.RED }, nil, 1.6)
                            return true
                        end
                    }))
                    end

                    return true
                end
            }))
            e.disable_button = nil
            return false
        else
            use_card_ref(e, mute, nosave)
        end
    else
        use_card_ref(e, mute, nosave)
    end
end


-- local evaluate_play_ref = G.FUNCS.evaluate_play;
-- G.FUNCS.evaluate_play = function(e)
--     if G.GAME.modifiers.nope then
--         if G.throw_hand then
--             mult = mod_mult(0)
--             hand_chips = mod_chips(0)
--             G.E_MANAGER:add_event(Event({
--                 trigger = 'immediate',
--                 func = (function()
--                     G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.06*G.SETTINGS.GAMESPEED, blockable = false, blocking = false, func = function()
--                         play_sound('tarot2', 0.76, 0.4);return true end}))
--                     play_sound('tarot2', 1, 0.4)
--                     return true
--                 end)
--             }))
--             G.throw_hand = nil
--         else
--             evaluate_play_ref(e)
--         end
--     else
--         evaluate_play_ref(e)
--     end
-- end