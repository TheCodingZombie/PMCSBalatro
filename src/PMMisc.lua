----TABLE OF CONTENTS-------------------------
------------MOD CODE -------------------------


----------------------------------------------
--  BOOSTER PACKS ----------------------------
----------------------------------------------

-- Basics
SMODS.Booster {
    key = 'bc_basic_1',
    atlas = 'pm_PMBooster',
    pos = {x = 0, y = 0},
    config = { extra = 3, choose = 1 }, -- have 3 cards, choose 1
    group_key = 'pm_battle_card_booster',
    cost = 3,
    weight = 1.25,
    draw_hand = false,
    kind = 'pm_BattleCard',
    select_card = 'consumeables', -- save the cards instead of using them
    loc_vars = function(self, info_queue, card)
        return { vars = { card and card.ability.choose or self.config.choose, card and card.ability.extra or self.config.extra } }
    end,
    create_card = function(self, card)
        if G.GAME.used_vouchers.v_pm_ghostblessing and pseudorandom('ghostblessing') > 0.75 then
            return create_card("Spectral", G.pack_cards, nil, nil, true, true, nil)
        else
            local t = {
                set = 'pm_BattleCard',
                area = G.pack_cards,
                skip_materialize = true,
                soulable = true,
            }
            return SMODS.create_card(t)
        end
    end,
    ease_background_colour = function(self)
		ease_colour(G.C.DYN_UI.MAIN, G.C.RED)
		ease_background_colour({ new_colour = G.C.RED, special_colour = G.C.BLACK, contrast = 2 })
	end,
    in_pool = function(self)
        return pm_config.bc_rarity > 1
    end,
}

SMODS.Booster {
    key = 'bc_basic_2',
    atlas = 'pm_PMBooster',
    pos = {x = 1, y = 0},
    config = { extra = 3, choose = 1 }, -- have 3 cards, choose 1
    group_key = 'pm_battle_card_booster',
    cost = 3,
    weight = 1.25,
    draw_hand = false,
    kind = 'pm_BattleCard',
    select_card = 'consumeables', -- save the cards instead of using them
    loc_vars = function(self, info_queue, card)
        return { vars = { card and card.ability.choose or self.config.choose, card and card.ability.extra or self.config.extra } }
    end,
    create_card = function(self, card)
        if G.GAME.used_vouchers.v_pm_ghostblessing and pseudorandom('ghostblessing') > 0.75 then
            return create_card("Spectral", G.pack_cards, nil, nil, true, true, nil)
        else
            local t = {
                set = 'pm_BattleCard',
                area = G.pack_cards,
                skip_materialize = true,
                soulable = true,
            }
            return SMODS.create_card(t)
        end
    end,
    ease_background_colour = function(self)
		ease_colour(G.C.DYN_UI.MAIN, G.C.RED)
		ease_background_colour({ new_colour = G.C.RED, special_colour = G.C.BLACK, contrast = 2 })
	end,
    in_pool = function(self)
        return pm_config.bc_rarity > 1
    end,
}

-- Big
SMODS.Booster {
    key = 'bc_big_1',
    atlas = 'pm_PMBooster',
    pos = {x = 2, y = 0},
    config = { extra = 5, choose = 1 }, -- have 3 cards, choose 1
    group_key = 'pm_battle_card_booster',
    cost = 4,
    weight = 0.65,
    draw_hand = false,
    kind = 'pm_BattleCard',
    select_card = 'consumeables', -- save the cards instead of using them
    loc_vars = function(self, info_queue, card)
        return { vars = { card and card.ability.choose or self.config.choose, card and card.ability.extra or self.config.extra } }
    end,
    create_card = function(self, card)
        if G.GAME.used_vouchers.v_pm_ghostblessing and pseudorandom('ghostblessing') > 0.75 then
            return create_card("Spectral", G.pack_cards, nil, nil, true, true, nil)
        else
            local t = {
                set = 'pm_BattleCard',
                area = G.pack_cards,
                skip_materialize = true,
                soulable = true,
            }
            return SMODS.create_card(t)
        end
    end,
    ease_background_colour = function(self)
		ease_colour(G.C.DYN_UI.MAIN, G.C.RED)
		ease_background_colour({ new_colour = G.C.RED, special_colour = G.C.BLACK, contrast = 2 })
	end,
    in_pool = function(self)
        return pm_config.bc_rarity > 1
    end,
}

-- Big 2
SMODS.Booster {
    key = 'bc_big_2',
    atlas = 'pm_PMBooster',
    pos = {x = 3, y = 0},
    config = { extra = 5, choose = 1 }, -- have 3 cards, choose 1
    group_key = 'pm_battle_card_booster',
    cost = 4,
    weight = 0.65,
    draw_hand = false,
    kind = 'pm_BattleCard',
    select_card = 'consumeables', -- save the cards instead of using them
    loc_vars = function(self, info_queue, card)
        return { vars = { card and card.ability.choose or self.config.choose, card and card.ability.extra or self.config.extra } }
    end,
    create_card = function(self, card)
        if G.GAME.used_vouchers.v_pm_ghostblessing and pseudorandom('ghostblessing') > 0.75 then
            return create_card("Spectral", G.pack_cards, nil, nil, true, true, nil)
        else
            local t = {
                set = 'pm_BattleCard',
                area = G.pack_cards,
                skip_materialize = true,
                soulable = true,
            }
            return SMODS.create_card(t)
        end
    end,
    ease_background_colour = function(self)
		ease_colour(G.C.DYN_UI.MAIN, G.C.RED)
		ease_background_colour({ new_colour = G.C.RED, special_colour = G.C.BLACK, contrast = 2 })
	end,
    in_pool = function(self)
        return pm_config.bc_rarity > 1
    end,
}

-- Huge
SMODS.Booster {
    key = 'bc_huge_1',
    atlas = 'pm_PMBooster',
    pos = {x = 4, y = 0},
    config = { extra = 5, choose = 2 }, -- have 3 cards, choose 1
    group_key = 'pm_battle_card_booster',
    cost = 6,
    weight = 0.25,
    draw_hand = false,
    kind = 'pm_BattleCard',
    select_card = 'consumeables', -- save the cards instead of using them
    loc_vars = function(self, info_queue, card)
        return { vars = { card and card.ability.choose or self.config.choose, card and card.ability.extra or self.config.extra } }
    end,
    create_card = function(self, card)
        if G.GAME.used_vouchers.v_pm_ghostblessing and pseudorandom('ghostblessing') > 0.75 then
            return create_card("Spectral", G.pack_cards, nil, nil, true, true, nil)
        else
            local t = {
                set = 'pm_BattleCard',
                area = G.pack_cards,
                skip_materialize = true,
                soulable = true,
            }
            return SMODS.create_card(t)
        end
    end,
    ease_background_colour = function(self)
		ease_colour(G.C.DYN_UI.MAIN, G.C.RED)
		ease_background_colour({ new_colour = G.C.RED, special_colour = G.C.BLACK, contrast = 2 })
	end,
    in_pool = function(self)
        return pm_config.bc_rarity > 1
    end,
}

-- Huge 2
SMODS.Booster {
    key = 'bc_huge_2',
    atlas = 'pm_PMBooster',
    pos = {x = 5, y = 0},
    config = { extra = 5, choose = 2 }, -- have 3 cards, choose 1
    group_key = 'pm_battle_card_booster',
    cost = 6,
    weight = 0.25,
    draw_hand = false,
    kind = 'pm_BattleCard',
    select_card = 'consumeables', -- save the cards instead of using them
    loc_vars = function(self, info_queue, card)
        return { vars = { card and card.ability.choose or self.config.choose, card and card.ability.extra or self.config.extra } }
    end,
    create_card = function(self, card)
        if G.GAME.used_vouchers.v_pm_ghostblessing and pseudorandom('ghostblessing') > 0.75 then
            return create_card("Spectral", G.pack_cards, nil, nil, true, true, nil)
        else
            local t = {
                set = 'pm_BattleCard',
                area = G.pack_cards,
                skip_materialize = true,
                soulable = true,
            }
            return SMODS.create_card(t)
        end
    end,
    ease_background_colour = function(self)
		ease_colour(G.C.DYN_UI.MAIN, G.C.RED)
		ease_background_colour({ new_colour = G.C.RED, special_colour = G.C.BLACK, contrast = 2 })
	end,
    in_pool = function(self)
        return pm_config.bc_rarity > 1
    end,
}

----------------------------------------------
--  CONSUMABLES  -----------------------------
----------------------------------------------

-- One-Up Mushroom
SMODS.Consumable{
    key = 'one_up',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    rarity = 'pm_rare',
    pos = { x = 8, y = 0 },
    config = {extra = {hands = 5}},
    cost = 5,
    discovered = false,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.hands } }
    end,
    can_use = function(self, card)
        return false
    end,
    remove_from_deck = function(self, card, from_debuff)
        if not from_debuff then
            G.E_MANAGER:add_event(Event(
            {
                trigger = 'after',
                delay = 0.1,
                func = function()
                    card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("k_saved_ex")})
                    ease_hands_played(card.ability.extra.hands)
                    return true
                end
            }
            ))
        end
    end,
}

-- Mushroom
SMODS.Consumable{
    key = 'mushroom',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    rarity = 'pm_common',
    pos = { x = 5, y = 0 },
    config = {extra = {hands = 1}},
    cost = 2,
    discovered = false,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.hands } }
    end,
    can_use = function(self, card)
        return G.GAME.blind.in_blind and not (card.debuff or (card.ability and card.ability['pm_monochrome'] and card.ability['pm_monochrome'].extra.drained_turns))
    end,
    use = function(self, card, area, copier)
        G.E_MANAGER:add_event(Event(
            {
                trigger = 'after',
                delay = 0.1,
                func = function() 
                    ease_hands_played(card.ability.extra.hands)
                    return true
                end
            }
        ))
    end
}

-- Big Mushroom
SMODS.Consumable{
    key = 'bigmushroom',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    rarity = 'pm_uncommon',
    pos = { x = 6, y = 0 },
    config = {extra = {hands = 2}},
    cost = 4,
    discovered = false,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.hands } }
    end,
    can_use = function(self, card)
        return G.GAME.blind.in_blind and not (card.debuff or (card.ability and card.ability['pm_monochrome'] and card.ability['pm_monochrome'].extra.drained_turns))
    end,
    use = function(self, card, area, copier)
        G.E_MANAGER:add_event(Event(
            {
                trigger = 'after',
                delay = 0.1,
                func = function() 
                    ease_hands_played(card.ability.extra.hands)
                    return true
                end
            }
        ))
    end
}

-- Mega Mushroom
SMODS.Consumable{
    key = 'megamushroom',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    rarity = 'pm_rare',
    pos = { x = 7, y = 0 },
    config = {extra = {hands = 3}},
    cost = 6,
    discovered = false,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.hands } }
    end,
    can_use = function(self, card)
        return G.GAME.blind.in_blind and not (card.debuff or (card.ability and card.ability['pm_monochrome'] and card.ability['pm_monochrome'].extra.drained_turns))
    end,
    use = function(self, card, area, copier)
        G.E_MANAGER:add_event(Event(
            {
                trigger = 'after',
                delay = 0.1,
                func = function() 
                    ease_hands_played(card.ability.extra.hands)
                    return true
                end
            }
        ))
    end
}

-- Fire Flower
SMODS.Consumable{
    key = 'fireflower',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    rarity = 'pm_uncommon',
    pos = { x = 0, y = 0 },
    config = {extra = {discards = 1}},
    cost = 3,
    discovered = false,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.discards } }
    end,
    can_use = function(self, card)
        return G.GAME.blind.in_blind and not (card.debuff or (card.ability and card.ability['pm_monochrome'] and card.ability['pm_monochrome'].extra.drained_turns)) 
    end,
    use = function(self, card, area, copier)
        G.E_MANAGER:add_event(Event(
            {
                trigger = 'after',
                delay = 0.1,
                func = function() 
                    ease_discard(card.ability.extra.discards)
                    return true 
                end
            }))
    end
}

-- Big Fire Flower
SMODS.Consumable{
    key = 'bigfireflower',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    rarity = 'pm_rare',
    pos = { x = 1, y = 0 },
    config = {extra = {discards = 2}},
    cost = 5,
    discovered = false,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.discards } }
    end,
    can_use = function(self, card)
        return G.GAME.blind.in_blind and not (card.debuff or (card.ability and card.ability['pm_monochrome'] and card.ability['pm_monochrome'].extra.drained_turns))
    end,
    use = function(self, card, area, copier)
        G.E_MANAGER:add_event(Event(
            {
                trigger = 'after',
                delay = 0.1,
                func = function() 
                    ease_discard(card.ability.extra.discards)
                    return true 
                end
            }))
    end
}

-- Ice Flower
SMODS.Consumable{
    key = 'iceflower',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    rarity = 'pm_uncommon',
    pos = { x = 2, y = 0 },
    config = {extra = {selection_limit = 2}},
    cost = 3,
    discovered = false,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = G.P_CENTERS.m_pm_frozen
		return { vars = { card and card.ability.extra.selection_limit or self.ability.extra.selection_limit } }
    end,
    can_use = function(self, card)
        if (card.debuff or (card.ability and card.ability['pm_monochrome'] and card.ability['pm_monochrome'].extra.drained_turns)) then return false end
        if G.hand.highlighted and #G.hand.highlighted >= 1 and #G.hand.highlighted <= card.ability.extra.selection_limit then
            return true
        end
        return false
    end,
    use = function(self, card, area, copier)
        if G.hand.highlighted and #G.hand.highlighted >= 1 and #G.hand.highlighted <= card.ability.extra.selection_limit then
            for i=1, #G.hand.highlighted do
                local _card = G.hand.highlighted[i]

                _card:set_ability(G.P_CENTERS.m_pm_frozen, nil, true)
                G.E_MANAGER:add_event(Event({
                    trigger = 'after',
                    delay = 0.5,
                    func = function()
                        _card:juice_up()
                        return true
                    end
                }))
            end
        end
    end,
}

-- Big Ice Flower
SMODS.Consumable{
    key = 'bigiceflower',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    rarity = 'pm_rare',
    pos = { x = 3, y = 0 },
    config = {extra = {selection_limit = 4}},
    cost = 5,
    discovered = false,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = G.P_CENTERS.m_pm_frozen
		return { vars = { card and card.ability.extra.selection_limit or self.ability.extra.selection_limit } }
    end,
    can_use = function(self, card)
        if (card.debuff or (card.ability and card.ability['pm_monochrome'] and card.ability['pm_monochrome'].extra.drained_turns)) then return false end
        if G.hand.highlighted and #G.hand.highlighted >= 1 and #G.hand.highlighted <= card.ability.extra.selection_limit then
            return true
        end
        return false
    end,
    use = function(self, card, area, copier)
        if G.hand.highlighted and #G.hand.highlighted >= 1 and #G.hand.highlighted <= card.ability.extra.selection_limit then
            for i=1, #G.hand.highlighted do
                local _card = G.hand.highlighted[i]
                _card:set_ability(G.P_CENTERS.m_pm_frozen, nil, true)
                G.E_MANAGER:add_event(Event({
                    trigger = 'after',
                    delay = 0.5,
                    func = function()
                        _card:juice_up()
                        return true
                    end
                }))
            end
        end
    end,
}

-- POW Block
SMODS.Consumable{
    key = 'powblock',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    rarity = 'pm_rare',
    pos = { x = 4, y = 0 },
    config = {extra = {selection_limit = 5, money = 2}},
    cost = 5,
    discovered = false,
    loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.selection_limit, card.ability.extra.money } }
    end,
    can_use = function(self, card)
        if (card.debuff or (card.ability and card.ability['pm_monochrome'] and card.ability['pm_monochrome'].extra.drained_turns)) then return false end
        if G.hand.highlighted and #G.hand.highlighted >= 1 and #G.hand.highlighted <= card.ability.extra.selection_limit then
            return true
        end
        return false
    end,
    use = function(self, card, area, copier)
        if G.hand.highlighted and #G.hand.highlighted >= 1 and #G.hand.highlighted <= card.ability.extra.selection_limit then
            for i=1, #G.hand.highlighted do
                local _card = G.hand.highlighted[i]
                if _card.config.center == G.P_CENTERS.c_base then
                    G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
                        play_sound('tarot1')
                        card:juice_up(0.3, 0.5)
                        return true end }))
                    G.E_MANAGER:add_event(Event({
                        trigger = 'after',
                        delay = 0.2,
                        func = function() 
                            if _card.ability.name == 'Glass Card' then 
                                _card:shatter()
                            else
                                _card:start_dissolve(nil, i == #G.hand.highlighted)
                            end
                        return true end }))
                end
                _card:set_ability(G.P_CENTERS.c_base, nil, true)
                G.E_MANAGER:add_event(Event({
                    trigger = 'after',
                    delay = 0.5,
                    func = function()
                        _card:juice_up()
                        return true
                    end
                }))
            end
        end
    end,
}

