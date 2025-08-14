SMODS.Challenge({
    key = "speedrun",
    rules = {
        custom = {
            { id = "ante_scaling_speed", value = 3.5 },
            -- { id = "ante_base_per_round", value = 0.25 },
            { id = "reach_x_ante",       value = 5 },
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
    jokers = {
        { id = 'j_diet_cola' },
        { id = 'j_diet_cola' },
        { id = 'j_diet_cola' },
    },
    vouchers = {
        { id = 'v_overstock_norm' },
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
    button_colour = HEX("FF69B4"),
    unlocked = function()
        return true
    end

})
