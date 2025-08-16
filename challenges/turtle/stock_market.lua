SMODS.Challenge({
    key = "stock_market",
    rules = {
        custom = {
            { id = 'no_reward' },
            { id = 'no_extra_hand_money' },
            { id = 'no_interest' },
            { id = 'stock_market' },
            { id = "by_lazyturtle33" },
        },
        modifiers = {
            { id = 'dollars', value = 15 },
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
            { id = "j_diet_cola" },
        },
        banned_tags = {
            { id = "tag_double" },
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

local end_round_ref = end_round
function end_round()
    if G.GAME.modifiers.stock_market then
        add_tag(Tag('tag_tc_stock_market'))
    end
    end_round_ref()
end

-- local add_round_eval_row_ref = add_round_eval_row
-- function add_round_eval_row(config)
--     -- G.GAME.interest_amount = 10

--     print(config.name)
--     if config.name == 'bottom' then
--         config.name = 'Golden Joker'
--         add_round_eval_row_ref(config)
--     end
--     add_round_eval_row_ref(config)
-- end


SMODS.Tag {
    key = 'stock_market',
    -- atlas = 'tags_atlas',
    -- pos = { x = 3, y = 0 },
    discovered = true,
    config = {
        type = 'eval',
    },
    min_ante = 99,

    loc_vars = function(self, info_queue, tag)
        return {
            vars = {
                tag.config.money
            }
        }
    end,

    apply = function(self, tag, context)
        -- print(context.type)
        if context.type == 'eval' then
            local present = pseudorandom(pseudoseed('stock_market')) * 150 - 75
            local sine = '+'
            local colour = G.C.GOLD
            if present <= 0 then
                sine = '-'
                colour = G.GAME.RED
            end
            tag:yep(sine, colour, function()
                return true
            end)
            tag.triggered = true
            local money = G.GAME.dollars * present / 100

            local message = ''
            if math.abs(present) < 50 then
                if sine == '+' then
                    message = 'Appreciation of '
                else
                    message = 'Depreciation of '
                end
            elseif math.abs(present) > 100 then
                message = 'Surge of '
            else
                if sine == '+' then
                    message = 'Elevation of '
                else
                    message = 'Breakdown of '
                end
            end




            return {
                dollars = money,
                condition = message .. math.abs(math.floor(present)) .. '%',
                pos = self.pos,
                tag = self
            }
        end
    end
}