-- Tail
SMODS.Consumable{
    key = 'tail',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    rarity = 'pm_uncommon',
    pos = { x = 9, y = 0 },
    config = {extra = {selection_limit = 2}},
    cost = 3,
    discovered = false,
    loc_vars = function(self, info_queue, card)
		return { vars = {card.ability.extra.selection_limit } }
    end,
    can_use = function(self, card)
        if (card.debuff or (card.ability and card.ability['pm_monochrome'] and card.ability['pm_monochrome'].extra.drained_turns)) then return false end
        if G.hand.highlighted and #G.hand.highlighted == card.ability.extra.selection_limit then
            return true
        end
        return false
    end,
    use = function(self, card, area, copier)
        if G.hand.highlighted and #G.hand.highlighted == card.ability.extra.selection_limit then
            local left = G.hand.highlighted[1]:get_id()
            if left < 11 then left = tostring(left)
            elseif left == 11 then left = 'Jack'
            elseif left == 12 then left = 'Queen'
            elseif left == 13 then left = 'King'
            elseif left == 14 then left = 'Ace'
            end
            local right = G.hand.highlighted[2]:get_id()
            if right < 11 then right = tostring(right)
            elseif right == 11 then right = 'Jack'
            elseif right == 12 then right = 'Queen'
            elseif right == 13 then right = 'King'
            elseif right == 14 then right = 'Ace'
            end
            
            G.E_MANAGER:add_event(Event({
                func = function()
                    G.hand.highlighted[1]:flip()
                    G.hand.highlighted[2]:flip()
                    return true
                end
            }))
            assert(SMODS.change_base(G.hand.highlighted[2], nil, left))
            assert(SMODS.change_base(G.hand.highlighted[1], nil, right))
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.hand.highlighted[1]:flip()
                    G.hand.highlighted[2]:flip()
                    return true
                end
            }))
        end
    end,
}

-- Spike Hat
SMODS.Consumable{
    key = 'spikehat',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    rarity = 'pm_rare',
    pos = { x = 0, y = 1 },
    config = {extra = {}},
    cost = 7,
    discovered = false,
    loc_vars = function(self, info_queue, card)
		return { vars = { } }
    end,
    can_use = function(self, card)
        if (card.debuff or (card.ability and card.ability['pm_monochrome'] and card.ability['pm_monochrome'].extra.drained_turns)) then return false end
        if G.GAME.blind and G.GAME.blind.boss and not G.GAME.blind.disabled then
            return true
        end
        return false
    end,
    use = function(self, card, area, copier)
        if G.GAME.blind and G.GAME.blind.boss and not G.GAME.blind.disabled then
            G.GAME.blind:disable()
            play_sound('timpani')
            card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('ph_boss_disabled')})
        end
    end,
}

-- Frog Suit
SMODS.Consumable{
    key = 'frogsuit',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    rarity = 'pm_uncommon',
    pos = { x = 1, y = 1 },
    config = {extra = {selection_limit = 2}},
    cost = 3,
    discovered = false,
    loc_vars = function(self, info_queue, card)
		return { vars = {card.ability.extra.selection_limit } }
    end,
    can_use = function(self, card)
        if (card.debuff or (card.ability and card.ability['pm_monochrome'] and card.ability['pm_monochrome'].extra.drained_turns)) then return false end
        if G.hand.highlighted and #G.hand.highlighted == card.ability.extra.selection_limit then
            return true
        end
        return false
    end,
    use = function(self, card, area, copier)
        if G.hand.highlighted and #G.hand.highlighted == card.ability.extra.selection_limit then
            local left = G.hand.highlighted[1].base.suit
            local right = G.hand.highlighted[2].base.suit        
            G.E_MANAGER:add_event(Event({
                func = function()
                    G.hand.highlighted[1]:flip()
                    G.hand.highlighted[2]:flip()
                    return true
                end
            }))
            assert(SMODS.change_base(G.hand.highlighted[2], left, nil))
            assert(SMODS.change_base(G.hand.highlighted[1], right, nil))
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.hand.highlighted[1]:flip()
                    G.hand.highlighted[2]:flip()
                    return true
                end
            }))
        end
    end,
}

-- Worn-Out Jump
SMODS.Consumable{
    key = 'wojump',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    rarity = 'pm_common',
    pos = { x = 2, y = 1 },
    config = {extra = {odds = 3, selection_limit = 1, increase = 1, jump = true}},
    cost = 1,
    discovered = false,
    loc_vars = function(self, info_queue, card)
		return { vars = {card.ability.extra.selection_limit, (G.GAME.probabilities.normal or 1), card.ability.extra.odds, card.ability.extra.increase} }
    end,
    can_use = function(self, card)
        if (card.debuff or (card.ability and card.ability['pm_monochrome'] and card.ability['pm_monochrome'].extra.drained_turns)) then return false end
        if G.hand.highlighted and #G.hand.highlighted == card.ability.extra.selection_limit then
            return true
        end
        return false
    end,
    use = function(self, card, area, copier)
        if G.hand.highlighted and #G.hand.highlighted == card.ability.extra.selection_limit then
            if pseudorandom('wornout') < (G.GAME.probabilities.normal / card.ability.extra.odds) then
                G.hand.highlighted[1]:flip()
                play_sound('tarot1', 1, 0.4)
                card:juice_up(0.3, 0.5)
                -- yes this is just Strength code
                local rank_suffix = G.hand.highlighted[1].base.id == 14 and 2 or math.min(G.hand.highlighted[1].base.id+card.ability.extra.increase, 14)
                if rank_suffix < 11 then rank_suffix = tostring(rank_suffix)
                elseif rank_suffix == 11 then rank_suffix = 'Jack'
                elseif rank_suffix == 12 then rank_suffix = 'Queen'
                elseif rank_suffix == 13 then rank_suffix = 'King'
                elseif rank_suffix == 14 then rank_suffix = 'Ace'
                end
                assert(SMODS.change_base(G.hand.highlighted[1], nil, rank_suffix))
                delay(0.6)
                G.hand.highlighted[1]:flip()
            else
                -- yes this is just WOF code lmao
                G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
                    attention_text({
                        text = localize('k_nope_ex'),
                        scale = 1.3, 
                        hold = 1.4,
                        major = card,
                        backdrop_colour = G.C.SECONDARY_SET.Tarot,
                        align = (G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK) and 'tm' or 'cm',
                        offset = {x = 0, y = (G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK) and -0.2 or 0},
                        silent = true
                        })
                        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.06*G.SETTINGS.GAMESPEED, blockable = false, blocking = false, func = function()
                            play_sound('tarot2', 0.76, 0.4);return true end}))
                        play_sound('tarot2', 1, 0.4)
                        card:juice_up(0.3, 0.5)
                return true end }))
                delay(0.6)
            end
        end
    end
}

-- Worn-Out Jump x3
SMODS.Consumable{
    key = 'wojump3',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    rarity = 'pm_common',
    pos = { x = 3, y = 1 },
    config = {extra = {count = 3, copy = 'c_pm_wojump', jump = true}},
    cost = 3,
    discovered = false,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.c_pm_wojump
		return { vars = {card.ability.extra.count, localize{type = 'name_text', set = 'pm_BattleCard', key = card.ability.extra.copy} } }
    end,
    can_use = function(self, card)
        return not (card.debuff or (card.ability and card.ability['pm_monochrome'] and card.ability['pm_monochrome'].extra.drained_turns))
    end,
    use = function(self, card, area, copier)
        local t = {
            key = card.ability.extra.copy,
            edition = G.P_CENTERS.e_negative_consumable
        }
        for i=1,card.ability.extra.count,1 do
            local _card = SMODS.add_card(t)
            _card:set_edition('e_negative')
            SMODS.Stickers.pm_monochrome:apply(_card, nil)
        end
    end
}

-- Worn-Out Jump x5
SMODS.Consumable{
    key = 'wojump5',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    rarity = 'pm_uncommon',
    pos = { x = 4, y = 1 },
    config = {extra = {count = 5, copy = 'c_pm_wojump', jump = true}},
    cost = 5,
    discovered = false,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.c_pm_wojump
		return { vars = {card.ability.extra.count, localize{type = 'name_text', set = 'pm_BattleCard', key = card.ability.extra.copy}} }
    end,
    can_use = function(self, card)
        return not (card.debuff or (card.ability and card.ability['pm_monochrome'] and card.ability['pm_monochrome'].extra.drained_turns))
    end,
    use = function(self, card, area, copier)
        local t = {
            key = card.ability.extra.copy,
            edition = G.P_CENTERS.e_negative_consumable
        }
        for i=1,card.ability.extra.count,1 do
            local _card = SMODS.add_card(t)
            _card:set_edition('e_negative')
            SMODS.Stickers.pm_monochrome:apply(_card, nil)
        end
    end
}

-- Jump
SMODS.Consumable{
    key = 'jump',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    rarity = 'pm_common',
    pos = { x = 5, y = 1 },
    config = {extra = {odds = 3, selection_limit = 1, increase = 1, extra_use = false, uses = 0, jump = true}},
    cost = 3,
    discovered = false,
    loc_vars = function(self, info_queue, card)
		return { vars = {card.ability.extra.selection_limit, (G.GAME.probabilities.normal or 1), card.ability.extra.odds, card.ability.extra.increase} }
    end,
    set_ability = function(self, card, initial, delay_sprites)
        if initial then card.ability.extra.extra_use = pseudorandom('jump') < (G.GAME.probabilities.normal / card.ability.extra.odds) end
    end,
    can_use = function(self, card)
        if (card.debuff or (card.ability and card.ability['pm_monochrome'] and card.ability['pm_monochrome'].extra.drained_turns)) then return false end
        if G.hand.highlighted and #G.hand.highlighted == card.ability.extra.selection_limit then
            return true
        end
        return false
    end,
    keep_on_use = function(self, card)
        return card.ability.extra.extra_use
    end,
    use = function(self, card, area, copier)
        if G.hand.highlighted and #G.hand.highlighted == card.ability.extra.selection_limit then
            G.hand.highlighted[1]:flip()
            
            -- yes this is just Strength code
            local rank_suffix = G.hand.highlighted[1].base.id == 14 and 2 or math.min(G.hand.highlighted[1].base.id+card.ability.extra.increase, 14)
            if rank_suffix < 11 then rank_suffix = tostring(rank_suffix)
            elseif rank_suffix == 11 then rank_suffix = 'Jack'
            elseif rank_suffix == 12 then rank_suffix = 'Queen'
            elseif rank_suffix == 13 then rank_suffix = 'King'
            elseif rank_suffix == 14 then rank_suffix = 'Ace'
            end
            assert(SMODS.change_base(G.hand.highlighted[1], nil, rank_suffix))
            play_sound('tarot1', 1, 0.4)
            card:juice_up(0.3, 0.5)
            
            if not card.ability.extra.extra_use and not card.ability.extra.uses then
            -- yes this is just WOF code lmao
                G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
                attention_text({
                    text = localize('k_nope_ex'),
                    scale = 1.3, 
                    hold = 1.4,
                    major = card,
                    backdrop_colour = G.C.SECONDARY_SET.Tarot,
                    align = (G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK) and 'tm' or 'cm',
                    offset = {x = 0, y = (G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK) and -0.2 or 0},
                    silent = true
                    })
                    G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.06*G.SETTINGS.GAMESPEED, blockable = false, blocking = false, func = function()
                        play_sound('tarot2', 0.76, 0.4);return true end}))
                    play_sound('tarot2', 1, 0.4)
                    card:juice_up(0.3, 0.5)
                return true end }))
            end

            delay(0.6)
            G.hand.highlighted[1]:flip()
            card.ability.extra.extra_use = false
            card.ability.extra.uses = card.ability.extra.uses + 1
        end
    end
}

-- Jump x2
SMODS.Consumable{
    key = 'jump2',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    rarity = 'pm_uncommon',
    pos = { x = 6, y = 1 },
    config = {extra = {count = 2, copy = 'c_pm_jump', jump = true}},
    cost = 5,
    discovered = false,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.c_pm_jump
		return { vars = {card.ability.extra.count, localize{type = 'name_text', set = 'pm_BattleCard', key = card.ability.extra.copy} } }
    end,
    can_use = function(self, card)
        return not (card.debuff or (card.ability and card.ability['pm_monochrome'] and card.ability['pm_monochrome'].extra.drained_turns))
    end,
    use = function(self, card, area, copier)
        local t = {
            key = card.ability.extra.copy,
            edition = G.P_CENTERS.e_negative_consumable
        }
        for i=1,card.ability.extra.count,1 do
            local _card = SMODS.add_card(t)
            _card:set_edition('e_negative')
            SMODS.Stickers.pm_monochrome:apply(_card, nil)
            
        end
    end
}

-- Jump x3
SMODS.Consumable{
    key = 'jump3',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    rarity = 'pm_uncommon',
    pos = { x = 7, y = 1 },
    config = {extra = {count = 3, copy = 'c_pm_jump', jump = true}},
    cost = 7,
    discovered = false,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.c_pm_jump
		return { vars = {card.ability.extra.count, localize{type = 'name_text', set = 'pm_BattleCard', key = card.ability.extra.copy} } }
    end,
    can_use = function(self, card)
        return not (card.debuff or (card.ability and card.ability['pm_monochrome'] and card.ability['pm_monochrome'].extra.drained_turns))
    end,
    use = function(self, card, area, copier)
        local t = {
            key = card.ability.extra.copy,
            edition = G.P_CENTERS.e_negative_consumable
        }
        for i=1,card.ability.extra.count,1 do
            local _card = SMODS.add_card(t)
            _card:set_edition('e_negative')
            SMODS.Stickers.pm_monochrome:apply(_card, nil)
        end
    end
}

-- Big Jump
SMODS.Consumable{
    key = 'bigjump',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    rarity = 'pm_uncommon',
    pos = { x = 8, y = 1 },
    config = {extra = {odds = 2, selection_limit = 1, increase = 2, extra_use = false, uses = 0, jump = true}},
    cost = 5,
    discovered = false,
    loc_vars = function(self, info_queue, card)
		return { vars = {card.ability.extra.selection_limit, (G.GAME.probabilities.normal or 1), card.ability.extra.odds, card.ability.extra.increase} }
    end,
    set_ability = function(self, card, initial, delay_sprites)
        if initial then card.ability.extra.extra_use = pseudorandom('jump') < (G.GAME.probabilities.normal / card.ability.extra.odds) end
    end,
    can_use = function(self, card)
        if (card.debuff or (card.ability and card.ability['pm_monochrome'] and card.ability['pm_monochrome'].extra.drained_turns)) then return false end
        if G.hand.highlighted and #G.hand.highlighted == card.ability.extra.selection_limit then
            return true
        end
        return false
    end,
    keep_on_use = function(self, card)
        return card.ability.extra.extra_use
    end,
    use = function(self, card, area, copier)
        if G.hand.highlighted and #G.hand.highlighted == card.ability.extra.selection_limit then
            -- yes this is just Strength code
            G.hand.highlighted[1]:flip()
            local rank_suffix = G.hand.highlighted[1].base.id >= 13 and 2 or math.min(G.hand.highlighted[1].base.id+card.ability.extra.increase, 14)
            if rank_suffix < 11 then rank_suffix = tostring(rank_suffix)
            elseif rank_suffix == 11 then rank_suffix = 'Jack'
            elseif rank_suffix == 12 then rank_suffix = 'Queen'
            elseif rank_suffix == 13 then rank_suffix = 'King'
            elseif rank_suffix == 14 then rank_suffix = 'Ace'
            end
            assert(SMODS.change_base(G.hand.highlighted[1], nil, rank_suffix))
            play_sound('tarot1', 1, 0.4)
            card:juice_up(0.3, 0.5)
            
            if not card.ability.extra.extra_use and not card.ability.extra.uses then
            -- yes this is just WOF code lmao
                G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
                attention_text({
                    text = localize('k_nope_ex'),
                    scale = 1.3, 
                    hold = 1.4,
                    major = card,
                    backdrop_colour = G.C.SECONDARY_SET.Tarot,
                    align = (G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK) and 'tm' or 'cm',
                    offset = {x = 0, y = (G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK) and -0.2 or 0},
                    silent = true
                    })
                    G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.06*G.SETTINGS.GAMESPEED, blockable = false, blocking = false, func = function()
                        play_sound('tarot2', 0.76, 0.4);return true end}))
                    play_sound('tarot2', 1, 0.4)
                    card:juice_up(0.3, 0.5)
                return true end }))
            end
            
            delay(0.6)
            G.hand.highlighted[1]:flip()
            card.ability.extra.extra_use = false
            card.ability.extra.uses = card.ability.extra.uses + 1
        end
    end
}

-- Big Jump x2
SMODS.Consumable{
    key = 'bigjump2',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    rarity = 'pm_rare',
    pos = { x = 9, y = 1 },
    config = {extra = {count = 2, copy = 'c_pm_bigjump', jump = true}},
    cost = 8,
    discovered = false,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.c_pm_bigjump
		return { vars = {card.ability.extra.count, localize{type = 'name_text', set = 'pm_BattleCard', key = card.ability.extra.copy} } }
    end,
    can_use = function(self, card)
        return not (card.debuff or (card.ability and card.ability['pm_monochrome'] and card.ability['pm_monochrome'].extra.drained_turns))
    end,
    use = function(self, card, area, copier)
        local t = {
            key = card.ability.extra.copy,
            edition = G.P_CENTERS.e_negative_consumable
        }
        for i=1,card.ability.extra.count,1 do
            local _card = SMODS.add_card(t)
            _card:set_edition('e_negative')
            SMODS.Stickers.pm_monochrome:apply(_card, nil)
        end
    end
}

