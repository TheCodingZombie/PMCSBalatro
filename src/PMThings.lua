----TABLE OF CONTENTS-------------------------



------------MOD CODE -------------------------

-- Fire Extinguisher
SMODS.Joker{
    key = 'fire_extinguisher',
    rarity = 'pm_thing',
    atlas = 'Things',
    discovered = false,
    cost = 9,
    blueprint_compat = true,
    pos = { x = 0, y = 0 },
    config = { extra = {} },
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    calculate = function(self, card, context)
        
        -- disables itself if it's the first joker
        if context.first_hand_drawn or context.before and context.cardarea == G.jokers and not context.blueprint then
            if card == G.jokers.cards[1] then
                G.E_MANAGER:add_event(Event({
                    func = function()
                        card.debuff = true
                        return true
                    end
                }))
                return {
                    message = localize('k_debuffed'),
                    colour = G.C.RED,
                    card = card
                }
            end
        end

        if context.cards_destroyed then
            for k, val in ipairs(context.glass_shattered) do
                G.playing_card = (G.playing_card and G.playing_card + 1) or 1
                local _card = copy_card(val, nil, nil, G.playing_card)
                _card:add_to_deck()
                G.deck.config.card_limit = G.deck.config.card_limit + 1
                G.deck:emplace(_card)
                table.insert(G.playing_cards, _card)
                playing_card_joker_effects({true})
                
                G.E_MANAGER:add_event(Event({
                func = function() 
                    _card:start_materialize()
                    return true
                end}))
                card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('k_copied_ex'), colour = G.C.FILTER})
            end
        elseif context.remove_playing_cards then
            card.ability.extra.tick = false
            for k, val in ipairs(context.removed) do      
                G.playing_card = (G.playing_card and G.playing_card + 1) or 1
                local _card = copy_card(val, nil, nil, G.playing_card)
                card:add_to_deck()
                G.deck.config.card_limit = G.deck.config.card_limit + 1
                G.deck:emplace(_card)
                table.insert(G.playing_cards, _card)
                playing_card_joker_effects({true})
                
                G.E_MANAGER:add_event(Event({
                func = function() 
                    _card:start_materialize()
                    
                    return true
                end}))
                card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('k_copied_ex'), colour = G.C.FILTER})
            end
        end

    end
}

-- Fan 
SMODS.Joker{
    key = 'fan',
    rarity = 'pm_thing',
    atlas = 'Things',
    discovered = false,
    cost = 9,
    blueprint_compat = true,
    pos = { x = 1, y = 0 },
    config = { extra = {chips = 0, mult = 0, chip_gain = 10, mult_gain = 1} },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.chip_gain, card.ability.extra.mult_gain, card.ability.extra.chips, card.ability.extra.mult} }
    end,
    calculate = function(self, card, context)
        
        if context.before and context.cardarea == G.jokers and not context.blueprint then
            for k, c in ipairs(context.scoring_hand) do
                c:set_ability(SMODS.poll_enhancement({guaranteed = true}), nil, true)              
                G.E_MANAGER:add_event(Event({
                    func = function()
                        c:juice_up()
                        return true
                    end
                }))
            end

            return{
                message = localize("pm_upgraded"),
                card = card
            }
        end      

        if context.joker_main then
            return{
                chips = card.ability.extra.chips,
                mult = card.ability.extra.mult,
                card = card
            }
        end
    end,
    update = function(self, card, dt)
        if G.STAGE == G.STAGES.RUN then
            local enhanced_tally = 0
            for k, v in pairs(G.playing_cards) do
                if v.config.center ~= G.P_CENTERS.c_base then enhanced_tally = enhanced_tally + 1 end
            end
            card.ability.extra.chips = enhanced_tally * card.ability.extra.chip_gain
            card.ability.extra.mult = enhanced_tally
        else
            card.ability.extra.chips = 0
            card.ability.extra.mult = 0
        end
    end
}

-- Plunger
SMODS.Joker{
    key = 'plunger',
    rarity = 'pm_thing',
    atlas = 'Things',
    discovered = false,
    cost = 9,
    blueprint_compat = true,
    pos = { x = 2, y = 0 },
    config = { extra = {mult = 0, mult_gain = 15} },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.mult_gain, card.ability.extra.mult} }
    end,
    calculate = function(self, card, context)
        
        if context.before and context.cardarea == G.jokers and next(context.poker_hands["Flush"]) and not context.blueprint then
            local _card = context.poker_hands["Flush"][1][1]
            if not SMODS.has_no_suit(_card) then
                for i=1, #context.full_hand do
                    if not context.full_hand[i]:is_suit(_card.base.suit) then
                        card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_gain
                        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize("pm_upgraded")})
                    end
                end
            end            
        end

        if context.joker_main then
            return {
                mult = card.ability.extra.mult,
                card = card
            }
        end
    end
}

