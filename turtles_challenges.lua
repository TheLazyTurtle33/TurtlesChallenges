--[[
SMODS.Challenge({
	key = "",
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
	unlocked = function()
		return true
	end

})
]]


local challenges = NFS.getDirectoryItems(SMODS.current_mod.path .. "challenges")
for _, chal in pairs(challenges) do
    if string.sub(chal, string.len(chal) - 3) == '.lua' then
        assert(SMODS.load_file("challenges/" .. chal))()
    end
end

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
                        end
                    end
                end
            end
        end
    end
end