-- Huge Jump
SMODS.Consumable{
    key = 'hugejump',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    rarity = 'pm_rare',
    pos = { x = 0, y = 2 },
    config = {extra = {selection_limit = 1, increase = 3, jump = true}},
    cost = 7,
    discovered = false,
    loc_vars = function(self, info_queue, card)
		return { vars = {card.ability.extra.selection_limit, card.ability.extra.increase} }
    end,
    can_use = function(self, card)
        if (card.debuff or (card.ability and card.ability['pm_monochrome'] and card.ability['pm_monochrome'].extra.drained_turns)) then return false end
        if G.hand.highlighted and #G.hand.highlighted == card.ability.extra.selection_limit then
            return true
        end
        return false
    end,
    use = function(self, card, area, copier)
        if G.hand.highlighted and #G.hand.highlighted == card.ability.extra.selection_limit then
            -- yes this is just Strength code

            G.hand.highlighted[1]:flip()
            local rank_suffix = G.hand.highlighted[1].base.id >= 12 and 2 or math.min(G.hand.highlighted[1].base.id+card.ability.extra.increase, 14)
            if rank_suffix < 11 then rank_suffix = tostring(rank_suffix)
            elseif rank_suffix == 11 then rank_suffix = 'Jack'
            elseif rank_suffix == 12 then rank_suffix = 'Queen'
            elseif rank_suffix == 13 then rank_suffix = 'King'
            elseif rank_suffix == 14 then rank_suffix = 'Ace'
            end
            assert(SMODS.change_base(G.hand.highlighted[1], nil, rank_suffix))
            play_sound('tarot1', 1, 0.4)
            card:juice_up(0.3, 0.5)
            delay(0.6)
            G.hand.highlighted[1]:flip()
        end
    end
}

-- Line Jump
SMODS.Consumable{
    key = 'linejump',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    rarity = 'pm_uncommon',
    pos = { x = 1, y = 2 },
    config = {extra = {selection_limit = 3, jump = true}},
    cost = 3,
    discovered = false,
    loc_vars = function(self, info_queue, card)
		return { vars = {card.ability.extra.selection_limit} }
    end,
    can_use = function(self, card)
        if (card.debuff or (card.ability and card.ability['pm_monochrome'] and card.ability['pm_monochrome'].extra.drained_turns)) then return false end
        if G.hand.highlighted and #G.hand.highlighted == card.ability.extra.selection_limit then
            return true
        end
        return false
    end,
    use = function(self, card, area, copier)
        if G.hand.highlighted and #G.hand.highlighted == card.ability.extra.selection_limit then
            -- make the three cards into a mini-straight, based off of the biggest card (will always prioritize making a descending one)
            local max = math.max(G.hand.highlighted[1]:get_id(), G.hand.highlighted[2]:get_id(), G.hand.highlighted[3]:get_id())
            local next_in_line = math.max(max - 1, 2) -- makes sure we can't go below 2

            G.E_MANAGER:add_event(Event({
                func = function()
                    for i=1, #G.hand.highlighted do
                        G.hand.highlighted[i]:flip()
                    end
                    return true
                end
            }))

            if max ~= 2 then
                for i=1, #G.hand.highlighted do
                    if G.hand.highlighted[i]:get_id() ~= max then
                        local rank_suffix = next_in_line
                        if rank_suffix < 11 then rank_suffix = tostring(rank_suffix)
                        elseif rank_suffix == 11 then rank_suffix = 'Jack'
                        elseif rank_suffix == 12 then rank_suffix = 'Queen'
                        elseif rank_suffix == 13 then rank_suffix = 'King'
                        elseif rank_suffix == 14 then rank_suffix = 'Ace'
                        end
                        assert(SMODS.change_base(G.hand.highlighted[i], nil, rank_suffix))
                        next_in_line = math.max(next_in_line - 1, 2) -- makes sure we can't go below 2
                    end
                end
            else -- make an increasing straight instead, since the max is 2
                next_in_line = math.min(max + 1, 14)
                for i=1, #G.hand.highlighted do
                    if G.hand.highlighted[i]:get_id() ~= max then
                        local rank_suffix = next_in_line
                        if rank_suffix < 11 then rank_suffix = tostring(rank_suffix)
                        elseif rank_suffix == 11 then rank_suffix = 'Jack'
                        elseif rank_suffix == 12 then rank_suffix = 'Queen'
                        elseif rank_suffix == 13 then rank_suffix = 'King'
                        elseif rank_suffix == 14 then rank_suffix = 'Ace'
                        end
                        assert(SMODS.change_base(G.hand.highlighted[i], nil, rank_suffix))
                        next_in_line = math.min(next_in_line + 1, 14) -- makes sure we can't go above 14
                    end
                end
            end

            play_sound('tarot1', 1, 0.4)
            card:juice_up(0.3, 0.5)
            delay(0.6)

            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    for i=1, #G.hand.highlighted do
                        G.hand.highlighted[i]:flip()
                    end
                    return true
                end
            }))
        end
    end
}

-- Big Line Jump
SMODS.Consumable{
    key = 'biglinejump',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    rarity = 'pm_uncommon',
    pos = { x = 2, y = 2 },
    config = {extra = {selection_limit = 4, jump = true}},
    cost = 5,
    discovered = false,
    loc_vars = function(self, info_queue, card)
		return { vars = {card.ability.extra.selection_limit} }
    end,
    can_use = function(self, card)
        if (card.debuff or (card.ability and card.ability['pm_monochrome'] and card.ability['pm_monochrome'].extra.drained_turns)) then return false end
        if G.hand.highlighted and #G.hand.highlighted == card.ability.extra.selection_limit then
            return true
        end
        return false
    end,
    use = function(self, card, area, copier)
        if G.hand.highlighted and #G.hand.highlighted == card.ability.extra.selection_limit then
            -- make the three cards into a mini-straight, based off of the biggest card (will always prioritize making a descending one)
            local max = math.max(G.hand.highlighted[1]:get_id(), G.hand.highlighted[2]:get_id(), G.hand.highlighted[3]:get_id(), G.hand.highlighted[3]:get_id())
            local next_in_line = math.max(max - 1, 3) -- makes sure we can't go below 2

            G.E_MANAGER:add_event(Event({
                func = function()
                    for i=1, #G.hand.highlighted do
                        G.hand.highlighted[i]:flip()
                    end
                    return true
                end
            }))

            if max > 3 then
                for i=1, #G.hand.highlighted do
                    if G.hand.highlighted[i]:get_id() ~= max then
                        local rank_suffix = next_in_line
                        if rank_suffix < 11 then rank_suffix = tostring(rank_suffix)
                        elseif rank_suffix == 11 then rank_suffix = 'Jack'
                        elseif rank_suffix == 12 then rank_suffix = 'Queen'
                        elseif rank_suffix == 13 then rank_suffix = 'King'
                        elseif rank_suffix == 14 then rank_suffix = 'Ace'
                        end
                        assert(SMODS.change_base(G.hand.highlighted[i], nil, rank_suffix))
                        next_in_line = math.max(next_in_line - 1, 2) -- makes sure we can't go below 2
                    end
                end
            else -- make an increasing straight instead, since the max is <= 3
                next_in_line = math.min(max + 1, 14)
                for i=1, #G.hand.highlighted do
                    if G.hand.highlighted[i]:get_id() ~= max then
                        local rank_suffix = next_in_line
                        if rank_suffix < 11 then rank_suffix = tostring(rank_suffix)
                        elseif rank_suffix == 11 then rank_suffix = 'Jack'
                        elseif rank_suffix == 12 then rank_suffix = 'Queen'
                        elseif rank_suffix == 13 then rank_suffix = 'King'
                        elseif rank_suffix == 14 then rank_suffix = 'Ace'
                        end
                        assert(SMODS.change_base(G.hand.highlighted[i], nil, rank_suffix))
                        next_in_line = math.min(next_in_line + 1, 14) -- makes sure we can't go above 14
                    end
                end
            end

            play_sound('tarot1', 1, 0.4)
            card:juice_up(0.3, 0.5)
            delay(0.6)

            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    for i=1, #G.hand.highlighted do
                        G.hand.highlighted[i]:flip()
                    end
                    return true
                end
            }))
        end
    end
}

-- Huge Line Jump
SMODS.Consumable{
    key = 'hugelinejump',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    rarity = 'pm_rare',
    pos = { x = 3, y = 2 },
    config = {extra = {selection_limit = 5, jump = true}},
    cost = 8,
    discovered = false,
    loc_vars = function(self, info_queue, card)
		return { vars = {card.ability.extra.selection_limit} }
    end,
    can_use = function(self, card)
        if (card.debuff or (card.ability and card.ability['pm_monochrome'] and card.ability['pm_monochrome'].extra.drained_turns)) then return false end
        if G.hand.highlighted and #G.hand.highlighted == card.ability.extra.selection_limit then
            return true
        end
        return false
    end,
    use = function(self, card, area, copier)
        if G.hand.highlighted and #G.hand.highlighted == card.ability.extra.selection_limit then
            -- make the three cards into a mini-straight, based off of the biggest card (will always prioritize making a descending one)
            local max = math.max(G.hand.highlighted[1]:get_id(), G.hand.highlighted[2]:get_id(), G.hand.highlighted[3]:get_id(), G.hand.highlighted[3]:get_id())
            local next_in_line = math.max(max - 1, 4) -- makes sure we can't go below 4

            G.E_MANAGER:add_event(Event({
                func = function()
                    for i=1, #G.hand.highlighted do
                        G.hand.highlighted[i]:flip()
                    end
                    return true
                end
            }))

            if max > 4 then
                for i=1, #G.hand.highlighted do
                    if G.hand.highlighted[i]:get_id() ~= max then
                        local rank_suffix = next_in_line
                        if rank_suffix < 11 then rank_suffix = tostring(rank_suffix)
                        elseif rank_suffix == 11 then rank_suffix = 'Jack'
                        elseif rank_suffix == 12 then rank_suffix = 'Queen'
                        elseif rank_suffix == 13 then rank_suffix = 'King'
                        elseif rank_suffix == 14 then rank_suffix = 'Ace'
                        end
                        assert(SMODS.change_base(G.hand.highlighted[i], nil, rank_suffix))
                        next_in_line = math.max(next_in_line - 1, 2) -- makes sure we can't go below 2
                    end
                end
            else -- make an increasing straight instead, since the max is 4
                next_in_line = math.min(max + 1, 14)
                for i=1, #G.hand.highlighted do
                    if G.hand.highlighted[i]:get_id() ~= max then
                        local rank_suffix = next_in_line
                        if rank_suffix < 11 then rank_suffix = tostring(rank_suffix)
                        elseif rank_suffix == 11 then rank_suffix = 'Jack'
                        elseif rank_suffix == 12 then rank_suffix = 'Queen'
                        elseif rank_suffix == 13 then rank_suffix = 'King'
                        elseif rank_suffix == 14 then rank_suffix = 'Ace'
                        end
                        assert(SMODS.change_base(G.hand.highlighted[i], nil, rank_suffix))
                        next_in_line = math.min(next_in_line + 1, 14) -- makes sure we can't go above 14
                    end
                end
            end

            play_sound('tarot1', 1, 0.4)
            card:juice_up(0.3, 0.5)
            delay(0.6)

            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    for i=1, #G.hand.highlighted do
                        G.hand.highlighted[i]:flip()
                    end
                    return true
                end
            }))
        end
    end
}

-- Hopslipper
SMODS.Consumable{
    key = 'hopslipper',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    rarity = 'pm_common',
    pos = { x = 4, y = 2 },
    config = {extra = {selection_limit = 1, chip_gain = 15, uses = 0, jump = true}},
    cost = 6,
    discovered = false,
    loc_vars = function(self, info_queue, card)
		return { vars = {card.ability.extra.selection_limit, card.ability.extra.chip_gain, 5-card.ability.extra.uses} }
    end,
    can_use = function(self, card)
        if (card.debuff or (card.ability and card.ability['pm_monochrome'] and card.ability['pm_monochrome'].extra.drained_turns)) then return false end
        if G.hand.highlighted and #G.hand.highlighted == card.ability.extra.selection_limit then
            return true
        end
        return false
    end,
    keep_on_use = function(self, card)
        return card.ability.extra.uses < 4
    end,
    use = function(self, card, area, copier)
        if G.hand.highlighted and #G.hand.highlighted == card.ability.extra.selection_limit then
            local c = G.hand.highlighted[1]

            local current_bonus = c.ability.perma_bonus or 0
            c.ability.perma_bonus = current_bonus + card.ability.extra.chip_gain
            c:juice_up()

            card.ability.extra.uses = card.ability.extra.uses + 1
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.2,
                func = function()
                    card:juice_up()
                    if card.ability.extra.uses < 5 then card_eval_status_text(card, 'extra', nil, nil, nil, {message = (5-card.ability.extra.uses).." Uses Left"}) end
                    return true
                end
            }))
        end
    end
}

-- Hopslipper x2
SMODS.Consumable{
    key = 'hopslipper2',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    rarity = 'pm_uncommon',
    pos = { x = 5, y = 2 },
    config = {extra = {count = 2, copy = 'c_pm_hopslipper', jump = true}},
    cost = 7,
    discovered = false,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.c_pm_hopslipper
		return { vars = {card.ability.extra.count, localize{type = 'name_text', set = 'pm_BattleCard', key = card.ability.extra.copy} } }
    end,
    can_use = function(self, card)
        return not (card.debuff or (card.ability and card.ability['pm_monochrome'] and card.ability['pm_monochrome'].extra.drained_turns))
    end,
    use = function(self, card, area, copier)
        local t = {
            key = card.ability.extra.copy,
            edition = G.P_CENTERS.e_negative_consumable
        }
        for i=1,card.ability.extra.count,1 do
            local _card = SMODS.add_card(t)
            _card:set_edition('e_negative')
            SMODS.Stickers.pm_monochrome:apply(_card, nil)
        end
    end
}

-- Hopslipper x3
SMODS.Consumable{
    key = 'hopslipper3',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    rarity = 'pm_uncommon',
    pos = { x = 6, y = 2 },
    config = {extra = {count = 3, copy = 'c_pm_hopslipper', jump = true}},
    cost = 8,
    discovered = false,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.c_pm_hopslipper
		return { vars = {card.ability.extra.count, localize{type = 'name_text', set = 'pm_BattleCard', key = card.ability.extra.copy} } }
    end,
    can_use = function(self, card)
        return not (card.debuff or (card.ability and card.ability['pm_monochrome'] and card.ability['pm_monochrome'].extra.drained_turns))
    end,
    use = function(self, card, area, copier)
        local t = {
            key = card.ability.extra.copy,
            edition = G.P_CENTERS.e_negative_consumable
        }
        for i=1,card.ability.extra.count,1 do
            local _card = SMODS.add_card(t)
            _card:set_edition('e_negative')
            SMODS.Stickers.pm_monochrome:apply(_card, nil)
        end
    end
}

-- Big Hopslipper
SMODS.Consumable{
    key = 'bighopslipper',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    rarity = 'pm_uncommon',
    pos = { x = 7, y = 2 },
    config = {extra = {selection_limit = 1, chip_gain = 50, uses = 0, jump = true}},
    cost = 7,
    discovered = false,
    loc_vars = function(self, info_queue, card)
		return { vars = {card.ability.extra.selection_limit, card.ability.extra.chip_gain, 5-card.ability.extra.uses} }
    end,
    can_use = function(self, card)
        if (card.debuff or (card.ability and card.ability['pm_monochrome'] and card.ability['pm_monochrome'].extra.drained_turns)) then return false end
        if G.hand.highlighted and #G.hand.highlighted == card.ability.extra.selection_limit then
            return true
        end
        return false
    end,
    keep_on_use = function(self, card)
        return card.ability.extra.uses < 4
    end,
    use = function(self, card, area, copier)
        if G.hand.highlighted and #G.hand.highlighted == card.ability.extra.selection_limit then
            local c = G.hand.highlighted[1]

            local current_bonus = c.ability.perma_bonus or 0
            c.ability.perma_bonus = current_bonus + card.ability.extra.chip_gain
            c:juice_up()

            card.ability.extra.uses = card.ability.extra.uses + 1
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.2,
                func = function()
                    card:juice_up()
                    if card.ability.extra.uses < 5 then card_eval_status_text(card, 'extra', nil, nil, nil, {message = (5-card.ability.extra.uses).." Uses Left"}) end
                    return true
                end
            }))
        end
    end
}