-- Lemon 
SMODS.Joker{
    key = 'lemon',
    rarity = 'pm_thing',
    atlas = 'Things',
    discovered = false,
    cost = 9,
    blueprint_compat = true,
    pos = { x = 3, y = 0 },
    config = { extra = {money = 1, non_gold = 0} },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.m_gold
        return { vars = {card.ability.extra.money} }
    end,
    calculate = function(self, card, context)
        
        -- check if a gold card exists, then make the rest not gold
        if context.before and context.cardarea == G.jokers and not context.blueprint then
            local active = false
            for k, c in ipairs(context.scoring_hand) do
                if c.ability.name == 'Gold Card' then
                    active = true
                    break
                end
            end

            if active then
                for k, c in ipairs(context.scoring_hand) do
                    if c.ability.name ~= 'Gold Card' then
                        card.ability.extra.non_gold = card.ability.extra.non_gold + 1
                        c:set_ability(G.P_CENTERS.m_gold, nil, true)                       
                        G.E_MANAGER:add_event(Event({
                            func = function()
                                c:juice_up()
                                return true
                            end
                        }))
                    end
                end
                return{
                    message = localize("pm_lemony"),
                    card = card
                }
            end
        end

        if context.joker_main and card.ability.extra.non_gold then        
            local dollars = card.ability.extra.money * card.ability.extra.non_gold
            ease_dollars(dollars)
            card.ability.extra.non_gold = 0
            return{
                message = "$"..dollars,
                card = card
            }
        end
    end
}

-- Cat-O-Luck
SMODS.Joker{
    key = 'catoluck',
    rarity = 'pm_thing',
    atlas = 'Things',
    discovered = false,
    cost = 9,
    blueprint_compat = true,
    pos = { x = 4, y = 0 },
    config = { extra = {odds = 10} },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.m_lucky
        return { vars = {(G.GAME.probabilities.normal or 1), card.ability.extra.odds} }
    end,
    calculate = function(self, card, context)
        
        if context.before and context.cardarea == G.jokers and not context.blueprint then
            local active = false
            for k, c in ipairs(context.scoring_hand) do
                if pseudorandom('cat') < (G.GAME.probabilities.normal / card.ability.extra.odds) then
                    active = true
                    c:set_ability(G.P_CENTERS.m_lucky, nil, true)                       
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            c:juice_up()
                            return true
                        end
                    }))
                end
            end

            if active then
                return{
                    message = localize("pm_upgraded"),
                    card = card
                }
            end
        end
    end
}

-- Piggy Bank
SMODS.Joker{
    key = 'piggybank',
    rarity = 'pm_thing',
    atlas = 'Things',
    discovered = false,
    cost = 9,
    blueprint_compat = true,
    pos = { x = 5, y = 0 },
    config = { extra = {sell_gain = 2} },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.sell_gain} }
    end,
    calculate = function(self, card, context)
        -- when buying, increase card value by $2
        if context.buying_card or context.open_booster or context.reroll_shop then
            card.ability.extra_value = card.ability.extra_value + card.ability.extra.sell_gain
            card:set_cost()
            return{
                message = localize("k_val_up"),
                color = G.C.MONEY,
                card = card
            }
        end
    end
}

-- Bone
SMODS.Joker{
    key = 'bone',
    rarity = 'pm_thing',
    atlas = 'Things',
    discovered = false,
    cost = 9,
    blueprint_compat = true,
    pos = { x = 6, y = 0 },
    config = { extra = {hand_chips = 50} },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.m_stone
        return { vars = {card.ability.extra.hand_chips} }
    end,
    calculate = function(self, card, context)
        if context.before and context.cardarea == G.jokers and not context.blueprint then
            local active = false
            for k, c in ipairs(context.scoring_hand) do
                if c:is_face() then
                    active = true
                    c:set_ability(G.P_CENTERS.m_stone, nil, true)                       
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            c:juice_up()
                            return true
                        end
                    }))
                end
            end
        
            if active then
                return{
                    message = localize("pm_upgraded"),
                    card = card
                }
            end
        end

        if context.joker_main then
            local hand_chip_total = 0
            for i=1, #G.hand.cards do
                if G.hand.cards[i].config.center == G.P_CENTERS.m_stone then
                    hand_chip_total = hand_chip_total + card.ability.extra.hand_chips
                    card_eval_status_text(G.hand.cards[i], 'extra', nil, nil, nil, {message = "+50 Chips", colour = G.C.CHIPS})
                end
            end

            return{
                message = hand_chip_total.." Total",
                chips = hand_chip_total,
                card = card
            }
        end
    end
}

-- Bottle Opener
SMODS.Joker{
    key = 'bottle',
    rarity = 'pm_thing',
    atlas = 'Things',
    discovered = false,
    cost = 9,
    blueprint_compat = true,
    pos = { x = 7, y = 0 },
    config = { extra = {more = 1} },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.more} }
    end
}

