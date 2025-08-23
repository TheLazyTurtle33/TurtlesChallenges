SMODS.Challenge({
    key = "deck_builder",
    rules = {
        custom = {
            { id = "start_with_standard_tag", value = 5 },
            { id = "joker_rate",              value = 0.5 },
            { id = "tarot_rate",              value = 0.5 },
            { id = "planet_rate",             value = 0.5 },
            { id = "fragile",                 value = 2 },
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
    vouchers = {
        { id = 'v_magic_trick' }
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
        type = 'Challenge Deck',
        yes_ranks = {},
    },
    button_colour = PINK,
    unlocked = function()
        return true
    end

})

local evaluate_play_ref = G.FUNCS.evaluate_play
G.FUNCS.evaluate_play = function(e)
    evaluate_play_ref(e)
    if G.GAME.modifiers.fragile then
        local text, disp_text, poker_hands, scoring_hand, non_loc_disp_text = G.FUNCS.get_poker_hand_info(G.play.cards)
        for i = 1, #scoring_hand, 1 do
            if pseudorandom('fragile') < G.GAME.probabilities.normal / G.GAME.modifiers.fragile then
                G.E_MANAGER:add_event(Event({
                    func = function()
                        if scoring_hand[i].ability.name == 'Glass Card' then
                            scoring_hand[i]:shatter()
                        else
                            scoring_hand[i]:start_dissolve()
                        end
                        return true
                    end
                }))
                delay(0.2)
            end
        end
    end
end
