----TABLE OF CONTENTS-------------------------



------------MOD CODE -------------------------

-- Kamek
SMODS.Joker{
    key = 'kamek',
    rarity = 4,
    atlas = 'Koopalings',
    discovered = false,
    unlocked = false,
    cost = 20,
    blueprint_compat = true,
    pos = { x = 0, y = 0 },
    soul_pos = { x = 1, y = 0 },
    config = { extra = {discards = 1} },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.discards} }
    end,
    calculate = function(self, card, context)
        
        -- Shake while discard is active
        if context.first_hand_drawn then
            if not context.blueprint and G.GAME.current_round.discards_used <= 0 then
                local eval = function() return G.GAME.current_round.discards_used <= 0 and not G.RESET_JIGGLES end
                juice_card_until(card, eval, true)
            end
        end

        if context.discard then
            if not context.blueprint and G.GAME.current_round.discards_used <= 0 and #context.full_hand == 1 and #G.consumeables.cards < G.consumeables.config.card_limit then
                local t = {
                    set = 'Spectral'
                }
                SMODS.add_card(t)
                card:juice_up()
                card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize("pm_magic")})
                return {
                    remove = true,
                    card = context.other_card
                }
            end
        end
    end,
    
    -- extra discard functions
    add_to_deck = function(self, card, from_debuff)
		ease_discard(card.ability.extra.discards)
	end,
	remove_from_deck = function(self, card, from_debuff)
		ease_discard(card.ability.extra.discards*-1)
	end,
    check_for_unlock = function(self, args)
        if args.type == "boss_blind_win" then
            if G.GAME.pm_ach_conditions.kamek_won == true then
                return true
            end
        end
    end,
}

-- Morton
SMODS.Joker{
    key = 'morton',
    rarity = 4,
    atlas = 'Koopalings',
    discovered = false,
    unlocked = false,
    cost = 20,
    blueprint_compat = true,
    pos = { x = 2, y = 0 },
    soul_pos = { x = 3, y = 0 },
    config = { extra = {hand = "Flush", Xmult = 3, active = false} },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.c_tower
        return { vars = { card.ability.extra.hand, card.ability.extra.Xmult } }
    end,
    calculate = function(self, card, context)

        -- Getting a Tower Card when you start a round
        if context.first_hand_drawn then
            if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
                local t = {
                    area = G.consumeables,
                    key = 'c_tower'
                }
                SMODS.add_card(t)
                card:juice_up()
                card_eval_status_text(_card, 'extra', nil, nil, nil, {message = localize('k_plus_tarot'), colour = G.C.PURPLE})
            end
        end

        if context.joker_main and not context.blueprint then
            local stone_count = 0
            local four_fingers = (next(find_joker('j_pm_plunger')) and 3) or (next(find_joker('Four Fingers')) and 4) or 5
            for i=1, #context.scoring_hand do
                if context.scoring_hand[i].config.center == G.P_CENTERS.m_stone then stone_count = stone_count + 1 end
            end
            if stone_count >= (four_fingers) then
                return {
                    xmult = card.ability.extra.Xmult,
                    card = card
                }
            end
        end

        if context.final_scoring_step then
            card.ability.extra.active = false
        end
    end,
    check_for_unlock = function(self, args)
        if args.type == "boss_blind_win" then
            if G.GAME.pm_ach_conditions.morton_won == true then
                return true
            end
        end
    end,
}

-- Iggy
SMODS.Joker{
    key = 'iggy',
    rarity = 4,
    atlas = 'Koopalings',
    discovered = false,
    unlocked = false,
    cost = 20,
    blueprint_compat = true,
    pos = { x = 0, y = 1 },
    soul_pos = { x = 1, y = 1 },
    config = { extra = {Xmult = 1.0} },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.Xmult} }
    end,
    calculate = function(self, card, context)

        -- Shake while first card is active
        if context.first_hand_drawn then
            if not context.blueprint and G.GAME.current_round.hands_played <= 0 then
                local eval = function() return G.GAME.current_round.hands_played == 0 and not G.RESET_JIGGLES end
                juice_card_until(self, eval, true)
            end
        end

        -- first hand played
        if context.pre_joker and context.cardarea == G.jokers and context.full_hand and G.GAME.current_round.hands_played == 0 then
            local rndcard = pseudorandom_element(G.hand.cards, pseudoseed('iggy'))
            card.ability.extra.Xmult = card.ability.extra.Xmult + (rndcard.base.nominal / 10)
            rndcard:juice_up()
            rndcard:start_dissolve()
            return{
                message = localize("pm_upgraded"),
                card = card
            }
        end

        -- apply Xmult
        if context.joker_main then
            return {
                xmult = card.ability.extra.Xmult,
                card = card
            }
        end
    end,
    check_for_unlock = function(self, args)
        if args.type == "boss_blind_win" then
            if G.GAME.pm_ach_conditions.iggy_won == true then
                return true
            end
        end
    end,
}

