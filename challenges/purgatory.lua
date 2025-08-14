SMODS.Challenge({
    key = "purgatory",
    rules = {
        custom = {
            { id = "all_eternal" },
            { id = "chips_dollar_cap" },
            { id = "debuff_played_cards" },
            { id = "discard_cost",                 value = 1 },
            { id = "flipped_cards",                value = 4 },
            { id = "inflation" },
            { id = "minus_hand_size_per_X_dollar", value = 5 },
            { id = "no_extra_hand_money" },
            { id = "no_reward" },
            { id = "no_interest" },
            { id = 'stock_market' },
            { id = "win_ante",                     value = 16 },
            { id = "ante_scaling_speed",           value = 0.75 },
            { id = "blind_size_multi",             value = 0.75 },
            { id = "cooke_clicker1" },
            { id = "cooke_clicker",                value = 0.01 },
            { id = "ante_base_per_round",          value = 0.1 },
            { id = "no_planets" },
            -- { id = "" },
            { id = "by_dessi" },
            { id = "by_lazyturtle33" },
        },
        modifiers = {
            { id = 'dollars',          value = 20 },
            { id = 'discards',         value = 5 },
            { id = 'hands',            value = 5 },
            { id = 'hand_size',        value = 9 },
            { id = 'joker_slots',      value = 10 },
            { id = 'reroll_cost',      value = 3 },
            { id = 'consumable_slots', value = 4 },
        },
    },
    jokers = {
        { id = 'j_joker', eternal = true }
    },
    consumables = {},
    vouchers = {},
    restrictions = {
        banned_cards = {
            { id = 'c_high_priestess' },
            { id = 'c_trance' },
            {
                id = 'p_celestial_normal_1',
                ids = {
                    'p_celestial_normal_1', 'p_celestial_normal_2', 'p_celestial_normal_3', 'p_celestial_normal_4',
                    'p_celestial_jumbo_1', 'p_celestial_jumbo_2', 'p_celestial_mega_1', 'p_celestial_mega_2',
                }
            },
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
            { id = "tag_meteor" },
            { id = "tag_orbital" },
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
