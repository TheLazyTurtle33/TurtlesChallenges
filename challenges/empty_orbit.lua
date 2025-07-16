SMODS.Challenge({ -- Empty Orbit
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
            { id = 'v_planet_merchant' },
            { id = 'j_space' },
            { id = 'j_burnt' },
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
    },
    unlocked = function()
        return true
    end

})