-- Ludwig
SMODS.Joker{
    key = 'ludwig',
    rarity = 4,
    atlas = 'Koopalings',
    discovered = false,
    unlocked = false,
    cost = 20,
    blueprint_compat = true,
    pos = { x = 2, y = 1 },
    soul_pos = { x = 3, y = 1 },
    config = { extra = {Xmult = 1.0, copy_gain = 0.5} },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.j_pm_ludwigcopy
        return { vars = {card.ability.extra.Xmult, card.ability.extra.copy_gain} }
    end,
    calculate = function(self, card, context)

        -- at the end of a boss blind, gain a Ludwig Copy
        if context.end_of_round and G.GAME.blind.boss and context.cardarea == G.jokers then
            local t = {
                set = 'Joker',
                area = G.jokers,
                key = 'j_pm_ludwigcopy',
                edition = {negative = true},
            }
            SMODS.add_card(t)
            
            card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('k_plus_joker'), colour = G.C.BLUE}) 
        end

        -- apply Xmult
        if context.joker_main then
            return {
                xmult = card.ability.extra.Xmult,
                card = card
            }
        end
    end,
    update = function(self, card, dt)
        if G.STAGE == G.STAGES.RUN then
            local bro_count = 0
            local t = {}
            for i = 1, #G.jokers.cards do
                local j = G.jokers.cards[i]
                if pm_in_array(t, j.config.center.key) or string.find(j.config.center.key, "j_pm_ludwigcopy") then bro_count = bro_count + 1
                else t[#t+1] = j.config.center.key end
            end

            if bro_count > 0 then
                card.ability.extra.Xmult = 1 + card.ability.extra.copy_gain * bro_count
            end
        else
            card.ability.extra.Xmult = 1.0
        end
    end,
    check_for_unlock = function(self, args)
        if args.type == "boss_blind_win" then
            if G.GAME.pm_ach_conditions.ludwig_won == true then
                return true
            end
        end
    end,
}

-- Ludwig Copy
SMODS.Joker{
    key = 'ludwigcopy',
    rarity = 4,
    atlas = 'Koopalings',
    discovered = false,
    unlocked = false,
    cost = 1,
    blueprint_compat = false,
    pos = { x = 2, y = 1 },
    soul_pos = { x = 3, y = 1 },
    config = { extra = {count = 0} },
    loc_vars = function(self, info_queue, card)
        if card.ability.extra.count > 2 then info_queue[#info_queue+1] = G.P_CENTERS.j_pm_ludwigcopy end
        return { vars = {(card.ability.extra.count <= 2) and localize('pm_nothing') or localize('pm_ludwigsecret')} }
    end,
    calculate = function(self, card, context)
        if not context.blueprint and not context.selling_self then
            local eval = function() return card.ability.extra.count > 2 and not G.RESET_JIGGLES end
            juice_card_until(card, eval, true)
        end

        if context.selling_self then
            if card.ability.extra.count > 2 then
                local x_count = 0
                for i=1, #G.jokers.cards do
                    local j = G.jokers.cards[i]
                    if string.find(j.config.center.key, "j_pm_ludwigcopy") and j ~= card and x_count < 3 then j:start_dissolve(); ease_dollars(1); x_count = x_count + 1 end 
                end

            local t = {
                key = 'j_pm_ludwig',
                edition = {negative = true},
            }
            SMODS.add_card(t)
            
            card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('k_plus_joker'), colour = G.C.BLUE}) 
            
            end
        end

    end,
    update = function(self, card, dt)
        if G.STAGE == G.STAGES.RUN then
            local count = 0
            for i=1, #G.jokers.cards do
                local j = G.jokers.cards[i]
                if string.find(j.config.center.key, "j_pm_ludwigcopy") then count = count + 1 end 
            end
            card.ability.extra.count = count
        else
            card.ability.extra.count = 0
        end
    end,
    check_for_unlock = function(self, args)
        if args.type == "boss_blind_win" then
            if G.GAME.pm_ach_conditions.ludwig_won == true then
                return true
            end
        end
    end,
}

-- Wendy
SMODS.Joker{
    key = 'wendy',
    rarity = 4,
    atlas = 'Koopalings',
    discovered = false,
    unlocked = false,
    cost = 20,
    blueprint_compat = true,
    pos = { x = 0, y = 2 },
    soul_pos = { x = 1, y = 2 },
    config = { extra = {Xmult = 1.0, Xmult_gain = 0.1} },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.c_saturn
        return { vars = {card.ability.extra.Xmult, card.ability.extra.Xmult_gain} }
    end,
    calculate = function(self, card, context)

        -- Getting a Negative Saturn Card when you start a round
        if context.first_hand_drawn then
            if #G.consumeables.cards < G.consumeables.config.card_limit then
                local t = {
                    area = G.consumeables,
                    key = 'c_saturn'
                }
                SMODS.add_card(t)
                card:juice_up()
                card_eval_status_text(_card, 'extra', nil, nil, nil, {message = localize('k_plus_planet'), colour = G.C.SECONDARY_SET.Planet})
            end
        end

        if context.before and not context.blueprint then
            if string.find(context.scoring_name, "Straight") then
                card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.Xmult_gain
                return {
                    colour = G.C.MULT,
                    message = localize("pm_upgraded"),
                    card = card
                }
            end
        end

        if context.joker_main then
            return {
                xmult = card.ability.extra.Xmult,
                card = card
            }
        end
    end,
    check_for_unlock = function(self, args)
        if args.type == "boss_blind_win" then
            if G.GAME.pm_ach_conditions.wendy_won == true then
                return true
            end
        end
    end,
}