-- Huge Hopslipper
SMODS.Consumable{
    key = 'hugehopslipper',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    rarity = 'pm_rare',
    pos = { x = 8, y = 2 },
    config = {extra = {selection_limit = 1, xchip_gain = 0.5, uses = 0, jump = true}},
    cost = 7,
    discovered = false,
    loc_vars = function(self, info_queue, card)
		return { vars = {card.ability.extra.selection_limit, card.ability.extra.xchip_gain, 5-card.ability.extra.uses} }
    end,
    can_use = function(self, card)
        if (card.debuff or (card.ability and card.ability['pm_monochrome'] and card.ability['pm_monochrome'].extra.drained_turns)) then return false end
        if G.hand.highlighted and #G.hand.highlighted == card.ability.extra.selection_limit then
            return true
        end
        return false
    end,
    keep_on_use = function(self, card)
        return card.ability.extra.uses < 4
    end,
    use = function(self, card, area, copier)
        if G.hand.highlighted and #G.hand.highlighted == card.ability.extra.selection_limit then
            local c = G.hand.highlighted[1]

            local current_bonus = c.ability.perma_x_chips or 1
            c.ability.perma_x_chips = current_bonus + card.ability.extra.xchip_gain
            c:juice_up()

            card.ability.extra.uses = card.ability.extra.uses + 1
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.2,
                func = function()
                    card:juice_up()
                    if card.ability.extra.uses < 5 then card_eval_status_text(card, 'extra', nil, nil, nil, {message = (5-card.ability.extra.uses).." Uses Left"}) end
                    return true
                end
            }))
        end
    end
}

-- Iron Jump
SMODS.Consumable{
    key = 'ironjump',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    rarity = 'pm_common',
    pos = { x = 9, y = 2 },
    config = {extra = {selection_limit = 3, jump = true}},
    cost = 3,
    discovered = false,
    loc_vars = function(self, info_queue, card)
		return { vars = {card.ability.extra.selection_limit } }
    end,
    can_use = function(self, card)
        if (card.debuff or (card.ability and card.ability['pm_monochrome'] and card.ability['pm_monochrome'].extra.drained_turns)) then return false end
        if G.hand.highlighted and  #G.hand.highlighted >= 2 and #G.hand.highlighted <= card.ability.extra.selection_limit then
            return true
        end
        return false
    end,
    use = function(self, card, area, copier)
        if G.hand.highlighted and #G.hand.highlighted >= 2 and #G.hand.highlighted <= card.ability.extra.selection_limit then
            local leftmost = G.hand.highlighted[1]
            for i=1, #G.hand.highlighted do if G.hand.highlighted[i].T.x < leftmost.T.x then leftmost = G.hand.highlighted[i] end end
            
            local left = leftmost.base.suit     
            G.E_MANAGER:add_event(Event({
                func = function()
                    for i=1, #G.hand.highlighted do
                        G.hand.highlighted[i]:flip()
                    end
                    return true
                end
            }))
            for i=1, #G.hand.highlighted do
                assert(SMODS.change_base(G.hand.highlighted[i], left, nil))
            end
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    for i=1, #G.hand.highlighted do
                        G.hand.highlighted[i]:flip()
                    end
                    return true
                end
            }))
        end
    end,
}

-- Iron Jump x2
SMODS.Consumable{
    key = 'ironjump2',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    rarity = 'pm_uncommon',
    pos = { x = 0, y = 3 },
    config = {extra = {count = 2, copy = 'c_pm_ironjump', jump = true}},
    cost = 5,
    discovered = false,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.c_pm_ironjump
		return { vars = {card.ability.extra.count, localize{type = 'name_text', set = 'pm_BattleCard', key = card.ability.extra.copy} } }
    end,
    can_use = function(self, card)
        return not (card.debuff or (card.ability and card.ability['pm_monochrome'] and card.ability['pm_monochrome'].extra.drained_turns))
    end,
    use = function(self, card, area, copier)
        local t = {
            key = card.ability.extra.copy,
            edition = G.P_CENTERS.e_negative_consumable
        }
        for i=1,card.ability.extra.count,1 do
            local _card = SMODS.add_card(t)
            _card:set_edition('e_negative')
            SMODS.Stickers.pm_monochrome:apply(_card, nil)
        end
    end
}

-- Iron Jump x3
SMODS.Consumable{
    key = 'ironjump3',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    rarity = 'pm_rare',
    pos = { x = 1, y = 3 },
    config = {extra = {count = 3, copy = 'c_pm_ironjump', jump = true}},
    cost = 1,
    discovered = false,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.c_pm_ironjump
		return { vars = {card.ability.extra.count, localize{type = 'name_text', set = 'pm_BattleCard', key = card.ability.extra.copy} } }
    end,
    can_use = function(self, card)
        return not (card.debuff or (card.ability and card.ability['pm_monochrome'] and card.ability['pm_monochrome'].extra.drained_turns))
    end,
    use = function(self, card, area, copier)
        local t = {
            key = card.ability.extra.copy,
            edition = G.P_CENTERS.e_negative_consumable
        }
        for i=1,card.ability.extra.count,1 do
            local _card = SMODS.add_card(t)
            _card:set_edition('e_negative')
            SMODS.Stickers.pm_monochrome:apply(_card, nil)
        end
    end
}

-- Big Iron Jump
SMODS.Consumable{
    key = 'bigironjump',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    rarity = 'pm_uncommon',
    pos = { x = 2, y = 3 },
    config = {extra = {selection_limit = 5, jump = true}},
    cost = 5,
    discovered = false,
    loc_vars = function(self, info_queue, card)
		return { vars = {card.ability.extra.selection_limit } }
    end,
    can_use = function(self, card)
        if (card.debuff or (card.ability and card.ability['pm_monochrome'] and card.ability['pm_monochrome'].extra.drained_turns)) then return false end
        if G.hand.highlighted and  #G.hand.highlighted >= 2 and #G.hand.highlighted <= card.ability.extra.selection_limit then
            return true
        end
        return false
    end,
    use = function(self, card, area, copier)
        if G.hand.highlighted and #G.hand.highlighted >= 2 and #G.hand.highlighted <= card.ability.extra.selection_limit then
            local leftmost = G.hand.highlighted[1]
            for i=1, #G.hand.highlighted do if G.hand.highlighted[i].T.x < leftmost.T.x then leftmost = G.hand.highlighted[i] end end
            
            local left = leftmost.base.suit     
            G.E_MANAGER:add_event(Event({
                func = function()
                    for i=1, #G.hand.highlighted do
                        G.hand.highlighted[i]:flip()
                    end
                    return true
                end
            }))
            for i=1, #G.hand.highlighted do
                assert(SMODS.change_base(G.hand.highlighted[i], left, nil))
            end
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    for i=1, #G.hand.highlighted do
                        G.hand.highlighted[i]:flip()
                    end
                    return true
                end
            }))
        end
    end,
}

-- Huge Iron Jump
SMODS.Consumable{
    key = 'hugeironjump',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    rarity = 'pm_rare',
    pos = { x = 3, y = 3 },
    config = {extra = {jump = true}},
    cost = 7,
    discovered = false,
    loc_vars = function(self, info_queue, card)
		return { vars = {} }
    end,
    can_use = function(self, card)
        if (card.debuff or (card.ability and card.ability['pm_monochrome'] and card.ability['pm_monochrome'].extra.drained_turns)) then return false end
        if G.hand.cards and G.hand.cards[1] then
            return true
        end
        return false
    end,
    use = function(self, card, area, copier)
        if G.hand.cards and G.hand.cards[1] then
            local leftmost = G.hand.cards[1]
            for i=1, #G.hand.cards do if G.hand.cards[i].T.x < leftmost.T.x then leftmost = G.hand.cards[i] end end
            
            local left = leftmost.base.suit     
            G.E_MANAGER:add_event(Event({
                func = function()
                    for i=1, #G.hand.cards do
                        G.hand.cards[i]:flip()
                    end
                    return true
                end
            }))
            for i=1, #G.hand.cards do
                assert(SMODS.change_base(G.hand.cards[i], left, nil))
            end
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    for i=1, #G.hand.cards do
                        G.hand.cards[i]:flip()
                    end
                    return true
                end
            }))
        end
    end,
}

-- Spin Jump
SMODS.Consumable{
    key = 'spinjump',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    rarity = 'pm_uncommon',
    pos = { x = 4, y = 3 },
    config = {extra = {selection_limit = 5, jump = true}},
    cost = 6,
    discovered = false,
    loc_vars = function(self, info_queue, card)
		return { vars = {card.ability.extra.selection_limit } }
    end,
    can_use = function(self, card)
        if (card.debuff or (card.ability and card.ability['pm_monochrome'] and card.ability['pm_monochrome'].extra.drained_turns)) then return false end
        if G.hand.highlighted and  #G.hand.highlighted >= 2 and #G.hand.highlighted <= card.ability.extra.selection_limit then
            return true
        end
        return false
    end,
    use = function(self, card, area, copier)
        if G.hand.highlighted and #G.hand.highlighted >= 2 and #G.hand.highlighted <= card.ability.extra.selection_limit then
            local leftmost = G.hand.highlighted[1]
            for i=1, #G.hand.highlighted do if G.hand.highlighted[i].T.x < leftmost.T.x then leftmost = G.hand.highlighted[i] end end
            
            local left = leftmost:get_id()
            if left < 11 then left = tostring(left)
            elseif left == 11 then left = 'Jack'
            elseif left == 12 then left = 'Queen'
            elseif left == 13 then left = 'King'
            elseif left == 14 then left = 'Ace'
            end     
            G.E_MANAGER:add_event(Event({
                func = function()
                    for i=1, #G.hand.highlighted do
                        G.hand.highlighted[i]:flip()
                    end
                    return true
                end
            }))
            for i=1, #G.hand.highlighted do
                assert(SMODS.change_base(G.hand.highlighted[i], nil, left))
            end
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    for i=1, #G.hand.highlighted do
                        G.hand.highlighted[i]:flip()
                    end
                    return true
                end
            }))
        end
    end,
}

-- Big Spin Jump
SMODS.Consumable{
    key = 'bigspinjump',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    rarity = 'pm_rare',
    pos = { x = 5, y = 3 },
    config = {extra = {jump = true}},
    cost = 8,
    discovered = false,
    loc_vars = function(self, info_queue, card)
		return { vars = {} }
    end,
    can_use = function(self, card)
        if (card.debuff or (card.ability and card.ability['pm_monochrome'] and card.ability['pm_monochrome'].extra.drained_turns)) then return false end
        if G.hand.cards and G.hand.cards[1] then
            return true
        end
        return false
    end,
    use = function(self, card, area, copier)
        if G.hand.cards and G.hand.cards[1] then
            local leftmost = G.hand.cards[1]
            for i=1, #G.hand.cards do if G.hand.cards[i].T.x < leftmost.T.x then leftmost = G.hand.cards[i] end end
            
            local left = leftmost:get_id()    
            if left < 11 then left = tostring(left)
            elseif left == 11 then left = 'Jack'
            elseif left == 12 then left = 'Queen'
            elseif left == 13 then left = 'King'
            elseif left == 14 then left = 'Ace'
            end
            G.E_MANAGER:add_event(Event({
                func = function()
                    for i=1, #G.hand.cards do
                        G.hand.cards[i]:flip()
                    end
                    return true
                end
            }))
            for i=1, #G.hand.cards do
                assert(SMODS.change_base(G.hand.cards[i], nil, left))
            end
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    for i=1, #G.hand.cards do
                        G.hand.cards[i]:flip()
                    end
                    return true
                end
            }))
        end
    end,
}

-- Worn-Out Hammer
SMODS.Consumable{
    key = 'wohammer',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    rarity = 'pm_common',
    pos = { x = 6, y = 3 },
    config = {extra = {odds = 3, selection_limit = 1, increase = 1, hammer = true}},
    cost = 1,
    discovered = false,
    loc_vars = function(self, info_queue, card)
		return { vars = {card.ability.extra.selection_limit, (G.GAME.probabilities.normal or 1), card.ability.extra.odds, card.ability.extra.increase} }
    end,
    can_use = function(self, card)
        if (card.debuff or (card.ability and card.ability['pm_monochrome'] and card.ability['pm_monochrome'].extra.drained_turns)) then return false end
        if G.hand.highlighted and #G.hand.highlighted == card.ability.extra.selection_limit then
            return true
        end
        return false
    end,
    use = function(self, card, area, copier)
        if G.hand.highlighted and #G.hand.highlighted == card.ability.extra.selection_limit then
            if pseudorandom('wornout') < (G.GAME.probabilities.normal / card.ability.extra.odds) then
                G.hand.highlighted[1]:flip()
                play_sound('tarot1', 1, 0.4)
                card:juice_up(0.3, 0.5)
                -- yes this is just Strength code but reversed
                local rank_suffix = G.hand.highlighted[1].base.id == 2 and 14 or math.max(G.hand.highlighted[1].base.id-card.ability.extra.increase, 2)
                if rank_suffix < 11 then rank_suffix = tostring(rank_suffix)
                elseif rank_suffix == 11 then rank_suffix = 'Jack'
                elseif rank_suffix == 12 then rank_suffix = 'Queen'
                elseif rank_suffix == 13 then rank_suffix = 'King'
                elseif rank_suffix == 14 then rank_suffix = 'Ace'
                end
                assert(SMODS.change_base(G.hand.highlighted[1], nil, rank_suffix))
                delay(0.6)
                G.hand.highlighted[1]:flip()
            else
                -- yes this is just WOF code lmao
                G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
                    attention_text({
                        text = localize('k_nope_ex'),
                        scale = 1.3, 
                        hold = 1.4,
                        major = card,
                        backdrop_colour = G.C.SECONDARY_SET.Tarot,
                        align = (G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK) and 'tm' or 'cm',
                        offset = {x = 0, y = (G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK) and -0.2 or 0},
                        silent = true
                        })
                        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.06*G.SETTINGS.GAMESPEED, blockable = false, blocking = false, func = function()
                            play_sound('tarot2', 0.76, 0.4);return true end}))
                        play_sound('tarot2', 1, 0.4)
                        card:juice_up(0.3, 0.5)
                return true end }))
                delay(0.6)
            end
        end
    end
}

-- Worn-Out Hammer x3
SMODS.Consumable{
    key = 'wohammer3',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    rarity = 'pm_common',
    pos = { x = 7, y = 3 },
    config = {extra = {count = 3, copy = 'c_pm_wohammer', hammer = true}},
    cost = 3,
    discovered = false,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.c_pm_wohammer
		return { vars = {card.ability.extra.count, localize{type = 'name_text', set = 'pm_BattleCard', key = card.ability.extra.copy} } }
    end,
    can_use = function(self, card)
        return not (card.debuff or (card.ability and card.ability['pm_monochrome'] and card.ability['pm_monochrome'].extra.drained_turns))
    end,
    use = function(self, card, area, copier)
        local t = {
            key = card.ability.extra.copy,
            edition = G.P_CENTERS.e_negative_consumable
        }
        for i=1,card.ability.extra.count,1 do
            local _card = SMODS.add_card(t)
            _card:set_edition('e_negative')
            SMODS.Stickers.pm_monochrome:apply(_card, nil)
        end
    end
}

-- Worn-Out Hammer x5
SMODS.Consumable{
    key = 'wohammer5',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    rarity = 'pm_uncommon',
    pos = { x = 8, y = 3 },
    config = {extra = {count = 5, copy = 'c_pm_wohammer', hammer = true}},
    cost = 5,
    discovered = false,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.c_pm_wohammer
		return { vars = {card.ability.extra.count, localize{type = 'name_text', set = 'pm_BattleCard', key = card.ability.extra.copy} } }
    end,
    can_use = function(self, card)
        return not (card.debuff or (card.ability and card.ability['pm_monochrome'] and card.ability['pm_monochrome'].extra.drained_turns))
    end,
    use = function(self, card, area, copier)
        local t = {
            key = card.ability.extra.copy,
            edition = G.P_CENTERS.e_negative_consumable
        }
        for i=1,card.ability.extra.count,1 do
            local _card = SMODS.add_card(t)
            _card:set_edition('e_negative')
            SMODS.Stickers.pm_monochrome:apply(_card, nil)
        end
    end
}

