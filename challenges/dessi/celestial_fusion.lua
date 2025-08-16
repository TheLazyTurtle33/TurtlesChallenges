SMODS.Challenge({
    key = "celestial_fusion",
    rules = {
        custom = {
            { id = "on_plasma" },
            { id = "blind_size_multi", value = 2 },
            -- { id = "ante_scaling_speed", value = 2 },
            { id = "no_scoring_jokers" },
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
    consumeables = {
        { id = 'c_heirophant' },
        { id = 'c_tower' }
    },
    restrictions = {
        banned_cards = {
            { id = 'j_joker' },
            { id = 'j_greedy_joker' },
            { id = 'j_lusty_joker' },
            { id = 'j_wrathful_joker' },
            { id = 'j_gluttenous_joker' },
            { id = 'j_jolly' },
            { id = 'j_zany' },
            { id = 'j_mad' },
            { id = 'j_crazy' },
            { id = 'j_droll' },
            { id = 'j_sly' },
            { id = 'j_wily' },
            { id = 'j_clever' },
            { id = 'j_devious' },
            { id = 'j_crafty' },

            { id = 'j_half' },
            { id = 'j_stencil' },
            { id = 'j_loyalty_card' },
            { id = 'j_mystic_summit' },
            { id = 'j_banner' },
            { id = 'j_ceremonial' },
            { id = 'j_misprint' },
            { id = 'j_raised_fist' },

            { id = 'j_fibonacci' },
            { id = 'j_steel_joker' },
            { id = 'j_scary_face' },
            { id = 'j_abstract' },
            { id = 'j_gros_michel' },
            { id = 'j_even_steven' },
            { id = 'j_odd_todd' },
            { id = 'j_scholar' },
            { id = 'j_supernova' },
            { id = 'j_ride_the_bus' },

            { id = 'j_blackboard' },
            { id = 'j_runner' },
            { id = 'j_ice_cream' },
            { id = 'j_blue_joker' },
            { id = 'j_constellation' },
            { id = 'j_green_joker' },

            { id = 'j_cavendish' },
            { id = 'j_card_sharp' },
            { id = 'j_red_card' },
            { id = 'j_madness' },
            { id = 'j_square' },
            { id = 'j_vampire' },
            { id = 'j_hologram' },
            { id = 'j_baron' },
            { id = 'j_obelisk' },

            { id = 'j_photograph' },
            { id = 'j_erosion' },
            { id = 'j_fortune_teller' },
            { id = 'j_stone' },

            { id = 'j_lucky_cat' },
            { id = 'j_baseball' },
            { id = 'j_bull' },
            { id = 'j_flash' },
            { id = 'j_popcorn' },
            { id = 'j_trousers' },
            { id = 'j_ancient' },
            { id = 'j_ramen' },
            { id = 'j_walkie_talkie' },
            { id = 'j_castle' },
            { id = 'j_smiley' },
            { id = 'j_campfire' },

            { id = 'j_acrobat' },
            { id = 'j_swashbuckler' },
            { id = 'j_throwback' },
            { id = 'j_bloodstone' },
            { id = 'j_arrowhead' },
            { id = 'j_onyx_agate' },
            { id = 'j_glass' },

            { id = 'j_flower_pot' },
            { id = 'j_wee' },
            { id = 'j_idol' },
            { id = 'j_seeing_double' },
            { id = 'j_hit_the_road' },
            { id = 'j_duo' },
            { id = 'j_trio' },
            { id = 'j_family' },
            { id = 'j_order' },
            { id = 'j_tribe' },

            { id = 'j_stuntman' },
            { id = 'j_shoot_the_moon' },
            { id = 'j_drivers_license' },
            { id = 'j_bootstraps' },
            { id = 'j_caino' },
            { id = 'j_triboulet' },
            { id = 'j_yorick' },
        },
        banned_tags = {
        },
        banned_other = {
        },
    },
    deck = {
        type = 'Challenge Deck'
    },
    button_colour = PINK,
    unlocked = function()
        return true
    end

})

local evaluate_play_temp = G.FUNCS.evaluate_play
G.FUNCS.evaluate_play = function(e)
    local temp_back_name = G.GAME.selected_back.name
    if G.GAME.modifiers.on_plasma then
        G.GAME.selected_back.name = "Plasma Deck"
        evaluate_play_temp(e)
        G.GAME.selected_back.name = temp_back_name
    else
        evaluate_play_temp(e)
    end
end