-- Larry
SMODS.Joker{
    key = 'larry',
    rarity = 4,
    atlas = 'Koopalings',
    discovered = false,
    unlocked = false,
    cost = 20,
    blueprint_compat = true,
    pos = { x = 2, y = 2 },
    soul_pos = { x = 3, y = 2 },
    config = { extra = {Xmult = 1.0, Xmult_gain = 0.1} },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.c_jupiter
        return { vars = {card.ability.extra.Xmult, card.ability.extra.Xmult_gain} }
    end,
    calculate = function(self, card, context)

        -- Getting a Negative Jupiter Card when you start a round
        if context.first_hand_drawn then
            if #G.consumeables.cards < G.consumeables.config.card_limit then
                local t = {
                    area = G.consumeables,
                    key = 'c_jupiter'
                }
                SMODS.add_card(t)
                card:juice_up()
                card_eval_status_text(_card, 'extra', nil, nil, nil, {message = localize('k_plus_planet'), colour = G.C.SECONDARY_SET.Planet})
            end
        end

        if context.before and not context.blueprint then
            if string.find(context.scoring_name, "Flush") then
                card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.Xmult_gain
                return {
                    colour = G.C.MULT,
                    message = localize("pm_upgraded"),
                    card = card
                }
            end
        end

        if context.joker_main then
            return {
                xmult = card.ability.extra.Xmult,
                card = card
            }
        end
    end,
    check_for_unlock = function(self, args)
        if args.type == "boss_blind_win" then
            if G.GAME.pm_ach_conditions.larry_won == true then
                return true
            end
        end
    end,
}

-- Lemmy
SMODS.Joker{
    key = 'lemmy',
    rarity = 4,
    atlas = 'Koopalings',
    discovered = false,
    unlocked = false,
    cost = 20,
    blueprint_compat = true,
    pos = { x = 0, y = 3 },
    soul_pos = { x = 1, y = 3 },
    config = { extra = {mult = 10} },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.m_wild
        return { vars = { card.ability.extra.mult } }
    end,
    calculate = function(self, card, context)
        if context.before and not context.blueprint then
            local thunk = 0
            for k, v in ipairs(context.full_hand) do
                if v.ability.set == 'Enhanced' and v.ability.name ~= "Wild Card" then
                    thunk = thunk + 1
                    v:set_ability(G.P_CENTERS.m_wild, nil, true)
                    local current_h_mult = v.perma_h_mult or 0
                    v.perma_h_mult = current_h_mult + card.ability.extra.mult
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            v:juice_up()
                            return true
                        end
                    })) 
                end
            end
            if thunk > 0 then
                return{
                    message = localize('pm_wild'),
                    colour = G.C.PURPLE
                }
            end
        end
    end,
    check_for_unlock = function(self, args)
        if args.type == "boss_blind_win" then
            if G.GAME.pm_ach_conditions.lemmy_won == true then
                return true
            end
        end
    end,
}

-- Roy
SMODS.Joker{
    key = 'roy',
    rarity = 4,
    atlas = 'Koopalings',
    discovered = false,
    unlocked = false,
    cost = 20,
    blueprint_compat = true,
    pos = { x = 2, y = 3 },
    soul_pos = { x = 3, y = 3 },
    config = { extra = {Xmult = 5.0, cur_hands = 0, hands = 3, active = false, triggered = false} },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.Xmult, card.ability.extra.cur_hands, card.ability.extra.hands} }
    end,
    calculate = function(self, card, context)

        -- reset when blind starts
        if context.setting_blind or context.end_of_round then
            card.ability.extra.cur_hands = 0
            card.ability.extra.active = false
            card.ability.extra.triggered = false
        end

        if self.debuff then self.debuff = false end

        -- Stealing code from Matador and Luchador. Fitting.
        if context.debuffed_hand and not card.ability.extra.triggered then 
            if G.GAME.blind.triggered then
                if card.ability.extra.cur_hands >= card.ability.extra.hands - 1 then
                    if G.GAME.blind and ((not G.GAME.blind.disabled) and (G.GAME.blind:get_type() == 'Boss')) then 
                        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('ph_boss_disabled')})
                        G.GAME.blind:disable()
                        card.ability.extra.active = true
                    end
                else
                    card.ability.extra.cur_hands = card.ability.extra.cur_hands + 1
                    card.ability.extra.triggered = true
                    return{
                        message = localize("pm_upgraded"),
                        card = card
                    }
                end
            end
        elseif context.cardarea == G.jokers and not (context.blueprint or context.repetition or context.individual or context.after or context.before or context.final_scoring_step or context.hand_drawn) and not card.ability.extra.triggered then 
            if G.GAME.blind.triggered then
                if card.ability.extra.cur_hands >= card.ability.extra.hands - 1 then
                    if G.GAME.blind and ((not G.GAME.blind.disabled) and (G.GAME.blind:get_type() == 'Boss')) then 
                        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('ph_boss_disabled')})
                        G.GAME.blind:disable()
                        card.ability.extra.active = true
                    end
                else
                    card.ability.extra.cur_hands = card.ability.extra.cur_hands + 1
                    card.ability.extra.triggered = true
                    return{
                        message = localize("pm_upgraded"),
                        card = card
                    }
                end
            end
        end

        -- apply Xmult when ability active
        if context.joker_main then
            if card.ability.extra.active then
                return {
                    xmult = card.ability.extra.Xmult,
                    card = card
                }
            end
        end

        if context.final_scoring_step then
            card.ability.extra.triggered = false
        end
    end,
    check_for_unlock = function(self, args)
        if args.type == "boss_blind_win" then
            if G.GAME.pm_ach_conditions.roy_won == true then
                return true
            end
        end
    end,
}

