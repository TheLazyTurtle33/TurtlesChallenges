SMODS.Challenge({
    key = "deck_builder",
    rules = {
        custom = {
            { id = "start_with_stander_tag", value = 3 },
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
    button_colour = HEX("FF69B4"),
    unlocked = function()
        return true
    end

})
