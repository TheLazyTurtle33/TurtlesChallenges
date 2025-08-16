SMODS.Challenge({
    key = "solar",
    rules = {
        custom = {
            { id = "by_lazyturtle33" },
        },
        modifiers = {
            --{id = 'dollars', value = 4},
            { id = 'discards', value = 0 },
            { id = 'hands',    value = 5 },
            --{id = 'hand_size', value = 8},
            --{id = 'joker_slots', value = 5},
            --{id = 'reroll_cost', value = 5},
            --{id = 'consumable_slots', value = 2},
        },
    },
    jokers = {
        { id = 'j_space', eternal = true },
    },
    consumables = {},
    vouchers = {},
    restrictions = {
        banned_cards = {
            { id = 'v_wasteful' },
            {
                id = 'p_celestial_normal_1',
                ids = {
                    'p_celestial_normal_1', 'p_celestial_normal_2', 'p_celestial_normal_3', 'p_celestial_normal_4',
                    'p_celestial_jumbo_1', 'p_celestial_jumbo_2', 'p_celestial_mega_1', 'p_celestial_mega_2',
                }
            },
        },
        banned_tags = {
        },
        banned_other = {
        },
    },
    deck = {
        type = 'Challenge Deck'
    },
    button_colour = LIGHT_BLUE, -- turtle
    unlocked = function()
        return true
    end

})