-- Boss Jokers
SMODS.Joker{
    key = 'booking',
    rarity = 'pm_bosses',
    discovered = false,
    unlocked = false,
    cost = 20,
    blueprint_compat = false,
    eternal_compat = false,
    atlas = 'PMBossCards',
    pos = { x = 0, y = 1 },
    soul_pos = { x = 0, y = 0 },
    config = { extra = {odds = 4} },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.e_negative
        return { vars = { card.ability.extra.odds } }
    end,
    calculate = function(self, card, context)
        if not context.repetition and not context.individual and context.end_of_round and not context.blueprint then
            if pseudorandom('kingboo') < (1 / card.ability.extra.odds) then
                if #G.jokers.cards > 0 then
                    local eligible_editionless_jokers = {}
                    for k, v in pairs(G.jokers.cards) do
                      if v.ability.set == 'Joker' and v ~= card and not v.gone and not v.edition then
                          table.insert(eligible_editionless_jokers, v)
                      end
                    end
                    if #eligible_editionless_jokers > 0 then
                      for i=1, #eligible_editionless_jokers do
                        local eligible_card = eligible_editionless_jokers[i]
                        local edition = {negative = true}
                        eligible_card:set_edition(edition, true)
                      end
                    end
                end
                  
                remove(self, card, context)
                  
                return {
                    message = localize("pm_haunt")
                }
            else
                return {
                    message = localize("k_nope_ex"),
                    colour = G.C.SECONDARY_SET.Tarot,
                    card = card
                }
            end
        end
    end,
    check_for_unlock = function(self, args)
        if args.type == "boss_blind_win" then
            if G.GAME.pm_ach_conditions.booking_won == true then
                return true
            end
        end
    end,
    
}

SMODS.Joker{
    key = 'bombking',
    rarity = 'pm_bosses',
    atlas = 'PMBossCards',
    pos = { x = 1, y = 1 },
    soul_pos = { x = 1, y = 0 },
    discovered = false,
    unlocked = false,
    cost = 20,
    blueprint_compat = true,
    config = { extra = {xmult = 5} },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult } }
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            G.E_MANAGER:add_event(Event({
                func = function()
                    card.debuff = true
                    return true
                end
              })) 
            return {
                xmult = card.ability.extra.xmult,
                card = card
            }
        end
    end,
    check_for_unlock = function(self, args)
        if args.type == "boss_blind_win" then
            if G.GAME.pm_ach_conditions.bombking_won == true then
                return true
            end
        end
    end,
    
}

SMODS.Joker{
    key = 'pirahnaking',
    rarity = 'pm_bosses',
    atlas = 'PMBossCards',
    pos = { x = 2, y = 1 },
    soul_pos = { x = 2, y = 0 },
    discovered = false,
    unlocked = false,
    cost = 20,
    blueprint_compat = true,
    config = { extra = {money = 3} },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.money } }
    end,
    calculate = function(self, card, context)
        if context.before and not context.blueprint then
            local count = 0
            for k, c in ipairs(context.full_hand) do
                if c.debuff then
                    c.set_debuff(false)
                    count = count + 1
                end
            end
            ease_dollars(card.ability.extra.money * count)
        end
    end,
    check_for_unlock = function(self, args)
        if args.type == "boss_blind_win" then
            if G.GAME.pm_ach_conditions.pirahnaking_won == true then
                return true
            end
        end
    end,
    
}

SMODS.Joker{
    key = 'pokeyking',
    rarity = 'pm_bosses',
    atlas = 'PMBossCards',
    pos = { x = 3, y = 1 },
    soul_pos = { x = 3, y = 0 },
    discovered = false,
    unlocked = false,
    cost = 20,
    blueprint_compat = true,
    config = { extra = {hands_played = 0, hands_max = 3, xmult_gain = 0.25, xmult = 1} },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.hands_max, card.ability.extra.hands_played, card.ability.extra.xmult_gain, card.ability.extra.xmult } }
    end,
    calculate = function(self, card, context)
        if context.before and context.cardarea == G.jokers and not context.blueprint then
            if G.GAME.last_hand_played == G.GAME.current_round.most_played_poker_hand then
                if card.ability.extra.hands_played >= 2 then
                    card.ability.extra.hands_played = 0
                    return {
                        card = card,
                        level_up = 3,
                        message = localize('k_level_up_ex')
                    }
                else
                    card.ability.extra.hands_played = card.ability.extra.hands_played + 1
                end
            end
        end

        if context.joker_main then
            return {
                xmult = card.ability.extra.xmult,
                card = card
            }
        end
    end,
    check_for_unlock = function(self, args)
        if args.type == "boss_blind_win" then
            if G.GAME.pm_ach_conditions.pokeyking_won == true then
                return true
            end
        end
    end,
    update = function(self, card, dt)
        if G.STAGE == G.STAGES.RUN then
            card.ability.extra.xmult = 1 + ((G.GAME.hands[G.GAME.current_round.most_played_poker_hand].level - 1) * card.ability.extra.xmult_gain)
        else
            card.ability.extra.xmult = 1
        end
    end,
    
}

