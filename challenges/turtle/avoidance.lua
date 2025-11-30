SMODS.Challenge({
    key = "avoidance",
    rules = {
        custom = {
            { id = "ante_base_per_round", value = 0.15 },
            { id = "blind_reward_mult",   value = 3 },
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
    button_colour = LIGHT_BLUE,
    unlocked = function()
        return true
    end

})




local Blind_set_blind_ref = Blind.set_blind
function Blind:set_blind(blind, reset, silent)
    if blind and G.GAME.modifiers.ante_base_per_round then
        -- print("up the base")
        -- print(G.GAME.starting_params.ante_scaling)
        G.GAME.starting_params.ante_scaling = G.GAME.starting_params.ante_scaling +
            G.GAME.modifiers.ante_base_per_round
        -- print(G.GAME.starting_params.ante_scaling)
    end
    if blind and G.GAME.modifiers.blind_reward_mult and blind.dollars <= 8 then
        print(blind.dollars)
        blind.dollars = blind.dollars * G.GAME.modifiers.blind_reward_mult
        print(blind.dollars)
    end
    Blind_set_blind_ref(self, blind, reset, silent)
end

local end_round_ref = end_round
function end_round()
    if G.GAME.round_resets.blind and G.GAME.modifiers.blind_reward_mult and G.GAME.round_resets.blind.dollars >= 8 then
        print(G.GAME.blind.dollars)
        G.GAME.round_resets.blind.dollars = G.GAME.round_resets.blind.dollars / G.GAME.modifiers.blind_reward_mult
        print(G.GAME.round_resets.blind.dollars)
    end
    end_round_ref()
end