-- Hammer
SMODS.Consumable{
    key = 'hammer',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    rarity = 'pm_common',
    pos = { x = 9, y = 3 },
    config = {extra = {odds = 3, selection_limit = 1, increase = 1, extra_use = false, uses = 0, hammer = true}},
    cost = 3,
    discovered = false,
    loc_vars = function(self, info_queue, card)
		return { vars = {card.ability.extra.selection_limit, (G.GAME.probabilities.normal or 1), card.ability.extra.odds, card.ability.extra.increase} }
    end,
    set_ability = function(self, card, initial, delay_sprites)
        if initial then card.ability.extra.extra_use = pseudorandom('hammer') < (G.GAME.probabilities.normal / card.ability.extra.odds) end
    end,
    can_use = function(self, card)
        if (card.debuff or (card.ability and card.ability['pm_monochrome'] and card.ability['pm_monochrome'].extra.drained_turns)) then return false end
        if G.hand.highlighted and #G.hand.highlighted == card.ability.extra.selection_limit then
            return true
        end
        return false
    end,
    keep_on_use = function(self, card)
        return card.ability.extra.extra_use
    end,
    use = function(self, card, area, copier)
        if G.hand.highlighted and #G.hand.highlighted == card.ability.extra.selection_limit then
            G.hand.highlighted[1]:flip()
            
            -- yes this is just Strength code
            local rank_suffix = G.hand.highlighted[1].base.id == 2 and 14 or math.max(G.hand.highlighted[1].base.id-card.ability.extra.increase, 2)
            if rank_suffix < 11 then rank_suffix = tostring(rank_suffix)
            elseif rank_suffix == 11 then rank_suffix = 'Jack'
            elseif rank_suffix == 12 then rank_suffix = 'Queen'
            elseif rank_suffix == 13 then rank_suffix = 'King'
            elseif rank_suffix == 14 then rank_suffix = 'Ace'
            end
            assert(SMODS.change_base(G.hand.highlighted[1], nil, rank_suffix))
            play_sound('tarot1', 1, 0.4)
            card:juice_up(0.3, 0.5)
            
            if not card.ability.extra.extra_use and not card.ability.extra.uses then
            -- yes this is just WOF code lmao
                G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
                attention_text({
                    text = localize('k_nope_ex'),
                    scale = 1.3, 
                    hold = 1.4,
                    major = card,
                    backdrop_colour = G.C.SECONDARY_SET.Tarot,
                    align = (G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK) and 'tm' or 'cm',
                    offset = {x = 0, y = (G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK) and -0.2 or 0},
                    silent = true
                    })
                    G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.06*G.SETTINGS.GAMESPEED, blockable = false, blocking = false, func = function()
                        play_sound('tarot2', 0.76, 0.4);return true end}))
                    play_sound('tarot2', 1, 0.4)
                    card:juice_up(0.3, 0.5)
                return true end }))
            end

            delay(0.6)
            G.hand.highlighted[1]:flip()
            card.ability.extra.extra_use = false
            card.ability.extra.uses = card.ability.extra.uses + 1
        end
    end
}

-- Hammer x2
SMODS.Consumable{
    key = 'hammer2',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    rarity = 'pm_uncommon',
    pos = { x = 0, y = 4 },
    config = {extra = {count = 2, copy = 'c_pm_hammer', hammer = true}},
    cost = 5,
    discovered = false,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.c_pm_hammer
		return { vars = {card.ability.extra.count, localize{type = 'name_text', set = 'pm_BattleCard', key = card.ability.extra.copy} } }
    end,
    can_use = function(self, card)
        return not (card.debuff or (card.ability and card.ability['pm_monochrome'] and card.ability['pm_monochrome'].extra.drained_turns))
    end,
    use = function(self, card, area, copier)
        local t = {
            key = card.ability.extra.copy,
            edition = G.P_CENTERS.e_negative_consumable
        }
        for i=1,card.ability.extra.count,1 do
            local _card = SMODS.add_card(t)
            _card:set_edition('e_negative')
            SMODS.Stickers.pm_monochrome:apply(_card, nil)
        end
    end
}

-- Hammer x3
SMODS.Consumable{
    key = 'hammer3',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    rarity = 'pm_uncommon',
    pos = { x = 1, y = 4 },
    config = {extra = {count = 3, copy = 'c_pm_hammer', hammer = true}},
    cost = 1,
    discovered = false,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.c_pm_hammer
		return { vars = {card.ability.extra.count, localize{type = 'name_text', set = 'pm_BattleCard', key = card.ability.extra.copy} } }
    end,
    can_use = function(self, card)
        return not (card.debuff or (card.ability and card.ability['pm_monochrome'] and card.ability['pm_monochrome'].extra.drained_turns))
    end,
    use = function(self, card, area, copier)
        local t = {
            key = card.ability.extra.copy,
            edition = G.P_CENTERS.e_negative_consumable
        }
        for i=1,card.ability.extra.count,1 do
            local _card = SMODS.add_card(t)
            _card:set_edition('e_negative')
            SMODS.Stickers.pm_monochrome:apply(_card, nil)
        end
    end
}

-- Big Hammer
SMODS.Consumable{
    key = 'bighammer',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    rarity = 'pm_uncommon',
    pos = { x = 2, y = 4 },
    config = {extra = {odds = 2, selection_limit = 1, increase = 2, extra_use = false, uses = 0, hammer = true}},
    cost = 5,
    discovered = false,
    loc_vars = function(self, info_queue, card)
		return { vars = {card.ability.extra.selection_limit, (G.GAME.probabilities.normal or 1), card.ability.extra.odds, card.ability.extra.increase} }
    end,
    set_ability = function(self, card, initial, delay_sprites)
        if initial then card.ability.extra.extra_use = pseudorandom('hammer') < (G.GAME.probabilities.normal / card.ability.extra.odds) end
    end,
    can_use = function(self, card)
        if (card.debuff or (card.ability and card.ability['pm_monochrome'] and card.ability['pm_monochrome'].extra.drained_turns)) then return false end
        if G.hand.highlighted and #G.hand.highlighted == card.ability.extra.selection_limit then
            return true
        end
        return false
    end,
    keep_on_use = function(self, card)
        return card.ability.extra.extra_use
    end,
    use = function(self, card, area, copier)
        if G.hand.highlighted and #G.hand.highlighted == card.ability.extra.selection_limit then
            -- yes this is just Strength code
            G.hand.highlighted[1]:flip()
            local rank_suffix = G.hand.highlighted[1].base.id <= 3 and 14 or math.max(G.hand.highlighted[1].base.id-card.ability.extra.increase, 2)
            if rank_suffix < 11 then rank_suffix = tostring(rank_suffix)
            elseif rank_suffix == 11 then rank_suffix = 'Jack'
            elseif rank_suffix == 12 then rank_suffix = 'Queen'
            elseif rank_suffix == 13 then rank_suffix = 'King'
            elseif rank_suffix == 14 then rank_suffix = 'Ace'
            end
            assert(SMODS.change_base(G.hand.highlighted[1], nil, rank_suffix))
            play_sound('tarot1', 1, 0.4)
            card:juice_up(0.3, 0.5)
            
            if not card.ability.extra.extra_use and not card.ability.extra.uses then
            -- yes this is just WOF code lmao
                G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
                attention_text({
                    text = localize('k_nope_ex'),
                    scale = 1.3, 
                    hold = 1.4,
                    major = card,
                    backdrop_colour = G.C.SECONDARY_SET.Tarot,
                    align = (G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK) and 'tm' or 'cm',
                    offset = {x = 0, y = (G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK) and -0.2 or 0},
                    silent = true
                    })
                    G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.06*G.SETTINGS.GAMESPEED, blockable = false, blocking = false, func = function()
                        play_sound('tarot2', 0.76, 0.4);return true end}))
                    play_sound('tarot2', 1, 0.4)
                    card:juice_up(0.3, 0.5)
                return true end }))
            end
            
            delay(0.6)
            G.hand.highlighted[1]:flip()
            card.ability.extra.extra_use = false
            card.ability.extra.uses = card.ability.extra.uses + 1
        end
    end
}

-- Big Hammer x2
SMODS.Consumable{
    key = 'bighammer2',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    rarity = 'pm_rare',
    pos = { x = 3, y = 4 },
    config = {extra = {count = 2, copy = 'c_pm_bighammer', hammer = true}},
    cost = 7,
    discovered = false,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.c_pm_bighammer
		return { vars = {card.ability.extra.count, localize{type = 'name_text', set = 'pm_BattleCard', key = card.ability.extra.copy} } }
    end,
    can_use = function(self, card)
        return not (card.debuff or (card.ability and card.ability['pm_monochrome'] and card.ability['pm_monochrome'].extra.drained_turns))
    end,
    use = function(self, card, area, copier)
        local t = {
            key = card.ability.extra.copy,
            edition = G.P_CENTERS.e_negative_consumable
        }
        for i=1,card.ability.extra.count,1 do
            local _card = SMODS.add_card(t)
            _card:set_edition('e_negative')
            SMODS.Stickers.pm_monochrome:apply(_card, nil)
        end
    end
}

-- Huge Hammer
SMODS.Consumable{
    key = 'hugehammer',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    rarity = 'pm_rare',
    pos = { x = 4, y = 4 },
    config = {extra = {selection_limit = 1, increase = 3, hammer = true}},
    cost = 7,
    discovered = false,
    loc_vars = function(self, info_queue, card)
		return { vars = {card.ability.extra.selection_limit, card.ability.extra.increase} }
    end,
    can_use = function(self, card)
        if (card.debuff or (card.ability and card.ability['pm_monochrome'] and card.ability['pm_monochrome'].extra.drained_turns)) then return false end
        if G.hand.highlighted and #G.hand.highlighted == card.ability.extra.selection_limit then
            return true
        end
        return false
    end,
    use = function(self, card, area, copier)
        if G.hand.highlighted and #G.hand.highlighted == card.ability.extra.selection_limit then
            -- yes this is just Strength code

            G.hand.highlighted[1]:flip()
            local rank_suffix = G.hand.highlighted[1].base.id <= 4 and 14 or math.max(G.hand.highlighted[1].base.id-card.ability.extra.increase, 2)
            if rank_suffix < 11 then rank_suffix = tostring(rank_suffix)
            elseif rank_suffix == 11 then rank_suffix = 'Jack'
            elseif rank_suffix == 12 then rank_suffix = 'Queen'
            elseif rank_suffix == 13 then rank_suffix = 'King'
            elseif rank_suffix == 14 then rank_suffix = 'Ace'
            end
            assert(SMODS.change_base(G.hand.highlighted[1], nil, rank_suffix))
            play_sound('tarot1', 1, 0.4)
            card:juice_up(0.3, 0.5)
            delay(0.6)
            G.hand.highlighted[1]:flip()
        end
    end
}

-- KO Hammer
SMODS.Consumable{
    key = 'kohammer',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    rarity = 'pm_uncommon',
    pos = { x = 5, y = 4 },
    config = {extra = {odds = 10000, hammer = true}},
    cost = 5,
    discovered = false,
    loc_vars = function(self, info_queue, card)
        return { vars = {  (G.GAME.probabilities.normal or 1), card.ability.extra.odds } }
    end,
    can_use = function(self, card)
        return G.GAME.blind.in_blind and not (card.debuff or (card.ability and card.ability['pm_monochrome'] and card.ability['pm_monochrome'].extra.drained_turns))
    end,
    use = function(self, card, area, copier)
        if G.GAME.blind.in_blind then
            if G.STATE ~= G.STATES.PLAY_TAROT then return end
            if pseudorandom('KO') < (G.GAME.probabilities.normal / card.ability.extra.odds) then

                G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
                    attention_text({
                        text = localize('pm_KO'),
                        scale = 1.3, 
                        hold = 1.4,
                        major = card,
                        backdrop_colour = G.C.ATTENTION,
                        align = (G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK) and 'tm' or 'cm',
                        offset = {x = 0, y = (G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK) and -0.2 or 0},
                        silent = true
                        })
                        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.06*G.SETTINGS.GAMESPEED, blockable = false, blocking = false, func = function()
                            play_sound('tarot2', 0.76, 0.4);return true end}))
                        play_sound('tarot2', 1, 0.4)
                        card:juice_up(0.3, 0.5)
                return true end }))

                G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
                    G.GAME.chips = G.GAME.blind.chips
                    G.STATE = G.STATES.HAND_PLAYED
                    G.STATE_COMPLETE = true
                    end_round() 
                return true end }))
            else
                -- yes this is just WOF code lmao
                G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
                    attention_text({
                        text = localize('k_nope_ex'),
                        scale = 1.3, 
                        hold = 1.4,
                        major = card,
                        backdrop_colour = G.C.SECONDARY_SET.Tarot,
                        align = (G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK) and 'tm' or 'cm',
                        offset = {x = 0, y = (G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK) and -0.2 or 0},
                        silent = true
                        })
                        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.06*G.SETTINGS.GAMESPEED, blockable = false, blocking = false, func = function()
                            play_sound('tarot2', 0.76, 0.4);return true end}))
                        play_sound('tarot2', 1, 0.4)
                        card:juice_up(0.3, 0.5)
                return true end }))
                delay(0.6)
            end
        end
    end
}
-- Big KO Hammer
SMODS.Consumable{
    key = 'bigkohammer',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    rarity = 'pm_uncommon',
    pos = { x = 6, y = 4 },
    config = {extra = {odds = 500, hammer = true}},
    cost = 5,
    discovered = false,
    loc_vars = function(self, info_queue, card)
        return { vars = {  (G.GAME.probabilities.normal or 1), card.ability.extra.odds } }
    end,
    can_use = function(self, card)
        return G.GAME.blind.in_blind and not (card.debuff or (card.ability and card.ability['pm_monochrome'] and card.ability['pm_monochrome'].extra.drained_turns))
    end,
    use = function(self, card, area, copier)
        if G.GAME.blind.in_blind then
            if G.STATE ~= G.STATES.PLAY_TAROT then return end
            if pseudorandom('KO') < (G.GAME.probabilities.normal / card.ability.extra.odds) then
                G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
                    attention_text({
                        text = localize('pm_KO'),
                        scale = 1.3, 
                        hold = 1.4,
                        major = card,
                        backdrop_colour = G.C.ATTENTION,
                        align = (G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK) and 'tm' or 'cm',
                        offset = {x = 0, y = (G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK) and -0.2 or 0},
                        silent = true
                        })
                        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.06*G.SETTINGS.GAMESPEED, blockable = false, blocking = false, func = function()
                            play_sound('tarot2', 0.76, 0.4);return true end}))
                        play_sound('tarot2', 1, 0.4)
                        card:juice_up(0.3, 0.5)
                return true end }))

                G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
                    G.GAME.chips = G.GAME.blind.chips
                    G.STATE = G.STATES.HAND_PLAYED
                    G.STATE_COMPLETE = true
                    end_round() 
                return true end }))
            else
                -- yes this is just WOF code lmao
                G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
                    attention_text({
                        text = localize('k_nope_ex'),
                        scale = 1.3, 
                        hold = 1.4,
                        major = card,
                        backdrop_colour = G.C.SECONDARY_SET.Tarot,
                        align = (G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK) and 'tm' or 'cm',
                        offset = {x = 0, y = (G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK) and -0.2 or 0},
                        silent = true
                        })
                        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.06*G.SETTINGS.GAMESPEED, blockable = false, blocking = false, func = function()
                            play_sound('tarot2', 0.76, 0.4);return true end}))
                        play_sound('tarot2', 1, 0.4)
                        card:juice_up(0.3, 0.5)
                return true end }))
                delay(0.6)
            end
        end
    end
}

-- Huge KO Hammer
SMODS.Consumable{
    key = 'hugekohammer',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    rarity = 'pm_rare',
    pos = { x = 7, y = 4 },
    config = {extra = {odds = 100, hammer = true}},
    cost = 5,
    discovered = false,
    loc_vars = function(self, info_queue, card)
        return { vars = {  (G.GAME.probabilities.normal or 1), card.ability.extra.odds } }
    end,
    can_use = function(self, card)
        return G.GAME.blind.in_blind and not (card.debuff or (card.ability and card.ability['pm_monochrome'] and card.ability['pm_monochrome'].extra.drained_turns))
    end,
    use = function(self, card, area, copier)
        if G.GAME.blind.in_blind then
            if G.STATE ~= G.STATES.PLAY_TAROT then return
            elseif pseudorandom('KO') < (G.GAME.probabilities.normal / card.ability.extra.odds) then
                G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
                    attention_text({
                        text = localize('pm_KO'),
                        scale = 1.3, 
                        hold = 1.4,
                        major = card,
                        backdrop_colour = G.C.ATTENTION,
                        align = (G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK) and 'tm' or 'cm',
                        offset = {x = 0, y = (G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK) and -0.2 or 0},
                        silent = true
                        })
                        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.06*G.SETTINGS.GAMESPEED, blockable = false, blocking = false, func = function()
                            play_sound('tarot2', 0.76, 0.4);return true end}))
                        play_sound('tarot2', 1, 0.4)
                        card:juice_up(0.3, 0.5)
                return true end }))

                G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
                    G.GAME.chips = G.GAME.blind.chips
                    G.STATE = G.STATES.HAND_PLAYED
                    G.STATE_COMPLETE = true
                    end_round() 
                return true end }))
            else
                -- yes this is just WOF code lmao
                G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
                    attention_text({
                        text = localize('k_nope_ex'),
                        scale = 1.3, 
                        hold = 1.4,
                        major = card,
                        backdrop_colour = G.C.SECONDARY_SET.Tarot,
                        align = (G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK) and 'tm' or 'cm',
                        offset = {x = 0, y = (G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK) and -0.2 or 0},
                        silent = true
                        })
                        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.06*G.SETTINGS.GAMESPEED, blockable = false, blocking = false, func = function()
                            play_sound('tarot2', 0.76, 0.4);return true end}))
                        play_sound('tarot2', 1, 0.4)
                        card:juice_up(0.3, 0.5)
                return true end }))
                delay(0.6)
            end
        end
    end
}

