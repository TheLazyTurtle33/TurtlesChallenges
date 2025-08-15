SMODS.Challenge({
    key = "thief",
    rules = {
        custom = {
            { id = "thief" },
            { id = "ante_base_per_purchase", value = 0.15 },
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
    button_colour = HEX("FF69B4"),
    unlocked = function()
        return true
    end

})

local buy_from_shop_ref = G.FUNCS.buy_from_shop;
G.FUNCS.buy_from_shop = function(e)
    local card = e.config.ref_table
    if G.GAME.modifiers.ante_base_per_purchase then
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                attention_text({
                    text = "+" .. G.GAME.modifiers.ante_base_per_purchase,
                    scale = 0.9,
                    hold = 0.8,
                    major = card,
                    backdrop_colour = G.C.RED,
                    -- align = 'cm',
                    offset = { x = 0, y = 0 },
                    silent = true
                })
                return true
            end
        }))
        G.GAME.starting_params.ante_scaling = G.GAME.starting_params.ante_scaling +
            G.GAME.modifiers.ante_base_per_purchase
    end
    if G.GAME.modifiers.thief then
        e.config.ref_table.cost = 0
    end
    buy_from_shop_ref(e)
end

local can_buy_ref = G.FUNCS.can_buy
G.FUNCS.can_buy = function(e)
    if G.GAME.modifiers.thief then
        e.config.colour = G.C.ORANGE
        e.config.button = 'buy_from_shop'
    else
        can_buy_ref(e)
    end
end

local use_card_ref = G.FUNCS.use_card;
G.FUNCS.use_card = function(e, mute, nosave)
    local card = e.config.ref_table
    if G.GAME.modifiers.cooke_clicker then
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            -- delay = 0.4,
            func = function()
                attention_text({
                    text = "+" .. G.GAME.modifiers.cooke_clicker,
                    scale = 0.9,
                    hold = 0.8,
                    major = card,
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
    use_card_ref(e, mute, nosave)
end