SMODS.Joker{
    key = 'wigglerking',
    rarity = 'pm_bosses',
    atlas = 'PMBossCards',
    pos = { x = 4, y = 1 },
    soul_pos = { x = 4, y = 0 },
    discovered = false,
    unlocked = false,
    cost = 20,
    blueprint_compat = true,
    config = { extra = {xmult = 1, xmult_gain = 0.75} },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = {set = 'Other', key = 'pm_royal_straight'}
        return { vars = { card.ability.extra.xmult, card.ability.extra.xmult_gain } }
    end,
    calculate = function(self, card, context)
        -- check if hand is <= 3, then increase their rank
        if context.before and context.cardarea == G.jokers and not context.blueprint then
            if context.full_hand and string.find(context.scoring_name, "Straight") then
                local max = 14
                for k, c in ipairs(context.full_hand) do
                    if not SMODS.has_no_rank(c) and c:get_id() < max then
                        local rank_suffix = math.min(c:get_id()+1, max)
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
                        card_eval_status_text(c, 'extra', nil, nil, nil, {message = localize('pm_upgraded'), colour = G.C.ATTENTION})
                    end
                    max = max - 1
                end

                local t = {}
                local cur_num = 14
                for k, c in ipairs(context.full_hand) do
                    if c:get_id() == cur_num then t[#t+1] = c
                    else t = {} 
                    end
                    cur_num = cur_num - 1
                end

                if #t == 5 then
                    card.ability.extra.xmult = card.ability.extra.xmult + card.ability.extra.xmult_gain
                    return {
                        message = localize('pm_upgraded'),
                        card = card
                    }
                end
            end

            
        end

        if context.joker_main then
            return {
                xmult = card.ability.extra.xmult,
                card = card
            }
		end
    end,
    check_for_unlock = function(self, args)
        if args.type == "boss_blind_win" then
            if G.GAME.pm_ach_conditions.wigglerking_won == true then
                return true
            end
        end
    end,
    

}

SMODS.Joker{
    key = 'goombaking',
    rarity = 'pm_bosses',
    atlas = 'PMBossCards',
    pos = { x = 5, y = 1 },
    soul_pos = { x = 5, y = 0 },
    discovered = false,
    unlocked = false,
    cost = 20,
    blueprint_compat = true,
    config = { extra = {} },
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    calculate = function(self, card, context)
        if context.using_consumeable then
            if context.consumeable and not context.consumeable.edition then
                local t = {
                    key = context.consumeable.config.center.key
                }
                local _card = SMODS.add_card(t)
                _card:set_edition('e_negative')
                SMODS.Stickers.pm_monochrome:apply(_card, nil)
            end
        end
    end,
    check_for_unlock = function(self, args)
        if args.type == "boss_blind_win" then
            if G.GAME.pm_ach_conditions.goombaking_won == true then
                return true
            end
        end
    end,
    
}

SMODS.Joker{
    key = 'bloopking',
    rarity = 'pm_bosses',
    atlas = 'PMBossCards',
    pos = { x = 6, y = 1 },
    soul_pos = { x = 6, y = 0 },
    discovered = false,
    unlocked = false,
    cost = 20,
    blueprint_compat = true,
    config = { extra = {} },
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    calculate = function(self, card, context)
    end,
    check_for_unlock = function(self, args)
        if args.type == "boss_blind_win" then
            if G.GAME.pm_ach_conditions.bloopking_won == true then
                return true
            end
        end
    end,
    
}

SMODS.Joker{
    key = 'lakituking',
    rarity = 'pm_bosses',
    atlas = 'PMBossCards',
    pos = { x = 0, y = 3 },
    soul_pos = { x = 0, y = 2 },
    discovered = false,
    unlocked = false,
    cost = 20,
    blueprint_compat = true,
    config = { extra = {xmult = 1, xmult_gain = 0.1} },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.xmult, card.ability.extra.xmult_gain} }
    end,
    calculate = function(self, card, context)
        if context.before and not context.blueprint then
            local reset = true
            local play_more_than = (G.GAME.hands[context.scoring_name].played or 0)
            for k, v in pairs(G.GAME.hands) do
                if k == context.scoring_name and v.played >= play_more_than and v.visible then
                    reset = false
                end
            end
            if reset then
                if card.ability.extra.xmult > 1 then
                    card.ability.extra.xmult = 1
                    return {
                        card = card,
                        message = localize('k_reset'),
                    }
                end
            else
                card.ability.extra.xmult = card.ability.extra.xmult + card.ability.extra.xmult_gain
            end
        end
    end,
    check_for_unlock = function(self, args)
        if args.type == "boss_blind_win" then
            if G.GAME.pm_ach_conditions.lakituking_won == true then
                return true
            end
        end
    end,
    
}

SMODS.Joker{
    key = 'whompking',
    rarity = 'pm_bosses',
    atlas = 'PMBossCards',
    pos = { x = 1, y = 3 },
    soul_pos = { x = 1, y = 2 },
    discovered = false,
    unlocked = false,
    cost = 20,
    blueprint_compat = true,
    config = { extra = {xmult = 1.5} },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.m_stone
        return { vars = {card.ability.extra.xmult} }
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play and context.other_card.config.center == G.P_CENTERS.m_stone then
            if not context.end_of_round and not context.before and not context.after and not context.other_card.debuff then
                return {
                    xmult = card.ability.extra.xmult,
                    card = context.other_card
              }
            end
        end 
    end,
    check_for_unlock = function(self, args)
        if args.type == "boss_blind_win" then
            if G.GAME.pm_ach_conditions.whompking_won == true then
                return true
            end
        end
    end,
    
}

SMODS.Joker{
    key = 'billking',
    rarity = 'pm_bosses',
    atlas = 'PMBossCards',
    pos = { x = 2, y = 3 },
    soul_pos = { x = 2, y = 2 },
    discovered = false,
    unlocked = false,
    cost = 20,
    blueprint_compat = true,
    config = { extra = { last_score = 0, xmult = 3 } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.last_score, card.ability.extra.xmult} }
    end,
    calculate = function(self, card, context)
        -- Shake while first card is active
        if context.first_hand_drawn then
            if not context.blueprint then
                local eval = function() return (to_big(card.ability.extra.last_score) * 2) >= to_big(G.GAME.blind.chips) and not G.RESET_JIGGLES end
                juice_card_until(self, eval, true)
            end
        end

        if context.joker_main and (to_big(card.ability.extra.last_score) * 2) >= to_big(G.GAME.blind.chips) then
            return {
                xmult = card.ability.extra.xmult,
                card = card
            }
        end

        if context.end_of_round then
            card.ability.extra.last_score = to_big(G.GAME.chips)
        end
    end,
    check_for_unlock = function(self, args)
        if args.type == "boss_blind_win" then
            if G.GAME.pm_ach_conditions.billking_won == true then
                return true
            end
        end
    end,
    
}