-- Ice Pick
SMODS.Joker{
    key = 'icepick',
    rarity = 'pm_thing',
    atlas = 'Things',
    discovered = false,
    cost = 9,
    blueprint_compat = true,
    pos = { x = 0, y = 1 },
    config = { extra = {mult = 0, mult_gain = 7} },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.m_pm_frozen
        return { vars = {card.ability.extra.mult_gain, card.ability.extra.mult} }
    end,
    calculate = function(self, card, context)

        -- Shake while first card is active
        if context.first_hand_drawn then
            if not context.blueprint and G.GAME.current_round.hands_played <= 0 then
                local eval = function() return G.GAME.current_round.hands_played == 0 and not G.RESET_JIGGLES end
                juice_card_until(card, eval, true)
            end
        end

        -- The 'pick' part of the ability
        if context.destroying_card and not context.blueprint then
            if context.destroy_card.config.center == G.P_CENTERS.m_pm_frozen and G.GAME.current_round.hands_played == 0 then
                card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_gain
                return {
                    message = pm_ice_spear,
                    remove = true
                }
            end
        end

        if context.joker_main then
            return {
                mult = card.ability.extra.mult,
                card = card
            }
        end
    end
}

-- Balloons
SMODS.Joker{
    key = 'balloons',
    rarity = 'pm_thing',
    atlas = 'Things',
    discovered = false,
    cost = 9,
    blueprint_compat = true,
    pos = { x = 1, y = 1 },
    config = { extra = { red = false, blue = false, yellow = false, rounds_left = 3, retriggers = 1, money = 2, odds = 5 } },
    loc_vars = function(self, info_queue, card)
        if card.ability.extra.red then info_queue[#info_queue+1] = {set = 'Other', key = 'pm_red'} end
        if card.ability.extra.blue then info_queue[#info_queue+1] = {set = 'Other', key = 'pm_blue'} end
        if card.ability.extra.yellow then info_queue[#info_queue+1] = {set = 'Other', key = 'pm_yellow'} end
        return { vars = { card.ability.extra.rounds_left } }
    end,
    calculate = function(self, card, context)
        
        -- getting abilities at the end of three rounds
        if context.end_of_round and context.cardarea == G.jokers and not card.debuff and not card.ability.extra.yellow then
            if card.ability.extra.rounds_left > 1 then
                card.ability.extra.rounds_left = card.ability.extra.rounds_left - 1
                card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = card.ability.extra.rounds_left.." Left!"})
            else
                card.ability.extra.rounds_left = 3
                card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize("pm_upgraded")})

                if card.ability.extra.red and card.ability.extra.blue then card.ability.extra.yellow = true
                elseif card.ability.extra.red then card.ability.extra.blue = true
                else card.ability.extra.red = true end
            end
        end

        -- red ability (Retrigger Hearts)
        if card.ability.extra.red then
            if context.repetition and context.cardarea == G.play and not context.other_card.debuff then
                if context.other_card:is_suit("Hearts") then
                    return {
                        message = localize('k_again_ex'),
                        repetitions = card.ability.extra.retriggers,
                        card = context.other_card
                    }
                end
            end
        end        

        -- blue ability (Gain a random planet card at the end of the round)
        if card.ability.extra.blue then
            if context.end_of_round and context.cardarea == G.jokers and #G.consumeables.cards < G.consumeables.config.card_limit then
                local t = {
                    set = 'Planet',
                    area = G.consumeables,
                    no_edition = true
                }
                local m = {}
                -- gets the most recently played hand
                if G.GAME.last_hand_played then
                    for k, v in pairs(G.P_CENTER_POOLS.Planet) do
                        if v.config.hand_type == G.GAME.last_hand_played then
                            m = {
                                key = v.key,
                                no_edition = true
                            }
                        end
                    end
                end

                -- 1 in 3 chance to get the last played hand
                if pseudorandom('blue') < (G.GAME.probabilities.normal / 3) and G.GAME.last_hand_played then
                    SMODS.add_card(m)
                else
                    SMODS.add_card(t)
                end
            end
        end

        -- yellow ability (Give Gold)
        if card.ability.extra.yellow then
            if context.individual and context.cardarea == G.play and not context.other_card.debuff then
                if context.other_card:is_suit("Diamonds") then
                    ease_dollars(card.ability.extra.money)
                    if pseudorandom('yellow') < (G.GAME.probabilities.normal / card.ability.extra.odds) then
                        context.other_card:set_seal('Gold', nil, true)
                    end
                    return {
                        message = "$"..card.ability.extra.money,
                        color = G.C.MONEY,
                    }
                end
            end
        end
    end
}

-- Teapot
SMODS.Joker{
    key = 'teapot',
    rarity = 'pm_thing',
    atlas = 'Things',
    discovered = false,
    cost = 9,
    blueprint_compat = false,
    pos = { x = 2, y = 1 },
    config = { extra = {odds = 4, mult = 80, destroy = false} },
    loc_vars = function(self, info_queue, card)
        return { vars = {(G.GAME.probabilities.normal or 1), card.ability.extra.odds, card.ability.extra.mult} }
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            if string.find(context.scoring_name, "Flush") and (pseudorandom('teapot') < (G.GAME.probabilities.normal / card.ability.extra.odds)) then
                card.ability.extra.destroy = true
                return {
                    mult = card.ability.extra.mult,
                    card = card
                }
            end
		end

        if context.after and card.ability.extra.destroy then
            card:shatter()
        end
    end
}