-- Eekhammer
SMODS.Consumable{
    key = 'eekhammer',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    rarity = 'pm_common',
    pos = { x = 8, y = 4 },
    config = {extra = {selection_limit = 1, mult_gain = 3, uses = 0, hammer = true}},
    cost = 6,
    discovered = false,
    loc_vars = function(self, info_queue, card)
		return { vars = {card.ability.extra.selection_limit, card.ability.extra.mult_gain, 5-card.ability.extra.uses} }
    end,
    can_use = function(self, card)
        if (card.debuff or (card.ability and card.ability['pm_monochrome'] and card.ability['pm_monochrome'].extra.drained_turns)) then return false end
        if G.hand.highlighted and #G.hand.highlighted == card.ability.extra.selection_limit then
            return true
        end
        return false
    end,
    keep_on_use = function(self, card)
        return card.ability.extra.uses < 4
    end,
    use = function(self, card, area, copier)
        if G.hand.highlighted and #G.hand.highlighted == card.ability.extra.selection_limit then
            local c = G.hand.highlighted[1]

            local current_bonus = c.ability.perma_mult or 0
            c.ability.perma_mult = current_bonus + card.ability.extra.mult_gain
            c:juice_up()

            card.ability.extra.uses = card.ability.extra.uses + 1
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.2,
                func = function()
                    card:juice_up()
                    if card.ability.extra.uses < 5 then card_eval_status_text(card, 'extra', nil, nil, nil, {message = (5-card.ability.extra.uses).." Uses Left"}) end
                    return true
                end
            }))
        end
    end
}

-- Eekhammer x2
SMODS.Consumable{
    key = 'eekhammer2',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    rarity = 'pm_uncommon',
    pos = { x = 9, y = 4 },
    config = {extra = {count = 2, copy = 'c_pm_eekhammer', hammer = true}},
    cost = 7,
    discovered = false,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.c_pm_eekhammer
		return { vars = {card.ability.extra.count, localize{type = 'name_text', set = 'pm_BattleCard', key = card.ability.extra.copy} } }
    end,
    can_use = function(self, card)
        return not (card.debuff or (card.ability and card.ability['pm_monochrome'] and card.ability['pm_monochrome'].extra.drained_turns))
    end,
    use = function(self, card, area, copier)
        local t = {
            key = card.ability.extra.copy,
            edition = G.P_CENTERS.e_negative_consumable
        }
        for i=1,card.ability.extra.count,1 do
            local _card = SMODS.add_card(t)
            _card:set_edition('e_negative')
            SMODS.Stickers.pm_monochrome:apply(_card, nil)
        end
    end
}

-- Eekhammer x3
SMODS.Consumable{
    key = 'eekhammer3',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    rarity = 'pm_uncommon',
    pos = { x = 0, y = 5 },
    config = {extra = {count = 3, copy = 'c_pm_eekhammer', hammer = true}},
    cost = 8,
    discovered = false,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.c_pm_eekhammer
		return { vars = {card.ability.extra.count, localize{type = 'name_text', set = 'pm_BattleCard', key = card.ability.extra.copy} } }
    end,
    can_use = function(self, card)
        return not (card.debuff or (card.ability and card.ability['pm_monochrome'] and card.ability['pm_monochrome'].extra.drained_turns))
    end,
    use = function(self, card, area, copier)
        local t = {
            key = card.ability.extra.copy,
            edition = G.P_CENTERS.e_negative_consumable
        }
        for i=1,card.ability.extra.count,1 do
            local _card = SMODS.add_card(t)
            _card:set_edition('e_negative')
            SMODS.Stickers.pm_monochrome:apply(_card, nil)
        end
    end
}

-- Big Eekhammer
SMODS.Consumable{
    key = 'bigeekhammer',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    rarity = 'pm_uncommon',
    pos = { x = 1, y = 5 },
    config = {extra = {selection_limit = 1, mult_gain = 6, uses = 0, hammer = true}},
    cost = 7,
    discovered = false,
    loc_vars = function(self, info_queue, card)
		return { vars = {card.ability.extra.selection_limit, card.ability.extra.mult_gain, 5-card.ability.extra.uses} }
    end,
    can_use = function(self, card)
        if (card.debuff or (card.ability and card.ability['pm_monochrome'] and card.ability['pm_monochrome'].extra.drained_turns)) then return false end
        if G.hand.highlighted and #G.hand.highlighted == card.ability.extra.selection_limit then
            return true
        end
        return false
    end,
    keep_on_use = function(self, card)
        return card.ability.extra.uses < 4
    end,
    use = function(self, card, area, copier)
        if G.hand.highlighted and #G.hand.highlighted == card.ability.extra.selection_limit then
            local c = G.hand.highlighted[1]

            local current_bonus = c.ability.perma_mult or 0
            c.ability.perma_mult = current_bonus + card.ability.extra.mult_gain
            c:juice_up()

            card.ability.extra.uses = card.ability.extra.uses + 1
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.2,
                func = function()
                    card:juice_up()
                    if card.ability.extra.uses < 5 then card_eval_status_text(card, 'extra', nil, nil, nil, {message = (5-card.ability.extra.uses).." Uses Left"}) end
                    return true
                end
            }))
        end
    end
}

-- Big Eekhammer x2
SMODS.Consumable{
    key = 'bigeekhammer2',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    rarity = 'pm_rare',
    pos = { x = 2, y = 5 },
    config = {extra = {count = 2, copy = 'c_pm_bigeekhammer', hammer = true}},
    cost = 8,
    discovered = false,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.c_pm_bigeekhammer
		return { vars = {card.ability.extra.count, localize{type = 'name_text', set = 'pm_BattleCard', key = card.ability.extra.copy} } }
    end,
    can_use = function(self, card)
        return not (card.debuff or (card.ability and card.ability['pm_monochrome'] and card.ability['pm_monochrome'].extra.drained_turns))
    end,
    use = function(self, card, area, copier)
        local t = {
            key = card.ability.extra.copy,
            edition = G.P_CENTERS.e_negative_consumable
        }
        for i=1,card.ability.extra.count,1 do
            local _card = SMODS.add_card(t)
            _card:set_edition('e_negative')
            SMODS.Stickers.pm_monochrome:apply(_card, nil)
        end
    end
}

-- Huge Eekhammer
SMODS.Consumable{
    key = 'hugeeekhammer',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    rarity = 'pm_rare',
    pos = { x = 3, y = 5 },
    config = {extra = {selection_limit = 1, xmult_gain = 0.1, uses = 0, hammer = true}},
    cost = 7,
    discovered = false,
    loc_vars = function(self, info_queue, card)
		return { vars = {card.ability.extra.selection_limit, card.ability.extra.xmult_gain, 5-card.ability.extra.uses} }
    end,
    can_use = function(self, card)
        if (card.debuff or (card.ability and card.ability['pm_monochrome'] and card.ability['pm_monochrome'].extra.drained_turns)) then return false end
        if G.hand.highlighted and #G.hand.highlighted == card.ability.extra.selection_limit then
            return true
        end
        return false
    end,
    keep_on_use = function(self, card)
        return card.ability.extra.uses < 4
    end,
    use = function(self, card, area, copier)
        if G.hand.highlighted and #G.hand.highlighted == card.ability.extra.selection_limit then
            local c = G.hand.highlighted[1]

            local current_bonus = c.ability.perma_x_mult or 0
            c.ability.perma_x_mult = current_bonus + card.ability.extra.xmult_gain
            c:juice_up()

            card.ability.extra.uses = card.ability.extra.uses + 1
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.2,
                func = function()
                    card:juice_up()
                    if card.ability.extra.uses < 5 then card_eval_status_text(card, 'extra', nil, nil, nil, {message = (5-card.ability.extra.uses).." Uses Left"}) end
                    return true
                end
            }))
        end
    end
}

-- Hurlhammer
SMODS.Consumable{
    key = 'hurlhammer',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    rarity = 'pm_common',
    pos = { x = 4, y = 5 },
    config = {extra = {odds = 5, selection_limit = 5, hammer = true}},
    cost = 4,
    discovered = false,
    loc_vars = function(self, info_queue, card)
		return { vars = {card.ability.extra.selection_limit, (G.GAME.probabilities.normal or 1), card.ability.extra.odds} }
    end,
    can_use = function(self, card)
        if (card.debuff or (card.ability and card.ability['pm_monochrome'] and card.ability['pm_monochrome'].extra.drained_turns)) then return false end
        if G.hand.highlighted and #G.hand.highlighted >= 1 and #G.hand.highlighted <= card.ability.extra.selection_limit then
            return true
        end
        return false
    end,
    use = function(self, card, area, copier)
        if G.hand.highlighted and #G.hand.highlighted >= 1 and #G.hand.highlighted <= card.ability.extra.selection_limit then
            if pseudorandom('hurl') < (G.GAME.probabilities.normal / card.ability.extra.odds) then
                for i=1, #G.hand.highlighted do
                    G.hand.highlighted[i]:flip()
                    assert(SMODS.change_base(G.hand.highlighted[i], nil, 'Ace'))
                end
                play_sound('tarot1', 1, 0.4)
                card:juice_up(0.3, 0.5)
                delay(0.6)
                for i=1, #G.hand.highlighted do
                    G.hand.highlighted[i]:flip()
                end
            else
                G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
                attention_text({
                    text = localize('k_nope_ex'),
                    scale = 1.3, 
                    hold = 1.4,
                    major = card,
                    backdrop_colour = G.C.SECONDARY_SET.Tarot,
                    align = (G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK) and 'tm' or 'cm',
                    offset = {x = 0, y = (G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK) and -0.2 or 0},
                    silent = true
                    })
                    G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.06*G.SETTINGS.GAMESPEED, blockable = false, blocking = false, func = function()
                        play_sound('tarot2', 0.76, 0.4);return true end}))
                    play_sound('tarot2', 1, 0.4)
                    card:juice_up(0.3, 0.5)
                return true end }))
            end
        end
    end
}

-- Hurlhammer x2
SMODS.Consumable{
    key = 'hurlhammer2',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    rarity = 'pm_uncommon',
    pos = { x = 5, y = 5 },
    config = {extra = {count = 2, copy = 'c_pm_hurlhammer', hammer = true}},
    cost = 6,
    discovered = false,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.c_pm_hurlhammer
		return { vars = {card.ability.extra.count, localize{type = 'name_text', set = 'pm_BattleCard', key = card.ability.extra.copy} } }
    end,
    can_use = function(self, card)
        return not (card.debuff or (card.ability and card.ability['pm_monochrome'] and card.ability['pm_monochrome'].extra.drained_turns))
    end,
    use = function(self, card, area, copier)
        local t = {
            key = card.ability.extra.copy,
            edition = G.P_CENTERS.e_negative_consumable
        }
        for i=1,card.ability.extra.count,1 do
            local _card = SMODS.add_card(t)
            _card:set_edition('e_negative')
            SMODS.Stickers.pm_monochrome:apply(_card, nil)
        end
    end
}

-- Hurlhammer x3
SMODS.Consumable{
    key = 'hurlhammer3',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    rarity = 'pm_uncommon',
    pos = { x = 6, y = 5 },
    config = {extra = {count = 3, copy = 'c_pm_hurlhammer', hammer = true}},
    cost = 7,
    discovered = false,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.c_pm_hurlhammer
		return { vars = {card.ability.extra.count, localize{type = 'name_text', set = 'pm_BattleCard', key = card.ability.extra.copy} } }
    end,
    can_use = function(self, card)
        return not (card.debuff or (card.ability and card.ability['pm_monochrome'] and card.ability['pm_monochrome'].extra.drained_turns))
    end,
    use = function(self, card, area, copier)
        local t = {
            key = card.ability.extra.copy,
            edition = G.P_CENTERS.e_negative_consumable
        }
        for i=1,card.ability.extra.count,1 do
            local _card = SMODS.add_card(t)
            _card:set_edition('e_negative')
            SMODS.Stickers.pm_monochrome:apply(_card, nil)
        end
    end
}

-- Big Hurlhammer
SMODS.Consumable{
    key = 'bighurlhammer',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    rarity = 'pm_uncommon',
    pos = { x = 7, y = 5 },
    config = {extra = {odds = 2, selection_limit = 5, hammer = true}},
    cost = 6,
    discovered = false,
    loc_vars = function(self, info_queue, card)
		return { vars = {card.ability.extra.selection_limit, (G.GAME.probabilities.normal or 1), card.ability.extra.odds} }
    end,
    can_use = function(self, card)
        if (card.debuff or (card.ability and card.ability['pm_monochrome'] and card.ability['pm_monochrome'].extra.drained_turns)) then return false end
        if G.hand.highlighted and #G.hand.highlighted >= 1  and #G.hand.highlighted <= card.ability.extra.selection_limit  then
            return true
        end
        return false
    end,
    use = function(self, card, area, copier)
        if G.hand.highlighted and #G.hand.highlighted >= 1  and #G.hand.highlighted <= card.ability.extra.selection_limit  then
            if pseudorandom('hurl') < (G.GAME.probabilities.normal / card.ability.extra.odds) then
                for i=1, #G.hand.highlighted do
                    G.hand.highlighted[i]:flip()
                    assert(SMODS.change_base(G.hand.highlighted[i], nil, 'Ace'))
                end
                play_sound('tarot1', 1, 0.4)
                card:juice_up(0.3, 0.5)
                delay(0.6)
                for i=1, #G.hand.highlighted do
                    G.hand.highlighted[i]:flip()
                end
            else
                G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
                attention_text({
                    text = localize('k_nope_ex'),
                    scale = 1.3, 
                    hold = 1.4,
                    major = card,
                    backdrop_colour = G.C.SECONDARY_SET.Tarot,
                    align = (G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK) and 'tm' or 'cm',
                    offset = {x = 0, y = (G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK) and -0.2 or 0},
                    silent = true
                    })
                    G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.06*G.SETTINGS.GAMESPEED, blockable = false, blocking = false, func = function()
                        play_sound('tarot2', 0.76, 0.4);return true end}))
                    play_sound('tarot2', 1, 0.4)
                    card:juice_up(0.3, 0.5)
                return true end }))
            end
        end
    end
}

-- Huge Hurlhammer
SMODS.Consumable{
    key = 'hugehurlhammer',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    rarity = 'pm_rare',
    pos = { x = 8, y = 5 },
    config = {extra = {selection_limit = 5, hammer = true}},
    cost = 8,
    discovered = false,
    loc_vars = function(self, info_queue, card)
		return { vars = {card.ability.extra.selection_limit} }
    end,
    can_use = function(self, card)
        if (card.debuff or (card.ability and card.ability['pm_monochrome'] and card.ability['pm_monochrome'].extra.drained_turns)) then return false end
        if G.hand.highlighted and #G.hand.highlighted >= 1 and #G.hand.highlighted <= card.ability.extra.selection_limit then
            return true
        end
        return false
    end,
    use = function(self, card, area, copier)
        if G.hand.highlighted and #G.hand.highlighted >= 1  and #G.hand.highlighted <= card.ability.extra.selection_limit then
            for i=1, #G.hand.highlighted do
                G.hand.highlighted[i]:flip()
                assert(SMODS.change_base(G.hand.highlighted[i], nil, 'Ace'))
            end
            play_sound('tarot1', 1, 0.4)
            card:juice_up(0.3, 0.5)
            delay(0.6)
            for i=1, #G.hand.highlighted do
                G.hand.highlighted[i]:flip()
            end
        end
    end
}

-- Blazehammer
SMODS.Consumable{
    key = 'blazehammer',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    rarity = 'pm_uncommon',
    pos = { x = 9, y = 5 },
    config = {extra = {selection_limit = 5, money = 7, hammer = true}},
    cost = 5,
    discovered = false,
    loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.selection_limit, card.ability.extra.money } }
    end,
    can_use = function(self, card)
        if (card.debuff or (card.ability and card.ability['pm_monochrome'] and card.ability['pm_monochrome'].extra.drained_turns)) then return false end
        if G.hand.highlighted and #G.hand.highlighted >= 1 and #G.hand.highlighted <= card.ability.extra.selection_limit then
            return true
        end
        return false
    end,
    use = function(self, card, area, copier)
        if G.hand.highlighted and #G.hand.highlighted >= 1 and #G.hand.highlighted <= card.ability.extra.selection_limit then
            for i=1, #G.hand.highlighted do
                local _card = G.hand.highlighted[i]
                G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
                    play_sound('tarot1')
                    card:juice_up(0.3, 0.5)
                    return true end }))
                G.E_MANAGER:add_event(Event({
                    trigger = 'after',
                    delay = 0.2,
                    func = function() 
                        if _card.ability.name == 'Glass Card' then 
                            _card:shatter()
                        else
                            _card:start_dissolve(nil, i == #G.hand.highlighted)
                        end
                    return true end }))
            end
            if #G.hand.highlighted == card.ability.extra.selection_limit then 
                ease_dollars(card.ability.extra.money) 
                card_eval_status_text(card, 'extra', nil, nil, nil, {message = '$5', colour = G.C.MONEY})
            end
        end
    end,
}

