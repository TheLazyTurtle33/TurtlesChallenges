SMODS.Challenge({ -- AAAA
    key = "aaaa",
    rules = {
        custom = {
            { id = "by_lazyturtle33" },
        },
        modifiers = {
            { id = 'discards', value = 3 },
            { id = 'hands',    value = 4 },
        }
    },
    restrictions = {
        banned_cards = {
            { id = 'v_telescope',   ids = { 'v_observatory' } },
            { id = 'v_magic_trick', ids = { 'v_illusion' } },
            { id = 'c_familiar' },
            { id = 'c_grim' },
            { id = 'c_incantation' },
            { id = 'c_sigil' },
            { id = 'c_ouija' },
            { id = 'c_immolate' },
            { id = 'c_cryptid' },
            { id = 'c_lovers' },
            { id = 'c_strength' },
            { id = 'c_death' },
            { id = 'c_hanged_man' },
            { id = 'c_tower' },
            { id = 'c_sun' },
            { id = 'c_moon' },
            { id = 'c_star' },
            { id = 'c_world' },
            { id = 'c_justice' },
            { id = 'j_marble' },
            { id = 'j_dna' },
            { id = 'j_certificate' },
            { id = 'j_idol' },
            { id = 'j_trading' },
            {
                id = 'p_standard_normal_1',
                ids = {
                    'p_standard_normal_1', 'p_standard_normal_2', 'p_standard_normal_3', 'p_standard_normal_4',
                    'p_standard_jumbo_1', 'p_standard_jumbo_2', 'p_standard_mega_1', 'p_standard_mega_2',
                }
            },
        },
        banned_tags = {
            { id = "tag_standard" },
        },
        banned_other = {
            { id = 'bl_psychic', type = 'blind' },
        },
    },
    deck = {
        type = 'Challenge Deck',
        yes_ranks = { ['A'] = true },
    },
    button_colour = LIGHT_BLUE,
    unlocked = function()
        return true
    end

})
SMODS.Challenge({ -- AAAA but fuck you
    key = "aaaa_fu",
    rules = {
        custom = {
            { id = "by_lazyturtle33" },
        },
        modifiers = {
            { id = 'dollars',          value = 1 },
            { id = 'discards',         value = 1 },
            { id = 'hands',            value = 2 },
            { id = 'hand_size',        value = 4 },
            { id = 'joker_slots',      value = 4 },
            { id = 'consumable_slots', value = 1 },
        },
    },
    restrictions = {
        banned_cards = {
            { id = 'v_telescope',     ids = { 'v_observatory' } },
            { id = 'v_magic_trick',   ids = { 'v_illusion' } },
            { id = 'v_directors_cut', ids = { 'v_Retcon' } },
            { id = 'c_familiar' },
            { id = 'c_grim' },
            { id = 'c_incantation' },
            { id = 'c_sigil' },
            { id = 'c_ouija' },
            { id = 'c_immolate' },
            { id = 'c_cryptid' },
            { id = 'c_mars' },
            { id = 'c_strength' },
            { id = 'c_death' },
            { id = 'c_hanged_man' },
            { id = 'c_tower' },
            { id = 'c_sun' },
            { id = 'c_moon' },
            { id = 'c_star' },
            { id = 'c_world' },
            { id = 'c_justice' },
            { id = 'c_lovers' },
            { id = 'j_marble' },
            { id = 'j_dna' },
            { id = 'j_certificate' },
            { id = 'j_idol' },
            { id = 'j_trading' },
            { id = 'j_fibonacci' },
            { id = 'j_scholar' },
            { id = 'j_space' },
            { id = 'j_hiker' },
            { id = 'j_cavendish' },
            {
                id = 'p_standard_normal_1',
                ids = {
                    'p_standard_normal_1', 'p_standard_normal_2', 'p_standard_normal_3', 'p_standard_normal_4',
                    'p_standard_jumbo_1', 'p_standard_jumbo_2', 'p_standard_mega_1', 'p_standard_mega_2',
                }
            },
        },
        banned_tags = {
            { id = "tag_standard" },
        },
        banned_other = {
            { id = 'bl_psychic', type = 'blind' },
        },
    },
    deck = {
        type = 'Challenge Deck',
        yes_ranks = { ['A'] = true },
    },
    button_colour = LIGHT_BLUE,
    unlocked = function()
        return true
    end

})