-- Turnip
SMODS.Joker{
    key = 'turnip',
    rarity = 'pm_thing',
    atlas = 'Things',
    discovered = false,
    cost = 9,
    blueprint_compat = false,
    pos = { x = 3, y = 1 },
    config = { extra = {min = 1, max = 20} },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.min, card.ability.extra.max} }
    end,
    calculate = function(self, card, context)
        if context.end_of_round and context.cardarea == G.jokers then
            card.ability.extra_value = math.floor(pseudorandom('turnip', card.ability.extra.min, card.ability.extra.max)) - 4
            card:set_cost()
            return {
                message = localize('k_val_up'),
                colour = G.C.MONEY,
                card = card,
            }
        end
    end
}

-- Instant Camera
SMODS.Joker{
    key = 'instantcamera',
    rarity = 'pm_thing',
    atlas = 'Things',
    discovered = false,
    cost = 9,
    blueprint_compat = true,
    pos = { x = 4, y = 1 },
    config = { extra = {Xmult = 2.0, odds = 4} },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.m_glass
        return { vars = {(G.GAME.probabilities.normal or 1), card.ability.extra.odds, card.ability.extra.Xmult} }
    end,
    calculate = function(self, card, context)
        if context.destroy_card and context.cardarea == G.hand and not context.blueprint then
            if context.destroy_card.ability.name == 'Glass Card' and not context.destroy_card.debuff then
                if pseudorandom('camera') < (G.GAME.probabilities.normal / card.ability.extra.odds) then
                    return {
                        x_mult = card.ability.extra.Xmult,
                        remove = true,
                    }
                end
            end
        end
    end
}

-- Basin
SMODS.Joker{
    key = 'basin',
    rarity = 'pm_thing',
    atlas = 'Things',
    discovered = false,
    cost = 9,
    blueprint_compat = true,
    pos = { x = 5, y = 1 },
    config = { extra = {odds = 5, Xmult = 1.0, Xmult_gain = 0.2} },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.m_gold
        return { vars = {(G.GAME.probabilities.normal or 1), card.ability.extra.odds, card.ability.extra.Xmult_gain, card.ability.extra.Xmult } }
    end,
    calculate = function(self, card, context)        
        
        if context.before and context.cardarea == G.jokers and not context.blueprint and string.find(context.scoring_name, "Flush") then
            local active = false
            for k, c in ipairs(context.scoring_hand) do
                if pseudorandom('basin') < (G.GAME.probabilities.normal / card.ability.extra.odds) then
                    active = true
                    c:set_ability(G.P_CENTERS.m_gold, nil, true)                       
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            c:juice_up()
                            return true
                        end
                    }))
                end
            end

            if active then
                return{
                    message = localize("pm_upgraded"),
                    card = card
                }
            end
        end
        
        if context.joker_main then
            return{
                xmult = card.ability.extra.Xmult,
                card = card
            }
        end
    end,
    update = function(self, card, dt)
        if G.STAGE == G.STAGES.RUN then
            local gold_tally = 0
            for k, v in pairs(G.playing_cards) do
                if v.config.center == G.P_CENTERS.m_gold then gold_tally = gold_tally + 1 end
            end
            card.ability.extra.Xmult = (gold_tally * card.ability.extra.Xmult_gain) + 1
        else
            card.ability.extra.Xmult = 1
        end
    end
}

-- Battery
SMODS.Joker{
    key = 'battery',
    rarity = 'pm_thing',
    atlas = 'Things',
    discovered = false,
    cost = 9,
    blueprint_compat = true,
    pos = { x = 6, y = 1 },
    config = { extra = {Xmult = 1.0, Xmult_gain = 0.1, active = false} },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.m_steel
        return { vars = { card.ability.extra.Xmult_gain, card.ability.extra.Xmult } }
    end,
    calculate = function(self, card, context)        
        
        if context.before and context.cardarea == G.jokers and not context.blueprint then
            local streak_lost = true
            local i = 1
            for k, c in ipairs(context.scoring_hand) do
                if c.ability.name == 'Steel Card' then
                    streak_lost = false
                    card.ability.extra.active = true
                    break
                end
                i = i + 1
            end

            if streak_lost then
                card.ability.extra.Xmult = 1.0
                card.ability.extra.active = false
                return{
                    message = localize("pm_lost"),
                    card = card
                }
            end
        end

        if context.individual and context.cardarea == G.play and not context.blueprint then
            if not context.end_of_round and not context.before and not context.after and not context.other_card.debuff then
                if context.other_card.ability.name == 'Steel Card' then
                    card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.Xmult_gain
                    return {
                        message = localize("pm_zapped"),
                        card = context.other_card
                    }
                end
            end
        end
        
        if context.joker_main then
            card.ability.extra.active = false
            return{
                xmult = card.ability.extra.Xmult,
                card = card
            }
        end
    end
}