SMODS.Joker{
    key = 'cheepking',
    rarity = 'pm_bosses',
    atlas = 'PMBossCards',
    pos = { x = 3, y = 3 },
    soul_pos = { x = 3, y = 2 },
    discovered = false,
    unlocked = false,
    cost = 20,
    blueprint_compat = false,
    config = { extra = { xchips = 1, xchip_gain = 0.25 } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xchips, card.ability.extra.xchip_gain} }
    end,
    calculate = function(self, card, context)
        -- Gets all nonscoring cards and adds them to the card.
        if context.cardarea == G.jokers and context.scoring_hand and context.full_hand then
            if context.joker_main then
                local gain = card.ability.extra.xchip_gain * math.abs(#context.scoring_hand - #context.full_hand)
                card.ability.extra.xchips = card.ability.extra.xchips + gain
                card:juice_up()
                return {
                    xchips = card.ability.extra.xchips,
                    card = card
                }
            end
        end
    end,
    check_for_unlock = function(self, args)
        if args.type == "boss_blind_win" then
            if G.GAME.pm_ach_conditions.cheepking_won == true then
                return true
            end
        end
    end,
    
}

SMODS.Joker{
    key = 'junior',
    rarity = 'pm_bosses',
    atlas = 'PMBossCards',
    pos = { x = 4, y = 3 },
    soul_pos = { x = 4, y = 2 },
    discovered = false,
    unlocked = false,
    cost = 20,
    blueprint_compat = false,
    config = { extra = {} },
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    calculate = function(self, card, context)
        -- Gets all nonscoring cards and adds them to the card.
        if context.before and context.cardarea == G.jokers and not context.blueprint then
            for k, c in ipairs(context.scoring_hand) do
                local x = pseudorandom('junior')
                local y = pseudorandom('junior1')
                local z = pseudorandom('junior2')
                if x <= 0.75 and c.config.center ~= G.P_CENTERS.m_pm_quantum then c:set_ability(SMODS.poll_enhancement({guaranteed = true}), nil, true) end
                if y <= 0.666 and not (c.edition and c.edition.pm_quantum) then c:set_edition(poll_edition(nil, nil, nil, true), nil, true) end
                if z <= 0.5 and (not c.seal or c.seal ~= 'pm_seal_quantum') then c:set_seal(SMODS.poll_seal({guaranteed = true}), nil, true) end   
                G.E_MANAGER:add_event(Event({
                    func = function()
                        c:juice_up()
                        return true
                    end
                }))
            end

            return{
                message = localize("pm_painted"),
                card = card
            }
        end 
    end,
    check_for_unlock = function(self, args)
        if args.type == "boss_blind_win" then
            if G.GAME.pm_ach_conditions.junior_won == true then
                return true
            end
        end
    end,
    
}

