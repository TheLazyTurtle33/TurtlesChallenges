SMODS.Challenge({
    key = "skipper",
    rules = {
        custom = {
            { id = "ante_base_per_round", value = 0.25 },
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
    button_colour = HEX("00FBFF"),
    unlocked = function()
        return true
    end

})


local Blind_set_blind_ref = Blind.set_blind
function Blind:set_blind(blind, reset, silent)
    if blind and G.GAME.modifiers.ante_base_per_round then
        G.GAME.starting_params.ante_scaling = G.GAME.starting_params.ante_scaling +
            G.GAME.modifiers.ante_base_per_round
    end
    return Blind_set_blind_ref(self, blind, reset, silent)
end