-- Compass
SMODS.Joker{
    key = 'compass',
    rarity = 'pm_thing',
    atlas = 'Things',
    discovered = false,
    cost = 9,
    blueprint_compat = true,
    pos = { x = 7, y = 1 },
    config = { extra = {} },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.m_steel
        return { vars = { } }
    end,
    calculate = function(self, card, context)        
        
        if context.before and context.cardarea == G.jokers and not context.blueprint then
            -- check for leftmost steel card
            local active = false
            local _card = nil
            for i=1, #context.scoring_hand do
                if context.scoring_hand[i].ability.name == 'Steel Card' then
                    active = true
                    _card = context.scoring_hand[i]
                    break
                end
            end

            -- if there is one, convert everything else to that card
            if active then
                local rank_suffix = _card:get_id()
                if rank_suffix < 11 then rank_suffix = tostring(rank_suffix)
                elseif rank_suffix == 11 then rank_suffix = 'Jack'
                elseif rank_suffix == 12 then rank_suffix = 'Queen'
                elseif rank_suffix == 13 then rank_suffix = 'King'
                elseif rank_suffix == 14 then rank_suffix = 'Ace'
                end
                for k, c in ipairs(context.scoring_hand) do
                    if c ~= _card then
                        assert(SMODS.change_base(c, _card.base.suit, rank_suffix))               
                        G.E_MANAGER:add_event(Event({
                            func = function()
                                c:flip()
                                return true
                            end
                        }))
                        G.E_MANAGER:add_event(Event({
                            trigger = 'after',
                            delay = 0.15,
                            func = function()
                                c:flip()
                                return true
                            end
                        }))
                    end
                end
            end
        end
    end
}

-- Cork
SMODS.Joker{
    key = 'cork',
    rarity = 'pm_thing',
    atlas = 'Things',
    discovered = false,
    cost = 9,
    blueprint_compat = false,
    pos = { x = 0, y = 2 },
    config = { extra = { death = false } },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.death and localize('pm_dead') or localize('pm_dry')} }
    end,
    calculate = function(self, card, context)
        if context.before and context.cardarea == G.jokers and not context.blueprint then
            local active = false
            for k, c in ipairs(context.scoring_hand) do
                if not c:is_face() and c.config.center ~= G.P_CENTERS.m_stone then
                    active = true
                    c:set_ability(G.P_CENTERS.m_stone, nil, true)                       
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            c:juice_up()
                            return true
                        end
                    }))
                end
            end
        
            if active then
                return{
                    message = localize("pm_upgraded"),
                    card = card
                }
            end
        end
    end
}
-- Washing Machine
SMODS.Joker{
    key = 'washing',
    rarity = 'pm_thing',
    atlas = 'Things',
    discovered = false,
    cost = 9,
    blueprint_compat = true,
    pos = { x = 1, y = 2 },
    config = { extra = {rank = "none"} },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.rank } } 
    end,
    calculate = function(self, card, context)        
        
        if context.before and context.cardarea == G.jokers and not context.blueprint then
            -- check for flush
            if next(context.poker_hands["Flush"]) then
                -- if there is one, convert the ranks of all these cards
                for k, c in ipairs(context.scoring_hand) do
                    c:flip()             
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            assert(SMODS.change_base(c, nil, card.ability.extra.rank))  
                            return true
                        end
                    }))
                    G.E_MANAGER:add_event(Event({
                        trigger = 'after',
                        delay = 0.15,
                        func = function()
                            c:flip()
                            return true
                        end
                    }))
                end
            end
        end
    end,
    set_ability = function(self, card, initial, delay_sprites)
        if initial then
          card.ability.extra.rank = pseudorandom_element(SMODS.Ranks, pseudoseed('washing')).key
        end
    end
}

-- Lightbulb
SMODS.Joker{
    key = 'lightbulb',
    rarity = 'pm_thing',
    atlas = 'Things',
    discovered = false,
    cost = 9,
    blueprint_compat = true,
    pos = { x = 2, y = 2 },
    config = { extra = {money = 3, xmult = 1.5} },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.m_gold
        info_queue[#info_queue+1] = G.P_CENTERS.m_steel
        return { vars = {} }
    end,
    calculate = function(self, card, context)
        
        -- check if a gold card exists, then make the rest not gold
        if context.before and context.cardarea == G.jokers and not context.blueprint then
            for k, c in ipairs(context.scoring_hand) do
                if c.ability.name == 'Steel Card' then
                    c:set_ability(G.P_CENTERS.m_gold, nil, true)               
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            c:juice_up()
                            return true
                        end
                    }))
                elseif c.ability.name == 'Gold Card' then
                    c:set_ability(G.P_CENTERS.m_steel, nil, true)
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            c:juice_up()
                            return true
                        end
                    }))
                end
            end
            return{
                message = localize("pm_upgraded"),
                card = card
            }
        end

        if context.individual and context.cardarea == G.play and context.other_card.ability.name == 'Steel Card' then
            if not context.end_of_round and not context.before and not context.after and not context.other_card.debuff then
                return {
                    xmult = card.ability.extra.xmult,
                    card = card
              }
            end
        end

        if context.individual and context.cardarea == G.play and context.other_card.ability.name == 'Gold Card' then
            if not context.end_of_round and not context.before and not context.after and not context.other_card.debuff then
                return {
                    dollars = card.ability.extra.money,
                    card = card
                }
            end
        end
    end
}

