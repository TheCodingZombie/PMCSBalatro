-- Other Jokers (not Mario enemies lol)
SMODS.Joker{
    key = 'starpoints',
    rarity = 3,
    atlas = 'PMConsumable',
    discovered = true,
    cost = 7,
    blueprint_compat = true,
    pos = { x = 2, y = 2 },
    config = { extra = {} },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.c_pm_hpbonus
        info_queue[#info_queue+1] = G.P_CENTERS.c_pm_fpbonus
        info_queue[#info_queue+1] = G.P_CENTERS.c_pm_bpbonus
        return { vars = {} }
    end,
    calculate = function(self, card, context)
        if context.end_of_round and G.GAME.blind:get_type() == 'Boss' and context.cardarea == G.jokers then
            local keys = {'c_pm_hpbonus', 'c_pm_fpbonus', 'c_pm_bpbonus'}
            for i=1, #keys do
                local t = {
                    key = keys[i],
                    area = G.consumeables
                }
                local _card = SMODS.add_card(t)
                if _card and _card.ability and _card.ability.extra then _card.ability.extra.nid = card.ID; _card.ability.extra.round = G.GAME.round_resets.ante end
                SMODS.Stickers.pm_monochrome:apply(_card, nil)
            end
            return {
                message = localize("pm_levelup"),
                card = card
            }
        end
    end
}

SMODS.Consumable{
    key = 'hpbonus',
    set = 'Tarot',
    atlas = 'PMConsumable',
    pos = { x = 3, y = 2 },
    config = {extra = {bonus = 1, nid = 0, round = 0}},
    cost = 5,
    discovered = false,
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.bonus} }
    end,
    can_use = function(self, card)
        return not G.GAME.blind.in_blind
    end,
    use = function(self, card, area, copier)        
        card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("pm_levelup_ex"),colour = G.C.DARK_EDITION, delay = 0.45})
        card:juice_up()
        play_sound('tarot1')
        G.GAME.round_resets.hands = G.GAME.round_resets.hands + card.ability.extra.bonus
        ease_hands_played(card.ability.extra.bonus)
        delay(0.6)

        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
            for i=1, #G.consumeables.cards do
                local c = G.consumeables.cards[i]
                if c.ability.extra.nid and c.ability.extra.nid == card.ability.extra.nid and c.ability.extra.round == card.ability.extra.round and c ~= card then
                    remove(card, c, nil)
                end 
            end
        return true end}))
    end,
    in_pool = function(self)
        return false
    end,
}

SMODS.Consumable{
    key = 'fpbonus',
    set = 'Tarot',
    atlas = 'PMConsumable',
    pos = { x = 4, y = 2 },
    config = {extra = {bonus = 1, nid = 0}},
    cost = 5,
    discovered = false,
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.bonus} }
    end,
    can_use = function(self, card)
        return not G.GAME.blind.in_blind
    end,
    use = function(self, card, area, copier)
        card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("pm_levelup_ex"),colour = G.C.DARK_EDITION, delay = 0.45})
        card:juice_up()
        play_sound('tarot1')
        G.GAME.round_resets.discards = G.GAME.round_resets.discards + card.ability.extra.bonus
        ease_discard(card.ability.extra.bonus)
        delay(0.6)

        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
            for i=1, #G.consumeables.cards do
                local c = G.consumeables.cards[i]
                if c.ability.extra.nid and c.ability.extra.nid == card.ability.extra.nid and c.ability.extra.round == card.ability.extra.round and c ~= card then
                    remove(card, c, nil)
                end 
            end
        return true end}))
        
    end,
    in_pool = function(self)
        return false
    end,
}

SMODS.Consumable{
    key = 'bpbonus',
    set = 'Tarot',
    atlas = 'PMConsumable',
    pos = { x = 5, y = 2 },
    config = {extra = {bonus = 1, nid = 0}},
    cost = 5,
    discovered = false,
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.bonus} }
    end,
    can_use = function(self, card)
        return not G.GAME.blind.in_blind
    end,
    use = function(self, card, area, copier)
        card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("pm_levelup_ex"),colour = G.C.DARK_EDITION, delay = 0.45})
        card:juice_up()
        play_sound('tarot1')
        G.jokers.config.card_limit = G.jokers.config.card_limit + card.ability.extra.bonus
        delay(0.6)

        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
            for i=1, #G.consumeables.cards do
                local c = G.consumeables.cards[i]
                if c.ability.extra.nid and c.ability.extra.nid == card.ability.extra.nid and c.ability.extra.round == card.ability.extra.round and c ~= card then
                    remove(card, c, nil)
                end 
            end
        return true end}))
        
    end,
    in_pool = function(self)
        return false
    end,
}

SMODS.Joker{
    key = 'battlejimbo',
    rarity = 2,
    atlas = 'PMConsumable',
    discovered = true,
    cost = 4,
    blueprint_compat = true,
    pos = { x = 0, y = 3 },
    config = { extra = {} },
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    calculate = function(self, card, context)
        if context.first_hand_drawn and context.cardarea == G.jokers then
            local t = {
                set = 'pm_BattleCard',
                area = G.consumeables
            }
            local _card = SMODS.add_card(t)
            SMODS.Stickers.pm_monochrome:apply(_card, nil)
            return {
                message = localize("pm_battle_plus"),
                colour = G.C.RED,
                card = card
            }
        end
    end
}