SMODS.Joker{
    key = 'bowser',
    rarity = 'pm_bosses',
    atlas = 'PMBossCards',
    pos = { x = 5, y = 3 },
    soul_pos = { x = 5, y = 2 },
    discovered = false,
    unlocked = false,
    cost = 20,
    blueprint_compat = false,
    config = { extra = {} },
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    calculate = function(self, card, context)
        if context.before and context.cardarea == G.jokers and not context.blueprint then
            for k, c in ipairs(context.scoring_hand) do
                if c.ability.set == 'Enhanced' and c.config.center.key ~= G.P_CENTERS.m_pm_quantum then -- enhanced check
                    local key = c.config.center.key
                    c:set_ability('m_pm_quantum', nil, true)
                    c.ability.old_enhancement = key
                end
                if c.edition and not c.edition.pm_quantum then -- edition check
                    local key = c.edition.key
                    local xtype = c.edition.type
                    c:set_edition('e_pm_quantum', nil, true)
                    c.edition.old_edition = key
                    c.edition.old_shader = xtype
                end
                if c.seal and c.seal ~= 'pm_seal_quantum' then -- seal check
                    local seal = c.seal
                    c:set_seal('pm_seal_quantum', nil, true)
                    c.ability.seal.old_seal = seal
                end 
            end
        end
        
        if context.main_scoring and context.cardarea == G.jokers and not context.blueprint then
            for i=1, #G.hand.cards do
                local c = G.hand.cards[i]
                if c.ability.set == 'Enhanced' and c.config.center.key ~= G.P_CENTERS.m_pm_quantum then -- enhanced check
                    local key = c.config.center.key
                    c:set_ability('m_pm_quantum', nil, true)
                    c.ability.old_enhancement = key
                end
                if c.edition and c.edition.old_edition ~= 'e_pm_quantum' then
                    local key = c.edition.key
                    local xtype = c.edition.type
                    c:set_edition('e_pm_quantum', nil, true)
                    c.edition.old_edition = key
                    c.edition.old_shader = xtype
                end
                if c.seal and c.seal ~= 'pm_seal_quantum' then -- seal check
                    local seal = c.seal
                    c:set_seal('pm_seal_quantum', nil, true)
                    c.ability.seal.old_seal = seal
                end 
            end

            for i=1, #G.play.cards do
                local c = G.play.cards[i]
                if c.ability.set == 'Enhanced' and c.config.center.key ~= G.P_CENTERS.m_pm_quantum then -- enhanced check
                    local key = c.config.center.key
                    c:set_ability('m_pm_quantum', nil, true)
                    c.ability.old_enhancement = key
                end
                if c.edition and c.edition.old_edition ~= 'e_pm_quantum' then
                    local key = c.edition.key
                    local xtype = c.edition.type
                    c:set_edition('e_pm_quantum', nil, true)
                    c.edition.old_edition = key
                    c.edition.old_shader = xtype
                end
                if c.seal and c.seal ~= 'pm_seal_quantum' then -- seal check
                    local seal = c.seal
                    c:set_seal('pm_seal_quantum', nil, true)
                    c.ability.seal.old_seal = seal
                end 
            end
    
            for i=1, #G.playing_cards do
                local c = G.playing_cards[i]
                if c.ability.set == 'Enhanced' and c.config.center.key ~= G.P_CENTERS.m_pm_quantum then -- enhanced check
                    local key = c.config.center.key
                    c:set_ability('m_pm_quantum', nil, true)
                    c.ability.old_enhancement = key
                end
                if c.edition and c.edition.old_edition ~= 'e_pm_quantum' then
                    local key = c.edition.key
                    local xtype = c.edition.type
                    c:set_edition('e_pm_quantum', nil, true)
                    c.edition.old_edition = key
                    c.edition.old_shader = xtype
                end
                if c.seal and c.seal ~= 'pm_seal_quantum' then -- seal check
                    local seal = c.seal
                    c:set_seal('pm_seal_quantum', nil, true)
                    c.ability.seal.old_seal = seal
                end 
            end
    
            for i=1, #G.jokers.cards do
                local c = G.jokers.cards[i]
                if c.ability.set == 'Enhanced' and c.config.center.key ~= G.P_CENTERS.m_pm_quantum then -- enhanced check
                    local key = c.config.center.key
                    c:set_ability('m_pm_quantum', nil, true)
                    c.ability.old_enhancement = key
                end
                if c.edition and c.edition.old_edition ~= 'e_pm_quantum' then
                    local key = c.edition.key
                    local xtype = c.edition.type
                    c:set_edition('e_pm_quantum', nil, true)
                    c.edition.old_edition = key
                    c.edition.old_shader = xtype
                end
                if c.seal and c.seal ~= 'pm_seal_quantum' then -- seal check
                    local seal = c.seal
                    c:set_seal('pm_seal_quantum', nil, true)
                    c.ability.seal.old_seal = seal
                end 
            end
        end
    end,
    check_for_unlock = function(self, args)
        if args.type == "boss_blind_win" then
            if G.GAME.pm_ach_conditions.bowser_won == true then
                return true
            end
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        for i=1, #G.hand.cards do
            local c = G.hand.cards[i]
            if c.ability.set == 'Enhanced' and c.config.center.key ~= G.P_CENTERS.m_pm_quantum then -- enhanced check
                local key = c.config.center.key
                c:set_ability('m_pm_quantum', nil, true)
                c.ability.old_enhancement = key
            end
            if c.edition then
                local key = c.edition.key
                local xtype = c.edition.type
                c:set_edition('e_pm_quantum', nil, true)
                c.edition.old_edition = key
                c.edition.old_shader = xtype
            end
            if c.seal and c.seal ~= 'pm_seal_quantum' then -- seal check
                local seal = c.seal
                c:set_seal('pm_seal_quantum', nil, true)
                c.ability.seal.old_seal = seal
            end 
        end

        for i=1, #G.playing_cards do
            local c = G.playing_cards[i]
            if c.ability.set == 'Enhanced' and c.config.center.key ~= G.P_CENTERS.m_pm_quantum then -- enhanced check
                local key = c.config.center.key
                c:set_ability('m_pm_quantum', nil, true)
                c.ability.old_enhancement = key
            end
            if c.edition then
                local key = c.edition.key
                local xtype = c.edition.type
                c:set_edition('e_pm_quantum', nil, true)
                c.edition.old_edition = key
                c.edition.old_shader = xtype
            end
            if c.seal and c.seal ~= 'pm_seal_quantum' then -- seal check
                local seal = c.seal
                c:set_seal('pm_seal_quantum', nil, true)
                c.ability.seal.old_seal = seal
            end 
        end

        for i=1, #G.jokers.cards do
            local c = G.jokers.cards[i]
            if c.ability.set == 'Enhanced' and c.config.center.key ~= G.P_CENTERS.m_pm_quantum then -- enhanced check
                local key = c.config.center.key
                c:set_ability('m_pm_quantum', nil, true)
                c.ability.old_enhancement = key
            end
            if c.edition then
                local key = c.edition.key
                local xtype = c.edition.type
                c:set_edition('e_pm_quantum', nil, true)
                c.edition.old_edition = key
                c.edition.old_shader = xtype
            end
            if c.seal and c.seal ~= 'pm_seal_quantum' then -- seal check
                local seal = c.seal
                c:set_seal('pm_seal_quantum', nil, true)
                c.ability.seal.old_seal = seal
            end 
        end
    end,

    remove_from_deck = function(self, card, from_debuff)
        for i=1, #G.hand.cards do
            local c = G.hand.cards[i]

            if c.config.center == G.P_CENTERS.m_pm_quantum then
                c:set_ability(c.ability.old_enhancement, nil, true)
            end

            if c.edition and c.edition.pm_quantum then
                c:set_edition(c.edition.old_edition, nil, true)
            end

            if c.seal and c.seal == 'pm_seal_quantum' then
                c:set_seal(c.ability.seal.old_seal, nil, true)
            end 
        end

        for i=1, #G.playing_cards do
            local c = G.playing_cards[i]
            if c.config.center == G.P_CENTERS.m_pm_quantum then
                c:set_ability(c.ability.old_enhancement, nil, true)
            end

            if c.edition and c.edition.pm_quantum then
                c:set_edition(c.edition.old_edition, nil, true)
            end

            if c.seal and c.seal == 'pm_seal_quantum' then
                c:set_seal(c.ability.seal.old_seal, nil, true)
            end 
        end

        for i=1, #G.jokers.cards do
            local c = G.jokers.cards[i]
            if c.config.center == G.P_CENTERS.m_pm_quantum then
                c:set_ability(c.ability.old_enhancement, nil, true)
            end

            if c.edition and c.edition.pm_quantum then
                c:set_edition(c.edition.old_edition, nil, true)
            end

            if c.seal and c.seal == 'pm_seal_quantum' then
                c:set_seal(c.ability.seal.old_seal, nil, true)
            end 
        end
    end,
    
}