--------  SPECTRALS and TAROTS ---------------

-- Colorizer
SMODS.Consumable{
    key = 'colorizer',
    set = 'Spectral',
    atlas = 'PMConsumable',
    pos = { x = 4, y = 1 },
    config = {extra = {}},
    cost = 7,
    discovered = false,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = {set = 'Other', key = 'pm_monochrome_sticker'}
		return { vars = { } }
    end,
    can_use = function(self, card)
        for i=1, #G.jokers.cards do
            local c = G.jokers.cards[i]
            if c.ability and c.ability['pm_monochrome'] then
                return true
            end
        end

        for i=1, #G.consumeables.cards do
            local c = G.consumeables.cards[i]
            if c.ability and c.ability['pm_monochrome'] then
                return true
            end
        end
        return false
    end,
    use = function(self, card, area, copier)
        for i=1, #G.jokers.cards do
            local c = G.jokers.cards[i]
            if c.ability and c.ability['pm_monochrome'] then
                card_eval_status_text(c, 'extra', nil, nil, nil, {message = localize("pm_colorized"),colour = G.C.FILTER, delay = 0.45})
                c:set_debuff(false)
                SMODS.Stickers.pm_monochrome:apply(c, nil)
            end
        end

        for i=1, #G.consumeables.cards do
            local c = G.consumeables.cards[i]
            if c.ability and c.ability['pm_monochrome'] then
                card_eval_status_text(c, 'extra', nil, nil, nil, {message = localize("pm_colorized"),colour = G.C.FILTER, delay = 0.45})
                c:set_debuff(false)
                SMODS.Stickers.pm_monochrome:apply(c, nil)
            end
        end
    end,
    in_pool = function(self)
        local count = 0
        if G.jokers then
            for i=1, #G.jokers.cards do
                if G.jokers.cards[i].ability['pm_monochrome'] and G.jokers.cards[i].ability['pm_monochrome'].extra.drained_turns > 0 then count = count + 1 end
            end
        end
        return SMODS.Stickers['pm_monochrome'].rate > 0 and count > 0
    end,
}

-- Replicator
SMODS.Consumable{
    key = 'replicator',
    set = 'Spectral',
    atlas = 'PMConsumable',
    pos = { x = 5, y = 1 },
    config = {extra = {}},
    cost = 7,
    discovered = false,
    loc_vars = function(self, info_queue, card)
        if not card.edition or (card.edition and not card.edition == 'e_pm_replica') then
			info_queue[#info_queue+1] = G.P_CENTERS.e_pm_replica
		end
		return { vars = { } }
    end,
    can_use = function(self, card)
        return #G.jokers.cards > 0 and #G.jokers.cards < G.jokers.config.card_limit
    end,
    use = function(self, card, area, copier)
        if #G.jokers.cards < G.jokers.config.card_limit then 
            local chosen_joker = pseudorandom_element(G.jokers.cards, pseudoseed("replica"))
            card_eval_status_text(chosen_joker, 'extra', nil, nil, nil, {message = localize('k_duplicated_ex')})
            local t = {
                key = chosen_joker.config.center.key
            }
            local _card = SMODS.add_card(t)
            _card:set_edition('e_pm_replica', nil, nil)
            SMODS.Stickers.pm_monochrome:apply(_card, nil)
            if _card.ability.invis_rounds then _card.ability.invis_rounds = 0 end
        else
            card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('k_no_room_ex')})
        end
    end,
}

-- Reverse Soul
SMODS.Consumable{
    key = 'soulreverse',
    set = 'Spectral',
    atlas = 'PMConsumable',
    pos = { x = 0, y = 2 },
    soul_pos = { x = 1, y = 2 },
    config = {extra = {}},
    cost = 10,
    discovered = false,
    hidden = {
        soul_set = 'pm_BattleCard',
        soul_rate = 10,
    },
    loc_vars = function(self, info_queue, card)
		return { vars = { } }
    end,
    can_use = function(self, card)
        return #G.jokers.cards < G.jokers.config.card_limit
    end,
    use = function(self, card, area, copier)
        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
            play_sound('timpani')
            local t = {
                set = 'Joker',
                rarity = 'pm_bosses',
            }
            SMODS.add_card(t)
            card:juice_up(0.3, 0.5)
            return true end }))
        delay(0.6)
    end,
    check_for_unlock = function(self, args)
        if args.type == "boss_blind_win" then
            if G.GAME.pm_ach_conditions then
                for i=1, #G.GAME.pm_ach_conditions do
                    if G.GAME.pm_ach_conditions[i] ~= true then
                        return false
                    end
                end
                return true
            end
        end
    end
}

------------ PAINTS --------------------------

-- Black Paint
SMODS.Consumable{
    key = 'blackpaint',
    set = 'Tarot',
    atlas = 'PMConsumable',
    pos = { x = 0, y = 0 },
    config = {extra = {dsuit = "Spades"}},
    cost = 3,
    discovered = false,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = {set = 'Other', key = 'pm_monochrome', vars = {5, card.ability.extra.dsuit, colours = {G.C.SUITS[card.ability.extra.dsuit]}}}
		return { vars = { card.ability.extra.dsuit } }
    end,
    can_use = function(self, card)
        for i=1, #G.jokers.cards do
            local c = G.jokers.cards[i]
            if c.ability and c.ability['pm_monochrome'] and (c.ability['pm_monochrome'].extra.drained_suit == card.ability.extra.dsuit) then
                return true
            end
        end

        for i=1, #G.consumeables.cards do
            local c = G.consumeables.cards[i]
            if c.ability and c.ability['pm_monochrome'] and (c.ability['pm_monochrome'].extra.drained_suit == card.ability.extra.dsuit) then
                return true
            end
        end

        return false
    end,
    use = function(self, card, area, copier)
                for i=1, #G.jokers.cards do
            local c = G.jokers.cards[i]
            if c.ability and c.ability['pm_monochrome'] and c.ability['pm_monochrome'].extra.drained_suit then
                if (c.ability['pm_monochrome'].extra.drained_suit == card.ability.extra.dsuit) then
                    card_eval_status_text(c, 'extra', nil, nil, nil, {message = localize("pm_colorized"),colour = G.C.FILTER, delay = 0.45})
                    c:set_debuff(false)
                    SMODS.Stickers.pm_monochrome:apply(c, nil)
                end
            end
        end

        for i=1, #G.consumeables.cards do
            local c = G.consumeables.cards[i]
            if c.ability and c.ability['pm_monochrome'] and c.ability['pm_monochrome'].extra.drained_suit then
                if (c.ability['pm_monochrome'].extra.drained_suit == card.ability.extra.dsuit) then
                    card_eval_status_text(c, 'extra', nil, nil, nil, {message = localize("pm_colorized"),colour = G.C.FILTER, delay = 0.45})
                    c:set_debuff(false)
                    SMODS.Stickers.pm_monochrome:apply(c, nil)
                end
            end
        end
    end,
    in_pool = function(self)
        local count = 0
        if G.jokers then
            for i=1, #G.jokers.cards do
                if G.jokers.cards[i].ability['pm_monochrome'] and G.jokers.cards[i].ability['pm_monochrome'].extra.drained_turns > 0 then count = count + 1 end
            end
        end
        return SMODS.Stickers['pm_monochrome'].rate > 0 and count > 0
    end,
}

-- Blue Paint
SMODS.Consumable{
    key = 'bluepaint',
    set = 'Tarot',
    atlas = 'PMConsumable',
    pos = { x = 1, y = 0 },
    config = {extra = {dsuit = "Clubs"}},
    cost = 3,
    discovered = false,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = {set = 'Other', key = 'pm_monochrome', vars = {5, card.ability.extra.dsuit, colours = {G.C.SUITS[card.ability.extra.dsuit]}}}
		return { vars = { card.ability.extra.dsuit } }
    end,
    can_use = function(self, card)
        for i=1, #G.jokers.cards do
            local c = G.jokers.cards[i]
            if c.ability and c.ability['pm_monochrome'] and (c.ability['pm_monochrome'].extra.drained_suit == card.ability.extra.dsuit) then
                return true
            end
        end

        for i=1, #G.consumeables.cards do
            local c = G.consumeables.cards[i]
            if c.ability and c.ability['pm_monochrome'] and (c.ability['pm_monochrome'].extra.drained_suit == card.ability.extra.dsuit) then
                return true
            end
        end
        return false
    end,
    use = function(self, card, area, copier)
        for i=1, #G.jokers.cards do
            local c = G.jokers.cards[i]
            if c.ability and c.ability['pm_monochrome'] and c.ability['pm_monochrome'].extra.drained_suit then
                if (c.ability['pm_monochrome'].extra.drained_suit == card.ability.extra.dsuit) then
                    card_eval_status_text(c, 'extra', nil, nil, nil, {message = localize("pm_colorized"),colour = G.C.FILTER, delay = 0.45})
                    c:set_debuff(false)
                    SMODS.Stickers.pm_monochrome:apply(c, nil)
                end
            end
        end

        for i=1, #G.consumeables.cards do
            local c = G.consumeables.cards[i]
            if c.ability and c.ability['pm_monochrome'] and c.ability['pm_monochrome'].extra.drained_suit then
                if (c.ability['pm_monochrome'].extra.drained_suit == card.ability.extra.dsuit) then
                    card_eval_status_text(c, 'extra', nil, nil, nil, {message = localize("pm_colorized"),colour = G.C.FILTER, delay = 0.45})
                    c:set_debuff(false)
                    SMODS.Stickers.pm_monochrome:apply(c, nil)
                end
            end
        end
    end,
    in_pool = function(self)
        local count = 0
        if G.jokers then
            for i=1, #G.jokers.cards do
                if G.jokers.cards[i].ability['pm_monochrome'] and G.jokers.cards[i].ability['pm_monochrome'].extra.drained_turns > 0 then count = count + 1 end
            end
        end
        return SMODS.Stickers['pm_monochrome'].rate > 0 and count > 0
    end,
}

-- Red Paint
SMODS.Consumable{
    key = 'redpaint',
    set = 'Tarot',
    atlas = 'PMConsumable',
    pos = { x = 2, y = 0 },
    config = {extra = {dsuit = "Hearts"}},
    cost = 3,
    discovered = false,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = {set = 'Other', key = 'pm_monochrome', vars = {5, card.ability.extra.dsuit, colours = {G.C.SUITS[card.ability.extra.dsuit]}}}
		return { vars = { card.ability.extra.dsuit } }
    end,
    can_use = function(self, card)
        for i=1, #G.jokers.cards do
            local c = G.jokers.cards[i]
            if c.ability and c.ability['pm_monochrome'] and (c.ability['pm_monochrome'].extra.drained_suit == card.ability.extra.dsuit) then
                return true
            end
        end

        for i=1, #G.consumeables.cards do
            local c = G.consumeables.cards[i]
            if c.ability and c.ability['pm_monochrome'] and (c.ability['pm_monochrome'].extra.drained_suit == card.ability.extra.dsuit) then
                return true
            end
        end
        return false
    end,
    use = function(self, card, area, copier)
                for i=1, #G.jokers.cards do
            local c = G.jokers.cards[i]
            if c.ability and c.ability['pm_monochrome'] and c.ability['pm_monochrome'].extra.drained_suit then
                if (c.ability['pm_monochrome'].extra.drained_suit == card.ability.extra.dsuit) then
                    card_eval_status_text(c, 'extra', nil, nil, nil, {message = localize("pm_colorized"),colour = G.C.FILTER, delay = 0.45})
                    c:set_debuff(false)
                    SMODS.Stickers.pm_monochrome:apply(c, nil)
                end
            end
        end

        for i=1, #G.consumeables.cards do
            local c = G.consumeables.cards[i]
            if c.ability and c.ability['pm_monochrome'] and c.ability['pm_monochrome'].extra.drained_suit then
                if (c.ability['pm_monochrome'].extra.drained_suit == card.ability.extra.dsuit) then
                    card_eval_status_text(c, 'extra', nil, nil, nil, {message = localize("pm_colorized"),colour = G.C.FILTER, delay = 0.45})
                    c:set_debuff(false)
                    SMODS.Stickers.pm_monochrome:apply(c, nil)
                end
            end
        end
    end,
    in_pool = function(self)
        local count = 0
        if G.jokers then
            for i=1, #G.jokers.cards do
                if G.jokers.cards[i].ability['pm_monochrome'] and G.jokers.cards[i].ability['pm_monochrome'].extra.drained_turns > 0 then count = count + 1 end
            end
        end
        return SMODS.Stickers['pm_monochrome'].rate > 0 and count > 0
    end,
}

-- Yellow Paint
SMODS.Consumable{
    key = 'yellowpaint',
    set = 'Tarot',
    atlas = 'PMConsumable',
    pos = { x = 3, y = 0 },
    config = {extra = {dsuit = "Diamonds"}},
    cost = 3,
    discovered = false,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = {set = 'Other', key = 'pm_monochrome', vars = {5, card.ability.extra.dsuit, colours = {G.C.SUITS[card.ability.extra.dsuit]}}}
		return { vars = { card.ability.extra.dsuit } }
    end,
    can_use = function(self, card)
        for i=1, #G.jokers.cards do
            local c = G.jokers.cards[i]
            if c.ability and c.ability['pm_monochrome'] and (c.ability['pm_monochrome'].extra.drained_suit == card.ability.extra.dsuit) then
                return true
            end
        end

        for i=1, #G.consumeables.cards do
            local c = G.consumeables.cards[i]
            if c.ability and c.ability['pm_monochrome'] and (c.ability['pm_monochrome'].extra.drained_suit == card.ability.extra.dsuit) then
                return true
            end
        end
        return false
    end,
    use = function(self, card, area, copier)
        for i=1, #G.jokers.cards do
            local c = G.jokers.cards[i]
            if c.ability and c.ability['pm_monochrome'] and c.ability['pm_monochrome'].extra.drained_suit then
                if (c.ability['pm_monochrome'].extra.drained_suit == card.ability.extra.dsuit) then
                    card_eval_status_text(c, 'extra', nil, nil, nil, {message = localize("pm_colorized"),colour = G.C.FILTER, delay = 0.45})
                    c:set_debuff(false)
                    SMODS.Stickers.pm_monochrome:apply(c, nil)
                end
            end
        end

        for i=1, #G.consumeables.cards do
            local c = G.consumeables.cards[i]
            if c.ability and c.ability['pm_monochrome'] and c.ability['pm_monochrome'].extra.drained_suit then
                if (c.ability['pm_monochrome'].extra.drained_suit == card.ability.extra.dsuit) then
                    card_eval_status_text(c, 'extra', nil, nil, nil, {message = localize("pm_colorized"),colour = G.C.FILTER, delay = 0.45})
                    c:set_debuff(false)
                    SMODS.Stickers.pm_monochrome:apply(c, nil)
                end
            end
        end
    end,
    in_pool = function(self)
        local count = 0
        if G.jokers then
            for i=1, #G.jokers.cards do
                if G.jokers.cards[i].ability['pm_monochrome'] and G.jokers.cards[i].ability['pm_monochrome'].extra.drained_turns > 0 then count = count + 1 end
            end
        end
        return SMODS.Stickers['pm_monochrome'].rate > 0 and count > 0
    end,
}

-- Orange Paint
SMODS.Consumable{
    key = 'orangepaint',
    set = 'Tarot',
    atlas = 'PMConsumable',
    pos = { x = 4, y = 0 },
    config = {extra = {dsuit = "Diamonds", bsuit = "Hearts"}},
    cost = 5,
    discovered = false,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = {set = 'Other', key = 'pm_monochrome', vars = {5, card.ability.extra.dsuit, colours = {G.C.SUITS[card.ability.extra.dsuit]}}}
		return { vars = { card.ability.extra.dsuit, card.ability.extra.bsuit } }
    end,
    can_use = function(self, card)
        for i=1, #G.jokers.cards do
            local c = G.jokers.cards[i]
            if c.ability and c.ability['pm_monochrome'] and (c.ability['pm_monochrome'].extra.drained_suit == card.ability.extra.dsuit or c.ability['pm_monochrome'].extra.drained_suit == card.ability.extra.bsuit) then
                return true
            end
        end

        for i=1, #G.consumeables.cards do
            local c = G.consumeables.cards[i]
            if c.ability and c.ability['pm_monochrome'] and (c.ability['pm_monochrome'].extra.drained_suit == card.ability.extra.dsuit or c.ability['pm_monochrome'].extra.drained_suit == card.ability.extra.bsuit) then
                return true
            end
        end
        return false
    end,
    use = function(self, card, area, copier)
        for i=1, #G.jokers.cards do
            local c = G.jokers.cards[i]
            if c.ability and c.ability['pm_monochrome'] and c.ability['pm_monochrome'].extra.drained_suit then
                if (c.ability['pm_monochrome'].extra.drained_suit == card.ability.extra.dsuit or c.ability['pm_monochrome'].extra.drained_suit == card.ability.extra.bsuit) then
                    card_eval_status_text(c, 'extra', nil, nil, nil, {message = localize("pm_colorized"),colour = G.C.FILTER, delay = 0.45})
                    c:set_debuff(false)
                    SMODS.Stickers.pm_monochrome:apply(c, nil)
                end
            end
        end

        for i=1, #G.consumeables.cards do
            local c = G.consumeables.cards[i]
            if c.ability and c.ability['pm_monochrome'] and c.ability['pm_monochrome'].extra.drained_suit then
                if (c.ability['pm_monochrome'].extra.drained_suit == card.ability.extra.dsuit or c.ability['pm_monochrome'].extra.drained_suit == card.ability.extra.bsuit) then
                    card_eval_status_text(c, 'extra', nil, nil, nil, {message = localize("pm_colorized"),colour = G.C.FILTER, delay = 0.45})
                    c:set_debuff(false)
                    SMODS.Stickers.pm_monochrome:apply(c, nil)
                end
            end
        end
    end,
    in_pool = function(self)
        local count = 0
        if G.jokers then
            for i=1, #G.jokers.cards do
                if G.jokers.cards[i].ability['pm_monochrome'] and G.jokers.cards[i].ability['pm_monochrome'].extra.drained_turns > 0 then count = count + 1 end
            end
        end
        return SMODS.Stickers['pm_monochrome'].rate > 0 and count > 0
    end,
}