-- Salt and Pepper
SMODS.Joker{
    key = 'sapp',
    rarity = 'pm_thing',
    atlas = 'Things',
    discovered = false,
    cost = 5,
    blueprint_compat = true,
    pos = { x = 3, y = 2 },
    config = { extra = {suit = "Spades", chips = 0, mult = 0, chip_gain = 15, mult_gain = 1} },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.m_stone
        return { vars = { localize(card.ability.extra.suit, 'suits_singular'), card.ability.extra.chips, card.ability.extra.mult, card.ability.extra.chip_gain, card.ability.extra.mult_gain } }
    end,
    calculate = function(self, card, context)        
        
        if context.before and context.cardarea == G.jokers and not context.blueprint then
            local active = false
            for k, c in ipairs(context.scoring_hand) do
                if c:is_suit(card.ability.extra.suit) then
                    active = true
                    card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_gain
                elseif c.ability.name == 'Stone Card' then
                    active = true
                    card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.chip_gain
                end
            end

            if active then
                return {
                    message = localize("pm_upgraded"),
                    card = card
                }
            end
        end
        
        if context.joker_main then
            return {
                mult = card.ability.extra.mult,
                chips = card.ability.extra.chips,
                card = card
            }
        end
    end
}

-- Charcoal Grill
SMODS.Joker{
    key = 'grill',
    rarity = 'pm_thing',
    atlas = 'Things',
    discovered = false,
    cost = 9,
    blueprint_compat = true,
    pos = { x = 4, y = 2 },
    config = { extra = {target = 3} },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.m_stone
        return { vars = {card.ability.extra.target} }
    end,
    calculate = function(self, card, context)

        -- check if hand is <= 3, then increase their rank
        if context.before and context.cardarea == G.jokers and not context.blueprint then
            if context.full_hand and #context.full_hand <= card.ability.extra.target then
                for k, c in ipairs(context.full_hand) do
                    if not SMODS.has_no_rank(c) then
                        if c:get_id() < 14 then
                            local rank_suffix = c.base.id == 14 and 2 or math.min(c.base.id+1, 14)
                            if rank_suffix < 11 then rank_suffix = tostring(rank_suffix)
                            elseif rank_suffix == 11 then rank_suffix = 'Jack'
                            elseif rank_suffix == 12 then rank_suffix = 'Queen'
                            elseif rank_suffix == 13 then rank_suffix = 'King'
                            elseif rank_suffix == 14 then rank_suffix = 'Ace'
                            end
                            c:flip()             
                            G.E_MANAGER:add_event(Event({
                                func = function()
                                    assert(SMODS.change_base(c, nil, rank_suffix)) 
                                    return true
                                end
                            }))
                            G.E_MANAGER:add_event(Event({
                                trigger = 'after',
                                delay = 0.35,
                                func = function()
                                    c:flip()
                                    return true
                                end
                            }))
                            card_eval_status_text(c, 'extra', nil, nil, nil, {message = localize('pm_cooked'), colour = G.C.ATTENTION})
                        else
                            c:set_ability(G.P_CENTERS.m_stone, nil, true)                   
                            G.E_MANAGER:add_event(Event({
                                func = function()
                                    c:juice_up()
                                    return true
                                end
                            }))
                            card_eval_status_text(c, 'extra', nil, nil, nil, {message = localize('pm_burnt'), colour = G.C.MULT})
                        end
                    end
                end
            end
        end
    end
}

-- Megaphone
SMODS.Joker{
    key = 'megaphone',
    rarity = 'pm_thing',
    atlas = 'Things',
    discovered = false,
    cost = 9,
    blueprint_compat = false,
    pos = { x = 5, y = 2 },
    config = { extra = {retriggers = 2, index = 0, add = 0, activated = false} },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.retriggers} }
    end,
    calculate = function(self, card, context)
        if context.retrigger_joker_check and not context.retrigger_joker then
            local copy_joker = nil
            local x = 0
            if not card.ability.extra.activated then
                for i=1, #G.jokers.cards do
                    if G.jokers.cards[i] == card and G.jokers.cards[i+x] then
                        while G.jokers.cards[i+x] and G.jokers.cards[i+x].config.center.key == 'j_pm_megaphone' do
                            x = x+1
                        end
                        copy_joker = G.jokers.cards[i+x]
                        card.ability.extra.index = i
                        card.ability.extra.add = x
                        card.ability.extra.activated = true
                        break
                    end
                end
            end
            if card.ability.extra.index and G.jokers.cards[card.ability.extra.index + card.ability.extra.add] == context.other_card then
                return {
                    message = localize("pm_again"),
                    repetitions = card.ability.extra.retriggers,
                    card = card,
                }
            end 
        end   
        
        if context.final_scoring_step then
            card.ability.extra.activated = nil
        end
    end
}

