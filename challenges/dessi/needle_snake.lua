SMODS.Challenge({
    key = "needle_snake",
    rules = {
        custom = {
            { id = "always_draw_n_cards", value = 3 },
            { id = "money_per_discard",   value = 3 },
            { id = "by_dessi" },
        },
        modifiers = {
            -- {id = 'dollars', value = 4},
            { id = 'discards',  value = 4 },
            { id = 'hands',     value = 1 },
            { id = 'hand_size', value = 2 },
            -- {id = 'joker_slots', value = 5},
            -- {id = 'reroll_cost', value = 5},
            -- {id = 'consumable_slots', value = 2},
        },
    },
    jokers = {
        { id = 'j_joker' },
    },
    restrictions = {
        banned_cards = {
            { id = 'j_burglar' },
            { id = 'v_grabber' },
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
    end,
    button_colour = PINK,

})

local draw_from_deck_to_hand_temp = G.FUNCS.draw_from_deck_to_hand
G.FUNCS.draw_from_deck_to_hand = function(e)
    if G.GAME.modifiers.always_draw_n_cards then
        draw_from_deck_to_hand_temp(math.min(#G.deck.cards, G.GAME.modifiers.always_draw_n_cards))
    else
        draw_from_deck_to_hand_temp(e)
    end
end
