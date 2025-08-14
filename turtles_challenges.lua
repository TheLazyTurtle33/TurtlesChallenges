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
    jokers = {},
    consumables = {},
    vouchers = {},
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
    button_colour = HEX("00FBFF"), -- turtle
	unlocked = function()
		return true
	end

})
]]


local function load_files(dir)
    local challenges = NFS.getDirectoryItems(SMODS.current_mod.path .. dir)
    for _, chal in pairs(challenges) do
        if string.sub(chal, string.len(chal) - 3) == '.lua' then
            assert(SMODS.load_file(dir .. "/" .. chal))()
        end
    end
end

load_files("challenges/turtle")
load_files("challenges/dessi")
load_files("challenges")


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
                        elseif v.id == 'tarot_rate' then
                            G.GAME.tarot_rate = v.value
                        elseif v.id == 'planet_rate' then
                            G.GAME.planet_rate = v.value
                        elseif v.id == 'joker_rate' then
                            G.GAME.joker_rate = v.value
                        elseif v.id == 'ante_scaling_speed' then
                            G.GAME.modifiers.scaling = v.value
                        elseif v.id == 'start_with_stander_tag' then
                            for i = 1, v.value, 1 do
                                add_tag(Tag('tag_standard'))
                            end
                        elseif v.id == 'money_per_discard' then
                            G.GAME.modifiers.money_per_discard = v.value
                        end
                    end
                end
            end
        end
    end
end

local loc_colour_ref = loc_colour
function loc_colour(_c, _default)
    if not G.ARGS.LOC_COLOURS then
        loc_colour_ref()
    end

    G.ARGS.LOC_COLOURS["pink"] = HEX("FF69B4")
    G.ARGS.LOC_COLOURS["light_blue"] = HEX("00FBFF")
    G.ARGS.LOC_COLOURS["gray"] = HEX("808080")

    return loc_colour_ref(_c, _default)
end
