SMODS.Challenge({
    key = "run_aways",
    rules = {
        custom = {
            { id = "by_lazyturtle33" },
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
        type = 'Challenge Deck',
        cards = {
            -- kings
            { ['s'] = 'H', ['r'] = 'K' },
            { ['s'] = 'H', ['r'] = 'K' },
            { ['s'] = 'H', ['r'] = 'K' },

            { ['s'] = 'C', ['r'] = 'K' },
            { ['s'] = 'C', ['r'] = 'K' },
            { ['s'] = 'C', ['r'] = 'K' },

            { ['s'] = 'S', ['r'] = 'K' },
            { ['s'] = 'S', ['r'] = 'K' },
            { ['s'] = 'S', ['r'] = 'K' },

            { ['s'] = 'D', ['r'] = 'K' },
            { ['s'] = 'D', ['r'] = 'K' },
            { ['s'] = 'D', ['r'] = 'K' },
            -- queens
            { ['s'] = 'H', ['r'] = 'Q' },
            { ['s'] = 'H', ['r'] = 'Q' },
            { ['s'] = 'H', ['r'] = 'Q' },

            { ['s'] = 'C', ['r'] = 'Q' },
            { ['s'] = 'C', ['r'] = 'Q' },
            { ['s'] = 'C', ['r'] = 'Q' },

            { ['s'] = 'S', ['r'] = 'Q' },
            { ['s'] = 'S', ['r'] = 'Q' },
            { ['s'] = 'S', ['r'] = 'Q' },

            { ['s'] = 'D', ['r'] = 'Q' },
            { ['s'] = 'D', ['r'] = 'Q' },
            { ['s'] = 'D', ['r'] = 'Q' },
            -- Jacks
            { ['s'] = 'H', ['r'] = 'J' },
            { ['s'] = 'H', ['r'] = 'J' },
            { ['s'] = 'H', ['r'] = 'J' },

            { ['s'] = 'C', ['r'] = 'J' },
            { ['s'] = 'C', ['r'] = 'J' },
            { ['s'] = 'C', ['r'] = 'J' },

            { ['s'] = 'S', ['r'] = 'J' },
            { ['s'] = 'S', ['r'] = 'J' },
            { ['s'] = 'S', ['r'] = 'J' },

            { ['s'] = 'D', ['r'] = 'J' },
            { ['s'] = 'D', ['r'] = 'J' },
            { ['s'] = 'D', ['r'] = 'J' },
        }
    },
    button_colour = LIGHT_BLUE, -- turtle
    unlocked = function()
        return true
    end

})