-- Green Paint
SMODS.Consumable{
    key = 'greenpaint',
    set = 'Tarot',
    atlas = 'PMConsumable',
    pos = { x = 5, y = 0 },
    config = {extra = {dsuit = "Diamonds", bsuit = "Clubs"}},
    cost = 5,
    discovered = false,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = {set = 'Other', key = 'pm_monochrome', vars = {5, card.ability.extra.dsuit, colours = {G.C.SUITS[card.ability.extra.dsuit]}}}
		return { vars = { card.ability.extra.dsuit, card.ability.extra.bsuit } }
    end,
    can_use = function(self, card)
        for i=1, #G.jokers.cards do
            local c = G.jokers.cards[i]
            if c.ability and c.ability['pm_monochrome'] and (c.ability['pm_monochrome'].extra.drained_suit == card.ability.extra.dsuit or c.ability['pm_monochrome'].extra.drained_suit == card.ability.extra.bsuit) then
                return true
            end
        end

        for i=1, #G.consumeables.cards do
            local c = G.consumeables.cards[i]
            if c.ability and c.ability['pm_monochrome'] and (c.ability['pm_monochrome'].extra.drained_suit == card.ability.extra.dsuit or c.ability['pm_monochrome'].extra.drained_suit == card.ability.extra.bsuit) then
                return true
            end
        end
        return false
    end,
    use = function(self, card, area, copier)
        for i=1, #G.jokers.cards do
            local c = G.jokers.cards[i]
            if c.ability and c.ability['pm_monochrome'] and c.ability['pm_monochrome'].extra.drained_suit then
                if (c.ability['pm_monochrome'].extra.drained_suit == card.ability.extra.dsuit or c.ability['pm_monochrome'].extra.drained_suit == card.ability.extra.bsuit) then
                    card_eval_status_text(c, 'extra', nil, nil, nil, {message = localize("pm_colorized"),colour = G.C.FILTER, delay = 0.45})
                    c:set_debuff(false)
                    SMODS.Stickers.pm_monochrome:apply(c, nil)
                end
            end
        end

        for i=1, #G.consumeables.cards do
            local c = G.consumeables.cards[i]
            if c.ability and c.ability['pm_monochrome'] and c.ability['pm_monochrome'].extra.drained_suit then
                if (c.ability['pm_monochrome'].extra.drained_suit == card.ability.extra.dsuit or c.ability['pm_monochrome'].extra.drained_suit == card.ability.extra.bsuit) then
                    card_eval_status_text(c, 'extra', nil, nil, nil, {message = localize("pm_colorized"),colour = G.C.FILTER, delay = 0.45})
                    c:set_debuff(false)
                    SMODS.Stickers.pm_monochrome:apply(c, nil)
                end
            end
        end
    end,
    in_pool = function(self)
        local count = 0
        if G.jokers then
            for i=1, #G.jokers.cards do
                if G.jokers.cards[i].ability['pm_monochrome'] and G.jokers.cards[i].ability['pm_monochrome'].extra.drained_turns > 0 then count = count + 1 end
            end
        end
        return SMODS.Stickers['pm_monochrome'].rate > 0 and count > 0
    end,
}

-- Purple Paint
SMODS.Consumable{
    key = 'purplepaint',
    set = 'Tarot',
    atlas = 'PMConsumable',
    pos = { x = 0, y = 1 },
    config = {extra = {dsuit = "Clubs", bsuit = "Hearts"}},
    cost = 5,
    discovered = false,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = {set = 'Other', key = 'pm_monochrome', vars = {5, card.ability.extra.dsuit, colours = {G.C.SUITS[card.ability.extra.dsuit]}}}
		return { vars = { card.ability.extra.dsuit, card.ability.extra.bsuit } }
    end,
    can_use = function(self, card)
        for i=1, #G.jokers.cards do
            local c = G.jokers.cards[i]
            if c.ability and c.ability['pm_monochrome'] and (c.ability['pm_monochrome'].extra.drained_suit == card.ability.extra.dsuit or c.ability['pm_monochrome'].extra.drained_suit == card.ability.extra.bsuit) then
                return true
            end
        end

        for i=1, #G.consumeables.cards do
            local c = G.consumeables.cards[i]
            if c.ability and c.ability['pm_monochrome'] and (c.ability['pm_monochrome'].extra.drained_suit == card.ability.extra.dsuit or c.ability['pm_monochrome'].extra.drained_suit == card.ability.extra.bsuit) then
                return true
            end
        end
        return false
    end,
    use = function(self, card, area, copier)
        for i=1, #G.jokers.cards do
            local c = G.jokers.cards[i]
            if c.ability and c.ability['pm_monochrome'] and c.ability['pm_monochrome'].extra.drained_suit then
                if (c.ability['pm_monochrome'].extra.drained_suit == card.ability.extra.dsuit or c.ability['pm_monochrome'].extra.drained_suit == card.ability.extra.bsuit) then
                    card_eval_status_text(c, 'extra', nil, nil, nil, {message = localize("pm_colorized"),colour = G.C.FILTER, delay = 0.45})
                    c:set_debuff(false)
                    SMODS.Stickers.pm_monochrome:apply(c, nil)
                end
            end
        end

        for i=1, #G.consumeables.cards do
            local c = G.consumeables.cards[i]
            if c.ability and c.ability['pm_monochrome'] and c.ability['pm_monochrome'].extra.drained_suit then
                if (c.ability['pm_monochrome'].extra.drained_suit == card.ability.extra.dsuit or c.ability['pm_monochrome'].extra.drained_suit == card.ability.extra.bsuit) then
                    card_eval_status_text(c, 'extra', nil, nil, nil, {message = localize("pm_colorized"),colour = G.C.FILTER, delay = 0.45})
                    c:set_debuff(false)
                    SMODS.Stickers.pm_monochrome:apply(c, nil)
                end
            end
        end
    end,
    in_pool = function(self)
        local count = 0
        if G.jokers then
            for i=1, #G.jokers.cards do
                if G.jokers.cards[i].ability['pm_monochrome'] and G.jokers.cards[i].ability['pm_monochrome'].extra.drained_turns > 0 then count = count + 1 end
            end
        end
        return SMODS.Stickers['pm_monochrome'].rate > 0 and count > 0
    end,
}

-- Pink Paint
SMODS.Consumable{
    key = 'pinkpaint',
    set = 'Tarot',
    atlas = 'PMConsumable',
    pos = { x = 1, y = 1 },
    config = {extra = {dsuit = "Spades", bsuit = "Hearts"}},
    cost = 5,
    discovered = false,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = {set = 'Other', key = 'pm_monochrome', vars = {5, card.ability.extra.dsuit, colours = {G.C.SUITS[card.ability.extra.dsuit]}}}
		return { vars = { card.ability.extra.dsuit, card.ability.extra.bsuit } }
    end,
    can_use = function(self, card)
        for i=1, #G.jokers.cards do
            local c = G.jokers.cards[i]
            if c.ability and c.ability['pm_monochrome'] and (c.ability['pm_monochrome'].extra.drained_suit == card.ability.extra.dsuit or c.ability['pm_monochrome'].extra.drained_suit == card.ability.extra.bsuit) then
                return true
            end
        end

        for i=1, #G.consumeables.cards do
            local c = G.consumeables.cards[i]
            if c.ability and c.ability['pm_monochrome'] and (c.ability['pm_monochrome'].extra.drained_suit == card.ability.extra.dsuit or c.ability['pm_monochrome'].extra.drained_suit == card.ability.extra.bsuit) then
                return true
            end
        end
        return false
    end,
    use = function(self, card, area, copier)
        for i=1, #G.jokers.cards do
            local c = G.jokers.cards[i]
            if c.ability and c.ability['pm_monochrome'] and c.ability['pm_monochrome'].extra.drained_suit then
                if (c.ability['pm_monochrome'].extra.drained_suit == card.ability.extra.dsuit or c.ability['pm_monochrome'].extra.drained_suit == card.ability.extra.bsuit) then
                    card_eval_status_text(c, 'extra', nil, nil, nil, {message = localize("pm_colorized"),colour = G.C.FILTER, delay = 0.45})
                    c:set_debuff(false)
                    SMODS.Stickers.pm_monochrome:apply(c, nil)
                end
            end
        end

        for i=1, #G.consumeables.cards do
            local c = G.consumeables.cards[i]
            if c.ability and c.ability['pm_monochrome'] and c.ability['pm_monochrome'].extra.drained_suit then
                if (c.ability['pm_monochrome'].extra.drained_suit == card.ability.extra.dsuit or c.ability['pm_monochrome'].extra.drained_suit == card.ability.extra.bsuit) then
                    card_eval_status_text(c, 'extra', nil, nil, nil, {message = localize("pm_colorized"),colour = G.C.FILTER, delay = 0.45})
                    c:set_debuff(false)
                    SMODS.Stickers.pm_monochrome:apply(c, nil)
                end
            end
        end
    end,
    in_pool = function(self)
        local count = 0
        if G.jokers then
            for i=1, #G.jokers.cards do
                if G.jokers.cards[i].ability['pm_monochrome'] and G.jokers.cards[i].ability['pm_monochrome'].extra.drained_turns > 0 then count = count + 1 end
            end
        end
        return SMODS.Stickers['pm_monochrome'].rate > 0 and count > 0
    end,
}

-- Navy Paint
SMODS.Consumable{
    key = 'navypaint',
    set = 'Tarot',
    atlas = 'PMConsumable',
    pos = { x = 2, y = 1 },
    config = {extra = {dsuit = "Spades", bsuit = "Clubs"}},
    cost = 5,
    discovered = false,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = {set = 'Other', key = 'pm_monochrome', vars = {5, card.ability.extra.dsuit, colours = {G.C.SUITS[card.ability.extra.dsuit]}}}
		return { vars = { card.ability.extra.dsuit, card.ability.extra.bsuit } }
    end,
    can_use = function(self, card)
        for i=1, #G.jokers.cards do
            local c = G.jokers.cards[i]
            if c.ability and c.ability['pm_monochrome'] and (c.ability['pm_monochrome'].extra.drained_suit == card.ability.extra.dsuit or c.ability['pm_monochrome'].extra.drained_suit == card.ability.extra.bsuit) then
                return true
            end
        end

        for i=1, #G.consumeables.cards do
            local c = G.consumeables.cards[i]
            if c.ability and c.ability['pm_monochrome'] and (c.ability['pm_monochrome'].extra.drained_suit == card.ability.extra.dsuit or c.ability['pm_monochrome'].extra.drained_suit == card.ability.extra.bsuit) then
                return true
            end
        end
        return false
    end,
    use = function(self, card, area, copier)
        for i=1, #G.jokers.cards do
            local c = G.jokers.cards[i]
            if c.ability and c.ability['pm_monochrome'] and c.ability['pm_monochrome'].extra.drained_suit then
                if (c.ability['pm_monochrome'].extra.drained_suit == card.ability.extra.dsuit or c.ability['pm_monochrome'].extra.drained_suit == card.ability.extra.bsuit) then
                    card_eval_status_text(c, 'extra', nil, nil, nil, {message = localize("pm_colorized"),colour = G.C.FILTER, delay = 0.45})
                    c:set_debuff(false)
                    SMODS.Stickers.pm_monochrome:apply(c, nil)
                end
            end
        end

        for i=1, #G.consumeables.cards do
            local c = G.consumeables.cards[i]
            if c.ability and c.ability['pm_monochrome'] and c.ability['pm_monochrome'].extra.drained_suit then
                if (c.ability['pm_monochrome'].extra.drained_suit == card.ability.extra.dsuit or c.ability['pm_monochrome'].extra.drained_suit == card.ability.extra.bsuit) then
                    card_eval_status_text(c, 'extra', nil, nil, nil, {message = localize("pm_colorized"),colour = G.C.FILTER, delay = 0.45})
                    c:set_debuff(false)
                    SMODS.Stickers.pm_monochrome:apply(c, nil)
                end
            end
        end
    end,
    in_pool = function(self)
        local count = 0
        if G.jokers then
            for i=1, #G.jokers.cards do
                if G.jokers.cards[i].ability['pm_monochrome'] and G.jokers.cards[i].ability['pm_monochrome'].extra.drained_turns > 0 then count = count + 1 end
            end
        end
        return SMODS.Stickers['pm_monochrome'].rate > 0 and count > 0
    end,
}

-- Lemon Paint
SMODS.Consumable{
    key = 'lemonpaint',
    set = 'Tarot',
    atlas = 'PMConsumable',
    pos = { x = 3, y = 1 },
    config = {extra = {dsuit = "Spades", bsuit = "Diamonds"}},
    cost = 5,
    discovered = false,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = {set = 'Other', key = 'pm_monochrome', vars = {5, card.ability.extra.dsuit, colours = {G.C.SUITS[card.ability.extra.dsuit]}}}
		return { vars = { card.ability.extra.dsuit, card.ability.extra.bsuit } }
    end,
    can_use = function(self, card)
        for i=1, #G.jokers.cards do
            local c = G.jokers.cards[i]
            if c.ability and c.ability['pm_monochrome'] and (c.ability['pm_monochrome'].extra.drained_suit == card.ability.extra.dsuit or c.ability['pm_monochrome'].extra.drained_suit == card.ability.extra.bsuit) then
                return true
            end
        end

        for i=1, #G.consumeables.cards do
            local c = G.consumeables.cards[i]
            if c.ability and c.ability['pm_monochrome'] and (c.ability['pm_monochrome'].extra.drained_suit == card.ability.extra.dsuit or c.ability['pm_monochrome'].extra.drained_suit == card.ability.extra.bsuit) then
                return true
            end
        end
        return false
    end,
    use = function(self, card, area, copier)
        for i=1, #G.jokers.cards do
            local c = G.jokers.cards[i]
            if c.ability and c.ability['pm_monochrome'] and c.ability['pm_monochrome'].extra.drained_suit then
                if (c.ability['pm_monochrome'].extra.drained_suit == card.ability.extra.dsuit or c.ability['pm_monochrome'].extra.drained_suit == card.ability.extra.bsuit) then
                    card_eval_status_text(c, 'extra', nil, nil, nil, {message = localize("pm_colorized"),colour = G.C.FILTER, delay = 0.45})
                    c:set_debuff(false)
                    SMODS.Stickers.pm_monochrome:apply(c, nil)
                end
            end
        end

        for i=1, #G.consumeables.cards do
            local c = G.consumeables.cards[i]
            if c.ability and c.ability['pm_monochrome'] and c.ability['pm_monochrome'].extra.drained_suit then
                if (c.ability['pm_monochrome'].extra.drained_suit == card.ability.extra.dsuit or c.ability['pm_monochrome'].extra.drained_suit == card.ability.extra.bsuit) then
                    card_eval_status_text(c, 'extra', nil, nil, nil, {message = localize("pm_colorized"),colour = G.C.FILTER, delay = 0.45})
                    c:set_debuff(false)
                    SMODS.Stickers.pm_monochrome:apply(c, nil)
                end
            end
        end

        if pseudorandom('lemon') < 0.02 then
            card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("pm_easter_egg"),colour = G.C.MONEY, delay = 0.45})
            card:juice_up()
            local t = {
                key = 'j_pm_lemon'
            }
            local _card = SMODS.add_card(t)
            _card:set_edition('e_negative')
            SMODS.Stickers.pm_monochrome:apply(_card, nil)
        end
    end,
    in_pool = function(self)
        local count = 0
        if G.jokers then
            for i=1, #G.jokers.cards do
                if G.jokers.cards[i].ability['pm_monochrome'] and G.jokers.cards[i].ability['pm_monochrome'].extra.drained_turns > 0 then count = count + 1 end
            end
        end
        return SMODS.Stickers['pm_monochrome'].rate > 0 and count > 0
    end,
}
----------------------------------------------
------------MOD CODE END----------------------