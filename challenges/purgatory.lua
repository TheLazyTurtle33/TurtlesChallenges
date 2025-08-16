SMODS.Challenge({
    key = "purgatory",
    rules = {
        custom = {
            { id = "all_eternal" },
            { id = "debuff_played_cards" },
            { id = "discard_cost",           value = 1 },
            { id = "flipped_cards",          value = 4 },
            { id = "no_extra_hand_money" },
            { id = "no_reward" },
            { id = "no_interest" },
            { id = 'stock_market' },
            { id = "win_ante",               value = 16 },
            { id = "ante_scaling_speed",     value = 0.5 },
            { id = "blind_size_multi",       value = 0.5 },
            { id = "cooke_clicker1" },
            { id = "cooke_clicker",          value = 0.0005 },
            { id = "ante_base_per_round",    value = 0.05 },
            { id = "ante_base_per_purchase", value = 0.05 },
            { id = "no_planets" },
            -- { id = "" },
            { id = "by_dessi" },
            { id = "by_lazyturtle33" },
        },
        modifiers = {
            { id = 'dollars',          value = 50 },
            { id = 'discards',         value = 7 },
            { id = 'hands',            value = 7 },
            { id = 'hand_size',        value = 10 },
            { id = 'joker_slots',      value = 15 },
            { id = 'reroll_cost',      value = 2 },
            { id = 'consumable_slots', value = 5 },
        },
    },
    jokers = {
        { id = 'j_joker', eternal = true }
    },
    consumables = {},
    vouchers = {},
    restrictions = {
        banned_cards = {
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
    button_colour = HEX("47000D"),
    unlocked = function()
        return true
    end

})
