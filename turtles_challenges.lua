--[[
SMODS.Challenge({
	key = "",
    rules = {
        custom = {
            
        },
        modifiers = {
            --{id = 'dollars', value = 4},
            --{id = 'discards', value = 3},
            --{id = 'hands', value = 4},
            --{id = 'hand_size', value = 8},
            --{id = 'joker_slots', value = 5},
            --{id = 'consumable_slots', value = 2},
        },
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
    },
	unlocked = function()
		return true
	end
    
})
]]

SMODS.Challenge({ -- AAAA
	key = "aaaa",
    rules = {
        custom = {
            {id="by_lazyturtle33"},
        },
        modifiers = {
            {id = 'discards', value = 3},
            {id = 'hands', value = 4},
        }
    },
    restrictions = {
        banned_cards = {
            {id = 'v_telescope', ids = {'v_observatory'}},
            {id = 'v_magic_trick', ids = {'v_illusion'}},
            {id = 'c_familiar'},
            {id = 'c_grim'},
            {id = 'c_incantation'},
            {id = 'c_sigil'},
            {id = 'c_ouija'},
            {id = 'c_immolate'},
            {id = 'c_cryptid'},
            {id = 'c_lovers'},
            {id = 'c_strength'},
            {id = 'c_death'},
            {id = 'c_hanged_man'},
            {id = 'c_tower'},
            {id = 'c_sun'},
            {id = 'c_moon'},
            {id = 'c_star'},
            {id = 'c_world'},
            {id = 'c_justice'},
            {id = 'j_marble'},
            {id = 'j_dna'},
            {id = 'j_certificate'},
            {id = 'j_idol'},
            { id = 'j_trading' },
            {id = 'p_standard_normal_1', ids = {
                'p_standard_normal_1','p_standard_normal_2','p_standard_normal_3','p_standard_normal_4','p_standard_jumbo_1','p_standard_jumbo_2','p_standard_mega_1','p_standard_mega_2',
                }
            },
        },
        banned_tags = {
            {id="tag_standard"},
        },
        banned_other = {
                { id = 'bl_psychic', type = 'blind' },
        },
    },
    deck = {
        type = 'Challenge Deck',
        yes_ranks = {['A'] = true},
    },
	unlocked = function()
		return true
	end
    
})
SMODS.Challenge({ -- AAAA but fuck you
	key = "aaaa_fu",
    rules = {
        custom = {
            {id="by_lazyturtle33"},
        },
        modifiers = {
        {id = 'dollars', value = 1},
        {id = 'discards', value = 1},
        {id = 'hands', value = 2},
        {id = 'hand_size', value = 4},
        {id = 'joker_slots', value = 4},
        {id = 'consumable_slots', value = 1},
        },
    },
    restrictions = {
        banned_cards = {
            {id = 'v_telescope', ids = {'v_observatory'}},
            {id = 'v_magic_trick', ids = {'v_illusion'}},
            {id = 'v_directors_cut', ids = {'v_Retcon'}},
            {id = 'c_familiar'},
            {id = 'c_grim'},
            {id = 'c_incantation'},
            {id = 'c_sigil'},
            {id = 'c_ouija'},
            {id = 'c_immolate'},
            {id = 'c_cryptid'},
            {id = 'c_mars'},
            {id = 'c_strength'},
            {id = 'c_death'},
            {id = 'c_hanged_man'},
            {id = 'c_tower'},
            {id = 'c_sun'},
            {id = 'c_moon'},
            {id = 'c_star'},
            {id = 'c_world'},
            {id = 'c_justice'},
            {id = 'c_lovers'},
            {id = 'j_marble'},
            {id = 'j_dna'},
            {id = 'j_certificate'},
            {id = 'j_idol'},
            {id = 'j_trading' },
            {id = 'j_fibonacci'},
            {id = 'j_scholar'},
            {id = 'j_space'},
            {id = 'j_hiker'},
            {id = 'j_cavendish'},
            {id = 'p_standard_normal_1', ids = {
                'p_standard_normal_1','p_standard_normal_2','p_standard_normal_3','p_standard_normal_4','p_standard_jumbo_1','p_standard_jumbo_2','p_standard_mega_1','p_standard_mega_2',
                }
            },
        },
        banned_tags = {
            {id="tag_standard"},
        },
        banned_other = {
            { id = 'bl_psychic', type = 'blind' },
        },
    },
    deck = {
        type = 'Challenge Deck',
        yes_ranks = {['A'] = true},
    },
	unlocked = function()
		return true
	end
    
})

SMODS.Challenge({
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
            {id='v_planet_merchant'},
            {id='j_space'},
            {id='j_burnt'},
            {id='c_high_priestess'},
            {id = 'p_celestial_normal_1', ids = {
                'p_celestial_normal_1','p_celestial_normal_2','p_celestial_normal_3','p_celestial_normal_4',
                'p_celestial_jumbo_1', 'p_celestial_jumbo_2', 'p_celestial_mega_1', 'p_celestial_mega_2',
            }},
        },
        banned_tags = {
            {id="tag_meteor"},
            {id="tag_orbital"},
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

--[[ 
SMODS.Challenge({
	key = "nope",
    rules = {
        custom = {
            {id="no_action",value = 1},
        },
        modifiers = {
        
        },
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
    },
	unlocked = function()
		return true
	end
    
})
]]

local game_start_run_ref = Game.start_run
function Game:start_run(args)
    game_start_run_ref(self, args)
    local saveTable = args.savetext or nil
    if not saveTable then
        if args.challenge then
            local _ch = args.challenge
            if _ch.rules then
                if _ch.rules.custom then
                    for k, v in ipairs(_ch.rules.custom) do
                        if v.id == 'blind_size_multi' then
                            G.GAME.starting_params.ante_scaling = v.value
                        elseif v.id == 'reach_x_ante' then
                            G.GAME.win_ante = v.value
                        elseif v.id == 'no_planets' then
                            G.GAME.planet_rate = 0
                        elseif v.id == 'ante_scaling_2x' then
                                G.GAME.modifiers.scaling = 2
                        -- elseif v.id == 'no_action' then
                        --     if G.GAME.modifiers.flipped_cards and to == G.hand then
                        --         if pseudorandom(pseudoseed('no_action')) < 1/v.value then
                        --             G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
                        --                 attention_text({
                        --                     text = localize('k_nope_ex'),
                        --                     scale = 1.3, 
                        --                     hold = 1.4,
                        --                     major = used_tarot,
                        --                     backdrop_colour = G.C.SECONDARY_SET.Tarot,
                        --                     align = (G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK) and 'tm' or 'cm',
                        --                     offset = {x = 0, y = (G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK) and -0.2 or 0},
                        --                     silent = true
                        --                     })
                        --                     G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.06*G.SETTINGS.GAMESPEED, blockable = false, blocking = false, func = function()
                        --                         play_sound('tarot2', 0.76, 0.4);return true end}))
                        --                     play_sound('tarot2', 1, 0.4)
                        --                     used_tarot:juice_up(0.3, 0.5)
                        --             return true end }))
                        --         end
                        --     end
                        end
                    end
                end
            end
        end
    end
end