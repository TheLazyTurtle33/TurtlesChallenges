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
            --{id = 'reroll_cost', value = 10},
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
