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
            { id = 'j_drunker' },
            { id = 'j_merry_andy' },
            {
                id = 'c_pluto',
                ids = {
                    'c_mercury',
                    'c_venus',
                    'c_earth',
                    'c_mars',
                    'c_jupiter',
                    'c_saturn',
                    'c_uranus',
                    'c_neptune',
                    'c_pluto',
                    'c_ceres',
                    'c_pluto_minor',
                    'c_eris',
                },
            }
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
