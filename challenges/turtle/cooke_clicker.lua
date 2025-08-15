SMODS.Challenge({
    key = "cooke_clicker",
    rules = {
        custom = {
            { id = "cooke_clicker1" },
            { id = "cooke_clicker",  value = 0.01 },
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
    button_colour = LIGHT_BLUE, -- turtle
    unlocked = function()
        return true
    end

})


local CardClickRef = Card.click;
function Card:click()
    if G.GAME.modifiers.cooke_clicker then
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            -- delay = 0.4,
            func = function()
                attention_text({
                    text = "+" .. G.GAME.modifiers.cooke_clicker,
                    scale = 0.9,
                    hold = 0.8,
                    major = self,
                    backdrop_colour = G.C.RED,
                    -- align = 'cm',
                    offset = { x = 0, y = 0 },
                    silent = true
                })
                return true
            end
        }))
        G.GAME.starting_params.ante_scaling = G.GAME.starting_params.ante_scaling +
            G.GAME.modifiers.cooke_clicker
    end
    return CardClickRef(self)
end