-- Hair Dryer
SMODS.Joker{
    key = 'hairdryer',
    rarity = 'pm_thing',
    atlas = 'Things',
    discovered = false,
    cost = 9,
    blueprint_compat = true,
    pos = { x = 6, y = 2 },
    config = { extra = { money = 5, Xmult = 1.0, Xmult_gain = 0.1 } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.money, card.ability.extra.Xmult_gain, card.ability.extra.Xmult } }
    end,
    calculate = function(self, card, context)
        
        if context.cards_destroyed then
            for k, val in ipairs(context.glass_shattered) do
                ease_dollars(card.ability.extra.money)
                card_eval_status_text(card, 'extra', nil, nil, nil, {message = '$5', colour = G.C.MONEY})
            end
        elseif context.remove_playing_cards then
            card.ability.extra.tick = false
            for k, val in ipairs(context.removed) do 
                ease_dollars(card.ability.extra.money)
                card_eval_status_text(card, 'extra', nil, nil, nil, {message = '$5', colour = G.C.MONEY})
            end
        end

        -- Shake while discard is active
        if context.first_hand_drawn then
            if not context.blueprint and G.GAME.current_round.discards_used <= 0 then
                local eval = function() return G.GAME.current_round.discards_used <= 0 and not G.RESET_JIGGLES end
                juice_card_until(card, eval, true)
            end
        end

        if context.discard then
            if not context.blueprint and G.GAME.current_round.discards_used <= 0 and #context.full_hand == 1 then
                
                card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.Xmult_gain

                card:juice_up(0.3, 0.4)
                card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize("pm_upgraded")})
                return {
                    remove = true,
                    card = self
                }
            end
        end

        if context.joker_main then
            return {
                xmult = card.ability.extra.Xmult,
                card = card
            }
        end
    end
}

-- Magnifying Glass 
SMODS.Joker{
    key = 'magnify',
    rarity = 'pm_thing',
    atlas = 'Things',
    discovered = false,
    cost = 9,
    blueprint_compat = false,
    pos = { x = 7, y = 2 },
    config = { extra = { xmult = 4.0, odds = 2 } },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.m_glass
        return { vars = { card.ability.extra.xmult, (G.GAME.probabilities.normal or 1), card.ability.extra.odds } }
    end,
    calculate = function(self, card, context) 
        if context.before and context.cardarea == G.jokers and not context.blueprint then
            for k, c in ipairs(context.scoring_hand) do
                if c.ability.name == 'Glass Card' then
                    c.ability.extra = card.ability.extra.odds
                    c.ability.x_mult = card.ability.extra.xmult
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            c:juice_up()
                            return true
                        end
                    }))
                    card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('pm_magnified')})
                end
            end 
        end
    end
}

-- Claw Hammer
SMODS.Joker{
    key = 'hammer',
    rarity = 'pm_thing',
    atlas = 'Things',
    discovered = false,
    cost = 9,
    blueprint_compat = true,
    pos = { x = 0, y = 3 },
    config = { extra = { Xmult = 1.0, Xmult_gain = 0.2 } },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.m_stone
        info_queue[#info_queue+1] = G.P_CENTERS.m_steel
        return { vars = {card.ability.extra.Xmult, card.ability.extra.Xmult_gain } }
    end,
    calculate = function(self, card, context)
        
        -- check if a gold card exists, then make the rest not gold
        if context.final_scoring_step and context.cardarea == G.jokers and not context.blueprint then
            for k, c in ipairs(context.scoring_hand) do
                if c.ability.name == 'Stone Card' then
                    c:set_ability(G.P_CENTERS.m_steel, nil, true)                  
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            c:juice_up()
                            return true
                        end
                    }))
                end
            end
            return{
                message = localize("pm_upgraded"),
                card = card
            }
        end

        if context.joker_main then
            return{
                xmult = card.ability.extra.Xmult,
                card = card
            }
        end
    end,
    update = function(self, card, dt)
        if G.STAGE == G.STAGES.RUN then
            local steel_tally = 0
            for k, v in pairs(G.playing_cards) do
                if v.config.center == G.P_CENTERS.m_steel then steel_tally = steel_tally + 1 end
            end
            card.ability.extra.Xmult = (steel_tally * card.ability.extra.Xmult_gain) + 1
        else
            card.ability.extra.Xmult = 1
        end
    end
}

-- Recorder
SMODS.Joker{
    key = 'recorder',
    rarity = 'pm_thing',
    atlas = 'Things',
    discovered = false,
    cost = 9,
    blueprint_compat = true,
    pos = { x = 1, y = 3 },
    config = { extra = {} },
    loc_vars = function(self, info_queue, card)
        if not card.edition or (card.edition and not card.edition == 'e_pm_replica') then
			info_queue[#info_queue+1] = G.P_CENTERS.e_pm_replica
		end
        return { vars = { } }
    end,
    calculate = function(self, card, context)        
        if context.selling_self and not context.blueprint then
            local jokers = {}
            for i=1, #G.jokers.cards do 
                if G.jokers.cards[i] ~= card then
                    jokers[#jokers+1] = G.jokers.cards[i]
                end
            end
            if #jokers > 0 then 
                if #G.jokers.cards < G.jokers.config.card_limit then 
                    card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('k_duplicated_ex')})
                    local chosen_joker = jokers[1] -- get leftmost joker that isn't this card lmao
                    local t = {
                        key = chosen_joker.config.center.key
                    }
                    local _card = SMODS.add_card(t)
                    _card:set_edition('e_pm_replica', nil, nil)
                    SMODS.Stickers.pm_monochrome:apply(_card, nil)
                    if _card.ability.invis_rounds then _card.ability.invis_rounds = 0 end
                else
                    card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('k_no_room_ex')})
                end
            else
                card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('k_no_other_jokers')})
            end
        end
    end
}