SMODS.Joker{
    key = 'drybowser',
    rarity = 'pm_bosses',
    atlas = 'PMBossCards',
    pos = { x = 6, y = 3 },
    soul_pos = { x = 6, y = 2 },
    discovered = false,
    unlocked = false,
    cost = 20,
    blueprint_compat = false,
    config = { extra = { mult = 15, xmult = 1.5, death = false } },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.death and card.ability.xmult or card.ability.extra.mult, card.ability.extra.death and localize('pm_xmult') or localize('pm_dmult'), card.ability.extra.death and localize('pm_dead') or localize('pm_dry'), colours = {card.ability.extra.death and G.C.MULT or G.C.MULT} } }
    end,
    calculate = function(self, card, context)

        if context.individual and context.cardarea == G.play and context.other_card.config.center == G.P_CENTERS.m_stone then
            if not context.end_of_round and not context.before and not context.after and not context.other_card.debuff then
                if card.ability.extra.death then
                    return {
                        xmult = card.ability.extra.xmult,
                        card = card
                    }
                else
                    return {
                        mult = card.ability.extra.mult,
                        card = card
                    }
                end
            end
        end

        -- prevention of death
        if context.end_of_round and not context.blueprint and context.game_over and (to_big(G.GAME.chips) / to_big(G.GAME.blind.chips)) >= to_big(0.5) and not card.ability.extra.death then
            card.ability.extra.death = true -- death prevented, can no longer use this
            G.E_MANAGER:add_event(Event({
                func = function()
                    G.hand_text_area.blind_chips:juice_up()
                    G.hand_text_area.game_chips:juice_up()
                    play_sound('tarot1')
                    return true
                end
            })) 
            return {
                message = localize('k_saved_ex'),
                saved = true,
                colour = G.C.RED
            }
        end
    end,
    check_for_unlock = function(self, args)
        if args.type == "boss_blind_win" then
            if G.GAME.pm_ach_conditions.drybowser_won == true then
                return true
            end
        end
    end,
    
}

SMODS.Joker{
    key = 'boomboom',
    rarity = 'pm_bosses',
    atlas = 'PMBossCards',
    pos = { x = 7, y = 1 },
    soul_pos = { x = 7, y = 0 },
    discovered = false,
    unlocked = false,
    cost = 20,
    blueprint_compat = false,
    config = { extra = { retriggers = 1 } },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.retriggers} }
    end,
    calculate = function(self, card, context)

        -- Shake while first card is active
        if context.first_hand_drawn then
            if not context.blueprint and G.GAME.current_round.hands_played <= 0 then
                local eval = function() return G.GAME.current_round.hands_played == 0 and not G.RESET_JIGGLES end
                juice_card_until(self, eval, true)
            end
        end

        if context.repetition and context.cardarea == G.play and G.GAME.current_round.hands_played == 0 then
            return {
                message = localize("k_again_ex"),
                repetitions = card.ability.extra.retriggers,
                card = card
            }
        end

        if context.retrigger_joker_check and not context.retrigger_joker and context.other_card ~= card and G.GAME.current_round.hands_played == 0 then
            for i = 1, #G.jokers.cards do
                return {
                    message = localize("k_again_ex"),
                    repetitions = card.ability.extra.retriggers,
                    card = card
                }
            end 
        end
        
    end,
    check_for_unlock = function(self, args)
        if args.type == "boss_blind_win" then
            if G.GAME.pm_ach_conditions.boomboom_won == true then
                return true
            end
        end
    end,
    
}

SMODS.Joker{
    key = 'pompom',
    rarity = 'pm_bosses',
    atlas = 'PMBossCards',
    pos = { x = 7, y = 3 },
    soul_pos = { x = 7, y = 2 },
    discovered = false,
    unlocked = false,
    cost = 20,
    blueprint_compat = true,
    config = { extra = { exponent = 1.25 } },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.exponent} }
    end,
    calculate = function(self, card, context)

        if context.final_scoring_step then
            local m = to_big(mult)
            local milt = to_number(m ^ (card.ability.extra.exponent - 1))
            return {
                xmult = milt,
                remove_default_message  = true,
                message = localize("pm_exponential"), 
                colour = G.C.SECONDARY_SET.Tarot,
                card = card
            }
        end
        
    end,
    check_for_unlock = function(self, args)
        if args.type == "boss_blind_win" then
            if G.GAME.pm_ach_conditions.pompom_won == true then
                return true
            end
        end
    end,
    
}


----------------------------------------------
------------MOD CODE END----------------------