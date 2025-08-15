SMODS.Challenge({
    key = "plain_jane",
    rules = {
        custom = {
            -- { id = "ante_scaling_speed", value = 3.5 },
            -- { id = "ante_base_per_round", value = 0.25 },
            { id = "no_edition", },
            { id = "its_all_so_plain", },
            { id = "by_dessi_no_color" },
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
    },
    vouchers = {
    },
    restrictions = {
        banned_cards = {
            { id = 'j_dna' },
            { id = 'j_vagabond' },
            { id = 'j_baron' },
            { id = 'j_obelisk' },
            { id = 'j_baseball' },
            { id = 'j_ancient' },
            { id = 'j_campfire' },
            { id = 'j_blueprint' },
            { id = 'j_wee' },
            { id = 'j_duo' },
            { id = 'j_trio' },
            { id = 'j_family' },
            { id = 'j_order' },
            { id = 'j_tribe' },
            { id = 'j_stuntman' },
            { id = 'j_invisible' },
            { id = 'j_brainstorm' },
            { id = 'j_drivers_license' },
            { id = 'j_burnt' },
            { id = 'j_marble' },
            { id = 'j_certificate' },
            { id = 'j_trading' },




            { id = 'c_magician' },
            { id = 'c_emperor' },
            { id = 'c_heirophant' },
            { id = 'c_lovers' },
            { id = 'c_chariot' },
            { id = 'c_wheel_of_fortune' },
            { id = 'c_justice' },
            { id = 'c_devil' },
            { id = 'c_tower' },
            { id = 'c_trance' },
            { id = 'c_talisman' },
            { id = 'c_medium' },
            { id = 'c_incantation' },
            { id = 'c_grim' },
            { id = 'c_familiar' },
            { id = 'c_ectoplasm' },
            { id = 'c_deja_vu' },
            { id = 'c_aura' },
            { id = 'c_soul' },
            { id = 'v_illusion' },
            {
                id = 'p_standard_normal_1',
                ids = {
                    'p_standard_normal_1', 'p_standard_normal_2', 'p_standard_normal_3', 'p_standard_normal_4',
                    'p_standard_jumbo_1', 'p_standard_jumbo_2', 'p_standard_mega_1', 'p_standard_mega_2',
                }
            },
        },
        banned_tags = {
            { id = 'tag_negative' },
            { id = 'tag_foil' },
            { id = 'tag_holo' },
            { id = 'tag_polychrome' },
            { id = 'tag_standard' },
        },
        banned_other = {
        },
    },
    deck = {
        type = 'Challenge Deck'
    },
    button_colour = HEX("808080"),
    unlocked = function()
        return true
    end

})
local create_card_ref = create_card
function create_card(_type, area, legendary, _rarity, skip_materialize, soulable, forced_key, key_append)
    local card = create_card_ref(_type, area, legendary, _rarity, skip_materialize, soulable, forced_key, key_append)
    -- print("/////// new card ///////////")
    -- print(card)
    if G.GAME.modifiers.no_edition then
        card.edition = nil
    end
    return card
end