-- Disco Ball
SMODS.Joker{
    key = 'discoball',
    rarity = 'pm_thing',
    atlas = 'Things',
    discovered = false,
    cost = 9,
    blueprint_compat = true,
    pos = { x = 2, y = 3 },
    config = { extra = {odds = 3} },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.c_justice
        if not card.edition or (card.edition and not card.edition.polychrome) then
			info_queue[#info_queue+1] = G.P_CENTERS.e_polychrome
		end
        return { vars = { (G.GAME.probabilities.normal or 1), card.ability.extra.odds } }
    end,
    calculate = function(self, card, context)        
        
        -- Getting a Justice Card when you start a round
        if context.first_hand_drawn then
            if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
                local _card = create_card('Tarot', G.consumeables, nil, nil, nil, nil, 'c_justice')
                _card:add_to_deck()
                G.consumeables:emplace(_card)
                card_eval_status_text(_card, 'extra', nil, nil, nil, {message = localize('k_plus_tarot'), colour = G.C.PURPLE})
            end
        end

        if context.before and context.cardarea == G.jokers and not context.blueprint then
            local active = false
            for k, c in ipairs(context.scoring_hand) do
                if pseudorandom('disco') < (G.GAME.probabilities.normal / card.ability.extra.odds) and c.ability.name == 'Glass Card'  then
                    active = true
                    c:set_edition('e_polychrome', nil, false)                     
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            c:juice_up()
                            return true
                        end
                    }))
                end
            end

            if active then
                return{
                    message = localize("pm_upgraded"),
                    card = card
                }
            end
        end
    end
}

-- Huey
SMODS.Joker{
    key = 'huey',
    rarity = 4,
    atlas = 'Things',
    discovered = false,
    cost = 20,
    blueprint_compat = true,
    pos = { x = 3, y = 3 },
    config = { extra = {suit = "Spades", xmult = 1.5, tarot = 'c_world', tarot_info = G.P_CENTERS.c_world} },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = card.ability.extra.tarot_info
        return { vars = { card.ability.extra.suit, card.ability.extra.xmult, localize{type = 'name_text', set = 'Tarot', key = card.ability.extra.tarot}, colours = {G.C.SUITS[card.ability.extra.suit]}} }
    end,
    calculate = function(self, card, context)        
       
        -- Getting a (X Suit) Card when you start a round
        if context.first_hand_drawn then
            if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
                local _card = create_card('Tarot', G.consumeables, nil, nil, nil, nil, card.ability.extra.tarot)
                _card:add_to_deck()
                G.consumeables:emplace(_card)
                card_eval_status_text(_card, 'extra', nil, nil, nil, {message = localize('k_plus_tarot'), colour = G.C.PURPLE})
            end
        end

        if context.individual and context.cardarea == G.play and context.other_card:is_suit(card.ability.extra.suit) then
            if not context.end_of_round and not context.before and not context.after and not context.other_card.debuff then
                return {
                    xmult = card.ability.extra.xmult,
                    card = card
              }
            end
        end 

    end,
    update = function(self, card, dt)
        if G.STAGE == G.STAGES.RUN then
            local suit_count = {
                ["Spades"] = 0,
                ["Clubs"] = 0,
                ["Hearts"] = 0,
                ["Diamonds"] = 0,
            }

            local tarots = {
                ["Spades"] = 'c_world',
                ["Clubs"] = 'c_moon',
                ["Hearts"] = 'c_sun',
                ["Diamonds"] = 'c_star',
            }

            local tarot_infos = {
                ["Spades"] = G.P_CENTERS.c_world,
                ["Clubs"] = G.P_CENTERS.c_moon,
                ["Hearts"] = G.P_CENTERS.c_sun,
                ["Diamonds"] = G.P_CENTERS.c_star,
            }

            local nuits = {
                "Spades",
                "Hearts",
                "Clubs",
                "Diamonds"
            }

            -- first, look through the entire deck and see which one has the most
            for i = 1, #nuits do
                local suit = nuits[i]
                for k, v in pairs(G.playing_cards) do
                    if v:is_suit(nuits[i], true, nil) then suit_count[suit] = suit_count[suit] + 1 end
                end
            end

            -- if everything is equal, just make it spades
            if suit_count["Spades"] == suit_count["Clubs"] and suit_count["Spades"] == suit_count["Hearts"] and suit_count["Spades"] == suit_count["Diamonds"] then
                card.ability.extra.suit = "Spades"
                card.ability.extra.tarot = "c_world"
                card.ability.extra.tarot_info = G.P_CENTERS.c_world
            else
                -- otherwise, make it the one that there is most of
                local max_key = next(suit_count)
                for key, value in next, suit_count, max_key do
                    if value > suit_count[max_key] then
                        max_key = key
                    end
                end
                card.ability.extra.suit = max_key
                card.ability.extra.tarot = tarots[max_key]
                card.ability.extra.tarot_info = tarot_infos[max_key]
            end
        end
    end
}

----------------------------------------------
------------MOD CODE END----------------------