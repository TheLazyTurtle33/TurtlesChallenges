SMODS.Challenge({
    key = "claustrophobia",
    rules = {
        custom = {
            { id = "claustrophobia" },
            { id = "claustrophobia1" },
            { id = "claustrophobia2" },
            { id = "start_shop_slots", value = 3 },
            { id = "by_dessi" },
        },
        modifiers = {
            -- {id = 'dollars', value = 4},
            { id = 'discards',         value = 7 },
            { id = 'hands',            value = 7 },
            { id = 'hand_size',        value = 8 },
            { id = 'joker_slots',      value = 7 },
            -- { id = 'reroll_cost',      value = 5 },
            { id = 'consumable_slots', value = 4 },
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
    button_colour = PINK,
    unlocked = function()
        return true
    end

})

local end_round_ref = end_round
function end_round()
    if G.GAME.modifiers.claustrophobia and G.GAME.blind:get_type() == 'Boss' then
        if G.GAME.shop.joker_max > 1 then
            change_shop_size(-1)
        end
        if G.GAME.round_resets.discards > 0 then
            G.GAME.round_resets.discards = G.GAME.round_resets.discards - 1
        end
        if G.consumeables.config.card_limit > 0 then
            G.consumeables.config.card_limit = G.consumeables.config.card_limit - 1
        end
        if G.GAME.round_resets.hands > 1 then
            G.GAME.round_resets.hands = G.GAME.round_resets.hands - 1
        end

        if G.jokers.config.card_limit > 0 then
            if G.jokers then
                G.jokers.config.card_limit = G.jokers.config.card_limit - 1
            end
        end
    end
    end_round_ref()
end
