----------------------------------------------
--- #ADD TABLE OF CONTENTS#-------------------



------------MOD CODE -------------------------

-- Red Shy Guy
SMODS.Joker{
    key = 'shyguy',
    rarity = 1,
    atlas = 'PaperMario',
    discovered = true,
    cost = 1,
    blueprint_compat = true,
    pos = { x = 0, y = 0 },
    config = { extra = {chips = 50} },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.chips} }
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            return {
                chips = card.ability.extra.chips,
                card = card,
            }
        end
    end
}

-- Green Shy Guy
SMODS.Joker{
    key = 'greenguy',
    rarity = 1,
    atlas = 'PaperMario',
    discovered = true,
    cost = 2,
    blueprint_compat = true,
    pos = { x = 1, y = 0 },
    config = { extra = {chips = 25, suit = 'Spades'} },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.chips, localize(card.ability.extra.suit, 'suits_singular')} }
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play and context.other_card:is_suit(card.ability.extra.suit) then
            if not context.end_of_round and not context.before and not context.after and not context.other_card.debuff then
                return {
                    colour = G.C.CHIPS,
                    chips = card.ability.extra.chips,
                    card = card
              }
            end
        end
    end
}

-- Yellow Shy Guy
SMODS.Joker{
    key = 'yellowguy',
    rarity = 1,
    atlas = 'PaperMario',
    discovered = true,
    cost = 2,
    blueprint_compat = true,
    pos = { x = 3, y = 0 },
    config = { extra = {chips = 25, suit = 'Diamonds'} },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.chips, localize(card.ability.extra.suit, 'suits_singular')} }
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play and context.other_card:is_suit(card.ability.extra.suit) then
            if not context.end_of_round and not context.before and not context.after and not context.other_card.debuff then
                return {
                colour = G.C.CHIPS,
                chips = card.ability.extra.chips,
                card = card
              }
            end
        end
    end
}

-- Blue Shy Guy
SMODS.Joker{
    key = 'blueguy',
    rarity = 1,
    atlas = 'PaperMario',
    discovered = true,
    cost = 2,
    blueprint_compat = true,
    pos = { x = 2, y = 0 },
    config = { extra = {chips = 25, suit = 'Clubs'} },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.chips, localize(card.ability.extra.suit, 'suits_singular')} }
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play and context.other_card:is_suit(card.ability.extra.suit) then
            if not context.end_of_round and not context.before and not context.after and not context.other_card.debuff then
                return {
                colour = G.C.CHIPS,
                chips = card.ability.extra.chips,
                card = card
              }
            end
        end
    end
}

-- Pink Shy Guy
SMODS.Joker{
    key = 'pinkguy',
    rarity = 1,
    atlas = 'PaperMario',
    discovered = true,
    cost = 2,
    blueprint_compat = true,
    pos = { x = 4, y = 0 },
    config = { extra = {chips = 25, suit = 'Hearts'} },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.chips, localize(card.ability.extra.suit, 'suits_singular')} }
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play and context.other_card:is_suit(card.ability.extra.suit) then
            if not context.end_of_round and not context.before and not context.after and not context.other_card.debuff then
                return {
                colour = G.C.CHIPS,
                chips = card.ability.extra.chips,
                card = card
              }
            end
        end
    end
}

-- Red Slurp Guy
SMODS.Joker{
    key = 'slurpguy',
    rarity = 1,
    atlas = 'PaperMario',
    discovered = true,
    cost = 3,
    blueprint_compat = true,
    pos = { x = 5, y = 0 },
    config = { extra = {mult = 0, mult_gain = 5, slurp = 1} },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.mult, card.ability.extra.mult_gain} }
    end,
    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.before and not context.blueprint then 
            local count = 0 
            local enhanced = {}
            for k, v in ipairs(context.scoring_hand) do
                if v.config.center ~= G.P_CENTERS.c_base and not v.debuff and not v.vampired then 
                    enhanced[#enhanced+1] = v
                    v.vampired = true
                    count = count + 1
                    card:juice_up(0.3, 0.4)
                    v:set_ability(G.P_CENTERS.c_base, nil, true)
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            v:juice_up()
                            v.vampired = nil
                            return true
                        end
                    })) 
                end
            end
      
            if #enhanced > 0 then 
                if count > 0 then
                  card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_gain * count
                end

                return {
                    message = localize("pm_drained_ex"),
                    colour = G.C.MULT,
                    card = card
                }
            end
        end

          if context.cardarea == G.jokers and context.scoring_hand then
            if context.joker_main then
              return {
                colour = G.C.BLACK,
                mult = card.ability.extra.mult
              }
            end
        end
    end
}

-- Blue Slurp Guy
SMODS.Joker{
    key = 'blueslurp',
    rarity = 1,
    atlas = 'PaperMario',
    discovered = true,
    cost = 3,
    blueprint_compat = true,
    pos = { x = 6, y = 0 },
    config = { extra = {chips = 0, chip_gain = 20, slurp = 1} },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.chips, card.ability.extra.chip_gain} }
    end,
    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.before and not context.blueprint then 
            local c_count = 0 
            local enhanced = {}
            for k, v in ipairs(context.scoring_hand) do
                if v.config.center ~= G.P_CENTERS.c_base and not v.debuff and not v.vampired then 
                    enhanced[#enhanced+1] = v
                    v.vampired = true
                    c_count = c_count + 1
                    card:juice_up(0.3, 0.4)
                    v:set_ability(G.P_CENTERS.c_base, nil, true)
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            v:juice_up()
                            v.vampired = nil
                            return true
                        end
                    })) 
                end
            end
      
            if #enhanced > 0 then 
                if c_count > 0 then
                  card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.chip_gain * c_count
                end

                return {
                    message = localize("pm_drained_ex"),
                    colour = G.C.CHIPS,
                    card = card
                }
            end

            

          end
          if context.cardarea == G.jokers and context.scoring_hand then
            if context.joker_main then
              return {
                colour = G.C.BLACK,
                chips = card.ability.extra.chips
              }
            end
        end
    end
}

-- Yellow Slurp Guy
SMODS.Joker{
    key = 'yellowslurp',
    rarity = 1,
    atlas = 'PaperMario',
    discovered = true,
    cost = 3,
    blueprint_compat = true,
    pos = { x = 7, y = 0 },
    config = { extra = {money = 1, extra_money = 3, slurp = 1} },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = {set = 'Other', key = 'pm_low'}
        info_queue[#info_queue+1] = {set = 'Other', key = 'pm_high'}
        return { vars = {card.ability.extra.money, card.ability.extra.extra_money} }
    end,
    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.before and not context.blueprint then 
            local l_count = 0 -- stone, bonus, mult, lucky
            local h_count = 0 -- steel, glass, gold, and wild and other
            local enhanced = {}
            for k, v in ipairs(context.scoring_hand) do
                if v.config.center ~= G.P_CENTERS.c_base and not v.debuff and not v.vampired then 
                    enhanced[#enhanced+1] = v
                    v.vampired = true
                    if v.config.center == G.P_CENTERS.m_bonus or v.config.center == G.P_CENTERS.m_mult or v.config.center == G.P_CENTERS.m_stone or v.config.center == G.P_CENTERS.m_lucky then
                        l_count = l_count + 1
                    else -- to work with other modded enhancements
                        h_count = h_count + 1 
                    end
                    card:juice_up(0.3, 0.4)
                    v:set_ability(G.P_CENTERS.c_base, nil, true)
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            v:juice_up()
                            v.vampired = nil
                            return true
                        end
                    })) 
                end
            end
      
            if #enhanced > 0 then 
                if l_count > 0 then
                    ease_dollars(card.ability.extra.money * l_count)
                end
                if h_count > 0 then
                    ease_dollars(card.ability.extra.extra_money * h_count)                
                end

                return {
                    message = localize("pm_drained_ex"),
                    colour = G.C.MONEY,
                    card = card
                }
            end
          end
    end
}

-- Red Spike Guy
SMODS.Joker{
    key = 'spikeguy',
    rarity = 1,
    atlas = 'PaperMario',
    discovered = true,
    cost = 3,
    blueprint_compat = true,
    pos = { x = 0, y = 1 },
    config = { extra = {chips = 100} },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.chips} }
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            if string.find(context.scoring_name, "Flush") then
                return {
                    chips = card.ability.extra.chips,
                    colour = G.C.CHIPS,
                }
            end
		end
    end
}

-- Green Spike Guy
SMODS.Joker{
    key = 'greenspike',
    rarity = 1,
    atlas = 'PaperMario',
    discovered = true,
    cost = 3,
    blueprint_compat = true,
    pos = { x = 1, y = 1 },
    config = { extra = {chips = 150, suit = 'Spades', active = false} },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.chips, localize(card.ability.extra.suit, 'suits_singular'), card.ability.extra.active} }
    end,
    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.scoring_hand then
            if context.before then
                card.ability.extra.active = true
                local suit = card.ability.extra.suit
                for i = 1, #context.scoring_hand do
                    if not context.scoring_hand[i]:is_suit(suit) then
                        card.ability.extra.active = false
                        break
                    end
                end
            end
        end

        if context.joker_main and card.ability.extra.active then
            if string.find(context.scoring_name, "Flush") then
                return {
                    chips = card.ability.extra.chips,
                    colour = G.C.CHIPS,
                }
            end
		end     
    end
}

-- Blue Spike Guy
SMODS.Joker{
    key = 'bluespike',
    rarity = 1,
    atlas = 'PaperMario',
    discovered = true,
    cost = 3,
    blueprint_compat = true,
    pos = { x = 2, y = 1 },
    config = { extra = {chips = 150, suit = 'Clubs', active = false} },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.chips, localize(card.ability.extra.suit, 'suits_singular')} }
    end,
    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.scoring_hand then
            if context.before then
                card.ability.extra.active = true
                local suit = card.ability.extra.suit
                for i = 1, #context.scoring_hand do
                    if not context.scoring_hand[i]:is_suit(suit) then
                        card.ability.extra.active = false
                        break
                    end
                end
            end
        end

        if context.joker_main and card.ability.extra.active then
            if string.find(context.scoring_name, "Flush") then
                return {
                    chips = card.ability.extra.chips,
                    colour = G.C.CHIPS,
                }
            end
		end  
    end
}

-- Yellow Spike Guy
SMODS.Joker{
    key = 'yellowspike',
    rarity = 1,
    atlas = 'PaperMario',
    discovered = true,
    cost = 3,
    blueprint_compat = true,
    pos = { x = 3, y = 1 },
    config = { extra = {chips = 150, suit = 'Diamonds', active = false} },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.chips, localize(card.ability.extra.suit, 'suits_singular')} }
    end,
    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.scoring_hand then
            if context.before then
                card.ability.extra.active = true
                local suit = card.ability.extra.suit
                for i = 1, #context.scoring_hand do
                    if not context.scoring_hand[i]:is_suit(suit) then
                        card.ability.extra.active = false
                        break
                    end
                end
            end
        end

        if context.joker_main and card.ability.extra.active then
            if string.find(context.scoring_name, "Flush") then
                return {
                    chips = card.ability.extra.chips,
                    colour = G.C.CHIPS,
                }
            end
		end  
    end
}

-- Pink Spike Guy
SMODS.Joker{
    key = 'pinkspike',
    rarity = 1,
    atlas = 'PaperMario',
    discovered = true,
    cost = 3,
    blueprint_compat = true,
    pos = { x = 4, y = 1 },
    config = { extra = {chips = 150, suit = 'Hearts', active = false} },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.chips, localize(card.ability.extra.suit, 'suits_singular')} }
    end,
    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.scoring_hand then
            if context.before then
                card.ability.extra.active = true
                local suit = card.ability.extra.suit
                for i = 1, #context.scoring_hand do
                    if not context.scoring_hand[i]:is_suit(suit) then
                        card.ability.extra.active = false
                        break
                    end
                end
            end
        end

        if context.joker_main and card.ability.extra.active then
            if string.find(context.scoring_name, "Flush") then
                return {
                    chips = card.ability.extra.chips,
                    colour = G.C.CHIPS,
                }
            end
		end  
    end
}

-- Red Roller Guy
SMODS.Joker{
    key = 'rollerguy',
    rarity = 1,
    atlas = 'PaperMario',
    discovered = true,
    cost = 3,
    blueprint_compat = true,
    pos = { x = 5, y = 1 },
    config = { extra = {chips = 0, chip_gain = 25} },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.chips, card.ability.extra.chip_gain} }
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            return {
                chips = card.ability.extra.chips,
                colour = G.C.CHIPS,
            }
		end

        if context.before then
            if string.find(context.scoring_name, "Straight") then
                card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.chip_gain
                return {
                    colour = G.C.CHIPS,
                    message = localize("pm_upgraded"),
                    card = card
                }
            end
        end
    end
}

-- Green Roller Guy
SMODS.Joker{
    key = 'greenroller',
    rarity = 1,
    atlas = 'PaperMario',
    discovered = true,
    cost = 3,
    blueprint_compat = true,
    pos = { x = 6, y = 1 },
    config = { extra = {mult = 0, mult_gain = 3} },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.mult, card.ability.extra.mult_gain} }
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            return {
                mult = card.ability.extra.mult,
                colour = G.C.MULT,
                message = localize { type = 'variable', key = 'a_mult', vars = { card.ability.extra.mult } }
            }
		end

        if context.before then
            if string.find(context.scoring_name, "Straight") then
                card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_gain
                return {
                    colour = G.C.MULT,
                    message = localize("pm_upgraded"),
                    card = card
                }
            end
        end
    end
}

-- Pink Roller Guy
SMODS.Joker{
    key = 'pinkroller',
    rarity = 1,
    atlas = 'PaperMario',
    discovered = true,
    cost = 3,
    blueprint_compat = true,
    pos = { x = 7, y = 1 },
    config = { extra = {money = 5} },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.money} }
    end,
    calculate = function(self, card, context)
        if context.before then
            if string.find(context.scoring_name, "Straight") then
                ease_dollars(card.ability.extra.money)
                return {
                    colour = G.C.ATTENTION,
                    message = "$5",
                    card = card
                }
            end
        end
    end
}

-- Sombrero Guy
SMODS.Joker{
    key = 'sombreroguy',
    rarity = 4,
    atlas = 'PaperMario',
    discovered = false,
    cost = 20,
    blueprint_compat = false,
    pos = { x = 0, y = 2 },
    soul_pos = { x = 1, y = 2 },
    config = { extra = {retriggers = 1} },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.retriggers} }
    end,
    calculate = function(self, card, context)
        if context.retrigger_joker_check and not context.retrigger_joker and context.other_card ~= card then
            for i = 1, #G.jokers.cards do
                return {
                    message = localize("pm_again_ex"),
                    repetitions = card.ability.extra.retriggers,
                    card = card
                }
            end 
        end    
    end
}

-- Shy Bandit
SMODS.Joker{
    key = 'shybandit',
    rarity = 3,
    atlas = 'PaperMario',
    discovered = false,
    cost = 7,
    blueprint_compat = true,
    pos = { x = 2, y = 2 },
    config = { extra = {Xmult = 1.0, odds = 2, Xmult_gain = 0.25, money = 3, slurp = 1} },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.Xmult, (G.GAME.probabilities.normal or 1), card.ability.extra.odds, card.ability.extra.Xmult_gain, card.ability.extra.money } }
    end,
    calculate = function(self, card, context)

        -- Shake while first card is active
        if context.first_hand_drawn then
            if not context.blueprint and G.GAME.current_round.hands_played <= 0 then
                local eval = function() return G.GAME.current_round.hands_played == 0 and not G.RESET_JIGGLES end
                juice_card_until(card, eval, true)
            end
        end

        -- Applies the Xmult.
        if context.cardarea == G.jokers and context.scoring_hand then
            if context.joker_main then
                return {
                    Xmult = card.ability.extra.Xmult,
                    card = card
                }
            end
        end

        -- The 'slurping' part of the ability
        if context.destroying_card and not context.blueprint then
             -- if first hand is 1 card, then...
             if context.full_hand and #context.full_hand == 1 and G.GAME.current_round.hands_played == 0 then
                -- 1 in 2 chance to destroy the card in hand
                local rand_cond = pseudorandom('shybandit') < (G.GAME.probabilities.normal / card.ability.extra.odds)
                if rand_cond then
                   local slurped_card = context.full_hand[1]

                    -- Increase this card's XMult
                    card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.Xmult_gain

                    -- give you money
                    ease_dollars(card.ability.extra.money)

                    play_sound('tarot1')

                    card:juice_up(0.3, 0.4)

                    card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize("pm_upgraded")})
                end
                return rand_cond
            end
            return nil
        end
    end
}

-- Goomba
SMODS.Joker{
    key = 'goomba',
    rarity = 1,
    atlas = 'PaperMario',
    discovered = true,
    cost = 2,
    blueprint_compat = true,
    pos = { x = 3, y = 2 },
    config = { extra = {mult = 5} },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.mult} }
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            return {
                mult = card.ability.extra.mult,
                card = card
            }
        end
    end
}

-- Paragoomba
SMODS.Joker{
    key = 'paragoomba',
    rarity = 2,
    atlas = 'PaperMario',
    discovered = true,
    cost = 3,
    blueprint_compat = true,
    pos = { x = 4, y = 2 },
    config = { extra = {mult = 20} },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.mult} }
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            if string.find(context.scoring_name, "High Card") then
                return {
                    mult = card.ability.extra.mult,
                    card = card
                }
            end
		end
    end
}

-- Bone Goomba
SMODS.Joker{
    key = 'bonegoomba',
    rarity = 2,
    atlas = 'PaperMario',
    discovered = true,
    cost = 4,
    blueprint_compat = true,
    pos = { x = 5, y = 2 },
    config = { extra = {retriggers = 1, mult = 8} },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.retriggers, card.ability.extra.mult} }
    end,
    calculate = function(self, card, context)

        if context.cardarea == G.play and context.repetition and not context.repetition_only then
			if context.other_card == context.scoring_hand[1] then
                card:juice_up(0.3, 0.4)
				return {
					message = localize('pm_again'),
					repetitions = card.ability.extra.retriggers,
					card = context.other_card
				}
			end
		end


        if context.individual and context.cardarea == G.play then
            if not context.end_of_round and not context.before and not context.after and not context.other_card.debuff then
              if context.other_card == context.scoring_hand[1] then
                return {
                    mult = card.ability.extra.mult,
                    card = context.other_card
                }
              end
            end
        end
    end
}

-- Koopa Troopa
SMODS.Joker{
    key = 'koopa',
    rarity = 3,
    atlas = 'PaperMario',
    discovered = true,
    cost = 6,
    blueprint_compat = true,
    pos = { x = 6, y = 2 },
    config = { extra = {hand = "Straight", bonus = 15} },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.hand, card.ability.extra.bonus} }
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play then
            if not context.end_of_round and not context.before and not context.after and not context.other_card.debuff then
                if string.find(context.scoring_name, card.ability.extra.hand) then
                    local conv_card = context.other_card
                    local current_bonus = conv_card.ability.perma_bonus or 0
                    conv_card.ability.perma_bonus = current_bonus + card.ability.extra.bonus
                    return {
                        message = "+"..conv_card.ability.perma_bonus.." Chips",
                        colour = G.C.CHIPS,
                        card = conv_card
                    }
                end
            end
		end
    end
}

-- Para Troopa
SMODS.Joker{
    key = 'paratroop',
    rarity = 3,
    atlas = 'PaperMario',
    discovered = true,
    cost = 8,
    blueprint_compat = true,
    pos = { x = 7, y = 2 },
    config = { extra = {hand = "Straight"} },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.hand} }
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play then
            if not context.end_of_round and not context.before and not context.after and not context.other_card.debuff then
                if string.find(context.scoring_name, card.ability.extra.hand) then
                    local total_chips = pm_total_chips(context.other_card)
                    context.other_card:juice_up(0.3, 0.4)
                    return {
                        mult = total_chips,
                        colour = G.C.MULT,
                        card = context.other_card
                    }
                end
            end
		end
    end
}

-- Swoop
SMODS.Joker{
    key = 'swoop',
    rarity = 2,
    atlas = 'PaperMario',
    discovered = true,
    cost = 4,
    blueprint_compat = true,
    pos = { x = 0, y = 3 },
    config = { extra = {bonus_chips = 10} },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.bonus_chips} }
    end,
    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.before and not context.blueprint then 
            local enhanced = {}
            for k, v in ipairs(context.scoring_hand) do
                if v.config.center ~= G.P_CENTERS.c_base and not v.debuff and not v.vampired then 
                    enhanced[#enhanced+1] = v
                    local current_bonus = v.ability.perma_bonus or 0
                    v.ability.perma_bonus = current_bonus + card.ability.extra.bonus_chips
                    v.vampired = true
                    card:juice_up(0.3, 0.4)
                    v:set_ability(G.P_CENTERS.c_base, nil, true)
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            v:juice_up()
                            v.vampired = nil
                            return true
                        end
                    })) 
                end
            end
      
            if #enhanced > 0 then 
                return {
                    message = localize("pm_drained_ex"),
                    colour = G.C.MULT,
                    card = card
                }
            end
		end
    end
}

-- Cheep Cheep
SMODS.Joker{
    key = 'cheep',
    rarity = 1,
    atlas = 'PaperMario',
    discovered = true,
    cost = 3,
    blueprint_compat = false,
    pos = { x = 1, y = 3 },
    config = { extra = {chips = 0 , chip_gain = 5} },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips, card.ability.extra.chip_gain } }
    end,
    calculate = function(self, card, context)

        -- Gets all nonscoring cards and adds them to the card.
        if context.cardarea == G.jokers and context.scoring_hand and context.full_hand then
            if context.joker_main then
                local gain = card.ability.extra.chip_gain * math.abs(#context.scoring_hand - #context.full_hand)
                card.ability.extra.chips = card.ability.extra.chips + gain
                card:juice_up(0.3, 0.4)
                return {
                    chips = card.ability.extra.chips,
                    card = card
                }
            end
        end

    end
}

-- Blooper
SMODS.Joker{
    key = 'bloop',
    rarity = 2,
    atlas = 'PaperMario',
    discovered = false,
    cost = 6,
    blueprint_compat = true,
    pos = { x = 2, y = 3 },
    config = { extra = {Xmult = 3, odds = 5} },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.Xmult, (G.GAME.probabilities.normal or 1), card.ability.extra.odds } }
    end,
    calculate = function(self, card, context)

        -- Applies the Mult.
        if context.cardarea == G.jokers and context.scoring_hand then
            if context.joker_main then
                return {
                    xmult = card.ability.extra.Xmult,
                    card = card
                }
            end
        end

        -- makes it so that cards have a chance to be flipped over when a hand is played
        if context.cardarea == G.hand then
            for i = 1, #G.hand.cards do
                if pseudorandom(pseudoseed('bloop')) < G.GAME.probabilities.normal / card.ability.extra.odds then
                    G.hand.cards[i]:flip()
                    card:juice_up(0.3, 0.4)
                end
            end
        end
    end
}

-- Fishy Boopkins
SMODS.Joker{
    key = 'fishyboop',
    rarity = 3,
    atlas = 'PaperMario',
    discovered = false,
    cost = 7,
    blueprint_compat = true,
    pos = { x = 3, y = 3 },
    config = { extra = {hand = "Straight", hand_extra = "Flush"} },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.c_pm_spinjump
        info_queue[#info_queue+1] = G.P_CENTERS.c_pm_hugelinejump
        return { vars = { card.ability.extra.hand, card.ability.extra.hand_extra } }
    end,
    calculate = function(self, card, context)
        if context.before and context.cardarea == G.jokers then
            if string.find(context.scoring_name, card.ability.extra.hand) then
                local t = {
                    area = G.consumeables,
                    key = 'c_pm_spinjump'
                }
                SMODS.add_card(t)
                card:juice_up()
                return{
                    message = localize("pm_spiked"),
                    color = G.C.ATTENTION,
                    card = card
                }
            end
            if string.find(context.scoring_name, card.ability.extra.hand_extra) then
                local t = {
                    area = G.consumeables,
                    key = 'c_pm_hugelinejump'
                }
                SMODS.add_card(t)
                card:juice_up()
                return{
                    message = localize("pm_spiked"),
                    color = G.C.ATTENTION,
                    card = card
                }
            end
        end
    end
}

-- Dry Bones 
SMODS.Joker{
    key = 'drybones',
    rarity = 2,
    atlas = 'PaperMario',
    discovered = false,
    cost = 5,
    blueprint_compat = true,
    pos = { x = 4, y = 3 },
    config = { extra = { chips = 15, mult = 7, death = false } },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.death and card.ability.extra.mult or card.ability.extra.chips, card.ability.extra.death and localize('pm_mult') or localize('pm_chips'), card.ability.extra.death and localize('pm_dead') or localize('pm_dry'), colours = {card.ability.extra.death and G.C.MULT or G.C.CHIPS} } }
    end,
    calculate = function(self, card, context)

        if context.individual and context.cardarea == G.play and context.other_card.config.center == G.P_CENTERS.m_stone then
            if not context.end_of_round and not context.before and not context.after and not context.other_card.debuff then
                if card.ability.extra.death then
                    return {
                        mult = card.ability.extra.mult,
                        card = card
                    }
                else
                    return {
                        chips = card.ability.extra.chips,
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
       
    end
}

-- Boo
SMODS.Joker{
    key = 'boo',
    rarity = 2,
    atlas = 'PaperMario',
    discovered = false,
    cost = 5,
    blueprint_compat = false,
    pos = { x = 6, y = 3 },
    config = { extra = {odds = 4} },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.e_negative
        return { vars = { (G.GAME.probabilities.normal or 1), card.ability.extra.odds } }
    end,
    calculate = function(self, card, context)

        if not context.repetition and not context.individual and context.end_of_round and not context.blueprint then
            if pseudorandom('boo') < G.GAME.probabilities.normal/ card.ability.extra.odds then
                if #G.jokers.cards > 0 then
                    local eligible_editionless_jokers = {}
                    for k, v in pairs(G.jokers.cards) do
                      if v.ability.set == 'Joker' and v ~= card and not v.gone and not v.edition then
                          table.insert(eligible_editionless_jokers, v)
                      end
                    end
                    if #eligible_editionless_jokers > 0 then
                      local eligible_card = pseudorandom_element(eligible_editionless_jokers, pseudoseed('boo2'))
                      local edition = {negative = true}
                      eligible_card:set_edition(edition, true)
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
    end
}

-- Scaredy Rat
SMODS.Joker{
    key = 'rat',
    rarity = 2,
    atlas = 'PaperMario',
    discovered = false,
    cost = 3,
    blueprint_compat = true,
    pos = { x = 7, y = 3 },
    config = { extra = {Xchips = 1.5} },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.Xchips } }
    end,
    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.scoring_hand then
            if context.joker_main then
                return {
                    message = localize { type = 'variable', key = 'a_xchips', vars = { card.ability.extra.Xchips } } ,
                    colour = G.C.CHIPS,
                    chip_mod = hand_chips * (card.ability.extra.Xchips - 1),
                    card = card
                }
            end
        end
    end
}

-- Fuzzy
SMODS.Joker{
    key = 'fuzzy',
    rarity = 3,
    atlas = 'PaperMario',
    discovered = false,
    cost = 7,
    blueprint_compat = true,
    pos = { x = 0, y = 4 },
    config = { extra = {hands = 1} },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.hands } }
    end,
    calculate = function(self, card, context)
        
        -- Shake while discard is active
        if context.first_hand_drawn then
            if not context.blueprint and G.GAME.current_round.discards_used <= 0 then
                local eval = function() return G.GAME.current_round.discards_used <= 0 and not G.RESET_JIGGLES end
                juice_card_until(card, eval, true)
            end
        end

        -- Applies the mult.
        if context.cardarea == G.jokers and context.scoring_hand then
            if context.joker_main then
                return {
                    mult = card.ability.extra.mult
                }
            end
        end

        if context.discard then
            if not context.blueprint and G.GAME.current_round.discards_used <= 0 and #context.full_hand == 1 then
                    ease_hands_played(1)
                    card:juice_up(0.3, 0.4)
                    card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize("pm_upgraded")})
                    return {
                        remove = true,
                        card = self
                    }
            end
        end

    end
}


-- Ninji
SMODS.Joker{
    key = 'ninji',
    rarity = 3,
    atlas = 'PaperMario',
    discovered = false,
    cost = 8,
    blueprint_compat = true,
    pos = { x = 1, y = 4 },
    config = { extra = {suit = "Spades", mult = 7, Xmult = 1.5} },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, card.ability.extra.Xmult } }
    end,
    calculate = function(self, card, context)
        if context.individual and not context.end_of_round and context.cardarea == G.hand and context.other_card:is_suit(card.ability.extra.suit) then
            if context.other_card.debuff then
                return {
                    message = localize('k_debuffed'),
                    colour = G.C.RED,
                    card = card,
                }
            elseif G.GAME.current_round.hands_left == 0 then
                return {
                    x_mult = card.ability.extra.Xmult,
                    card = card
                }
            else
                return {
                    h_mult = card.ability.extra.mult,
                    card = card
                }
            end
        end
    end
}

-- Red Snifit
SMODS.Joker{
    key = 'snifit',
    rarity = 2,
    atlas = 'PaperMario',
    discovered = true,
    cost = 4,
    blueprint_compat = true,
    pos = { x = 2, y = 4 },
    config = { extra = {hand = "Three of a Kind", chips = 20, rank = 0} },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.hand, card.ability.extra.chips } }
    end,
    calculate = function(self, card, context)
        
        if context.before and next(context.poker_hands[card.ability.extra.hand]) and not context.blueprint then
            card.ability.extra.rank = context.poker_hands[card.ability.extra.hand][1][1]:get_id()
        end
        
        if context.individual and context.cardarea == G.play and context.other_card:get_id() == card.ability.extra.rank then
            if not context.end_of_round and not context.before and not context.after and not context.other_card.debuff then
                return {
                    colour = G.C.CHIPS,
                    chips = card.ability.extra.chips,
                    card = card
              }
            end
        end
    end
}

-- Green Snifit
SMODS.Joker{
    key = 'greensnifit',
    rarity = 2,
    atlas = 'PaperMario',
    discovered = true,
    cost = 5,
    blueprint_compat = true,
    pos = { x = 3, y = 4 },
    config = { extra = {mult = 6, suit = 'Spades'} },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.mult, localize(card.ability.extra.suit, 'suits_singular')} }
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play and context.other_card:is_suit(card.ability.extra.suit) then
            if not context.end_of_round and not context.before and not context.after and not context.other_card.debuff then
                return {
                    colour = G.C.MULT,
                    mult = card.ability.extra.mult,
                    card = card
              }
            end
        end
    end
}

-- Yellow Snifit
SMODS.Joker{
    key = 'yellowsnifit',
    rarity = 2,
    atlas = 'PaperMario',
    discovered = true,
    cost = 5,
    blueprint_compat = true,
    pos = { x = 5, y = 4 },
    config = { extra = {mult = 6, suit = 'Diamonds'} },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.mult, localize(card.ability.extra.suit, 'suits_singular')} }
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play and context.other_card:is_suit(card.ability.extra.suit) then
            if not context.end_of_round and not context.before and not context.after and not context.other_card.debuff then
                return {
                    colour = G.C.MULT,
                    mult = card.ability.extra.mult,
                    card = card
              }
            end
        end
    end
}

-- Blue Snifit
SMODS.Joker{
    key = 'bluesnifit',
    rarity = 2,
    atlas = 'PaperMario',
    discovered = true,
    cost = 5,
    blueprint_compat = true,
    pos = { x = 4, y = 4 },
    config = { extra = {mult = 6, suit = 'Clubs'} },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.mult, localize(card.ability.extra.suit, 'suits_singular')} }
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play and context.other_card:is_suit(card.ability.extra.suit) then
            if not context.end_of_round and not context.before and not context.after and not context.other_card.debuff then
                return {
                    colour = G.C.MULT,
                    mult = card.ability.extra.mult,
                    card = card
              }
            end
        end
    end
}

-- Pink Snifit
SMODS.Joker{
    key = 'pinksnifit',
    rarity = 2,
    atlas = 'PaperMario',
    discovered = true,
    cost = 5,
    blueprint_compat = true,
    pos = { x = 6, y = 4 },
    config = { extra = {mult = 6, suit = 'Hearts'} },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.mult, localize(card.ability.extra.suit, 'suits_singular')} }
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play and context.other_card:is_suit(card.ability.extra.suit) then
            if not context.end_of_round and not context.before and not context.after and not context.other_card.debuff then
                return {
                    colour = G.C.MULT,
                    mult = card.ability.extra.mult,
                    card = card
              }
            end
        end
    end
}

-- Red Slurp Snifit
SMODS.Joker{
    key = 'slurfit',
    rarity = 2,
    atlas = 'PaperMario',
    discovered = true,
    cost = 6,
    blueprint_compat = true,
    pos = { x = 7, y = 4 },
    config = { extra = {mult = 0, Xmult = 1.0, mult_gain = 5, Xmult_gain = 0.1, slurp = 2} },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = {set = 'Other', key = 'pm_slurpforone'}
        info_queue[#info_queue+1] = {set = 'Other', key = 'pm_slurp'}
        return { vars = { card.ability.extra.mult_gain, card.ability.extra.Xmult_gain, card.ability.extra.mult, card.ability.extra.Xmult } }
    end,
    calculate = function(self, card, context)
        
        -- detects if other slurp cards exist
        -- also detects if the only other slurp cards have all for one. if this is the leftmost one, this doesn't get debuffed.
        if context.cardarea == G.jokers and (context.before or context.first_hand_drawn) and not context.blueprint then
            for k, v in ipairs(G.jokers.cards) do
                if v ~= card and v.ability and type(v.ability.extra) == 'table' and v.ability.extra.slurp and v.ability.extra.slurp == 1 then
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            card:set_debuff(true)
                            return true
                        end
                    }))
                    return {
                        message = localize('k_debuffed'),
                        colour = G.C.RED,
                        card = card,
                    } 
                elseif v ~= card and v.ability and type(v.ability.extra) == 'table' and v.ability.extra.slurp and v.ability.extra.slurp == 2 then
                    if card ~= G.jokers.cards[1] then
                        G.E_MANAGER:add_event(Event({
                            func = function()
                                card:set_debuff(true)
                                return true
                            end
                        })) 
                        return {
                            message = localize('k_debuffed'),
                            colour = G.C.RED,
                            card = card,
                        }
                    end
                end
            end
        end

        -- Editions boosting
        if context.cardarea == G.jokers and context.before and not context.blueprint then 
            local m_count = 0 
            local x_count = 0
            local enhanced = {}
            for k, v in ipairs(context.scoring_hand) do
                if v.config.center ~= G.P_CENTERS.c_base and not v.debuff and not v.vampired then 
                    enhanced[#enhanced+1] = v
                    v.vampired = true
                    
                    if v.config.center == G.P_CENTERS.m_mult then
                        m_count = m_count + 1
                    end

                    if v.config.center == G.P_CENTERS.m_steel or v.config.center == G.P_CENTERS.m_glass then
                        x_count = x_count + 1
                    end

                    card:juice_up(0.3, 0.4)
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            v:juice_up()
                            v.vampired = nil
                            return true
                        end
                    })) 
                end
            end
      
            if #enhanced > 0 then 
                if m_count > 0 then
                  card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_gain * m_count
                end
                if x_count > 0 then
                    card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.Xmult_gain * x_count
                  end

                return {
                    message = localize("pm_drained_ex"),
                    colour = G.C.MULT,
                    card = card
                }
            end
        end

        -- Finally, applying the mult and Xmult
        if context.cardarea == G.jokers and context.scoring_hand then
            if context.joker_main then
              return {
                colour = G.C.BLACK,
                mult = card.ability.extra.mult,
                xmult = card.ability.extra.Xmult
              }
            end
        end
    end
}

-- Blue Slurp Snifit
SMODS.Joker{
    key = 'blueslurfit',
    rarity = 2,
    atlas = 'PaperMario',
    discovered = true,
    cost = 6,
    blueprint_compat = true,
    pos = { x = 0, y = 5 },
    config = { extra = {chips = 0, bonus_gain = 35, chip_mult = 1, cmult_gain = 0.25, slurp = 2} },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = {set = 'Other', key = 'pm_slurpforone'}
        info_queue[#info_queue+1] = {set = 'Other', key = 'pm_slurp'}
        return { vars = { card.ability.extra.bonus_gain, card.ability.extra.cmult_gain, card.ability.extra.chips, card.ability.extra.chip_mult } }
    end,
    calculate = function(self, card, context)
        
        -- detects if other slurp cards exist
        -- also detects if the only other slurp cards have all for one. if this is the leftmost one, this doesn't get debuffed.
        if context.cardarea == G.jokers and (context.before or context.first_hand_drawn) and not context.blueprint then
            for k, v in ipairs(G.jokers.cards) do
                if v ~= card and v.ability and type(v.ability.extra) == 'table' and v.ability.extra.slurp and v.ability.extra.slurp == 1 then
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            card:set_debuff(true)
                            return true
                        end
                    }))
                    return {
                        message = localize('k_debuffed'),
                        colour = G.C.RED,
                        card = card,
                    } 
                elseif v ~= card and v.ability and type(v.ability.extra) == 'table' and v.ability.extra.slurp and v.ability.extra.slurp == 2 then
                    if card ~= G.jokers.cards[1] then
                        G.E_MANAGER:add_event(Event({
                            func = function()
                                card:set_debuff(true)
                                return true
                            end
                        })) 
                        return {
                            message = localize('k_debuffed'),
                            colour = G.C.RED,
                            card = card,
                        }
                    end
                end
            end
        end

        -- Editions boosting
        if context.cardarea == G.jokers and context.before and not context.blueprint then 
            local b_count = 0 
            local s_count = 0
            local x_count = 0
            local enhanced = {}
            for k, v in ipairs(context.scoring_hand) do
                if (v.config.center ~= G.P_CENTERS.c_base or v.edition) and not v.debuff and not v.vampired then 
                    enhanced[#enhanced+1] = v
                    
                    if v.config.center == G.P_CENTERS.m_bonus then
                        b_count = b_count + 1
                    end

                    if v.config.center == G.P_CENTERS.m_stone then
                        s_count = s_count + 1
                    end

                    if v.edition and v.edition.key then
                        if v.edition.key == 'e_foil' then
                            x_count = x_count + 1
                        end
                    end

                    card:juice_up(0.3, 0.4)
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            v:juice_up()
                            return true
                        end
                    })) 
                end
            end
      
            if #enhanced > 0 then 
                if b_count > 0 then
                  card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.bonus_gain * b_count
                end

                if s_count > 0 then
                    card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.bonus_gain * s_count
                end

                if x_count > 0 then
                    card.ability.extra.chip_mult = card.ability.extra.chip_mult + card.ability.extra.cmult_gain * x_count
                end

                return {
                    message = localize("pm_drained_ex"),
                    colour = G.C.CHIPS,
                    card = card
                }
            end
        end

        -- Finally, applying the chips
        if context.cardarea == G.jokers and context.scoring_hand then
            if context.joker_main then
              return {
                colour = G.C.BLACK,
                chips = card.ability.extra.chips,
                xchips = card.ability.extra.chip_mult,
              }
            end
        end
    end
}

-- Yellow Slurp Snifit
SMODS.Joker{
    key = 'yellowslurfit',
    rarity = 2,
    atlas = 'PaperMario',
    discovered = true,
    cost = 7,
    blueprint_compat = true,
    pos = { x = 1, y = 5 },
    config = { extra = {mult = 0, chips = 0, Xmult = 1.0, money = 3, mult_gain = 5, chip_gain = 10, Xmult_gain = 0.3, slurp = 2} },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = {set = 'Other', key = 'pm_slurpforone'}
        info_queue[#info_queue+1] = {set = 'Other', key = 'pm_slurp'}
        return { vars = { card.ability.extra.mult_gain, card.ability.extra.money, card.ability.extra.chip_gain, card.ability.extra.Xmult_gain, card.ability.extra.mult, card.ability.extra.chips, card.ability.extra.Xmult } }
    end,
    calculate = function(self, card, context)
        
        -- detects if other slurp cards exist
        -- also detects if the only other slurp cards have all for one. if this is the leftmost one, this doesn't get debuffed.
        if context.cardarea == G.jokers and (context.before or context.first_hand_drawn) and not context.blueprint then
            for k, v in ipairs(G.jokers.cards) do
                if v ~= card and v.ability and type(v.ability.extra) == 'table' and v.ability.extra.slurp and v.ability.extra.slurp == 1 then
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            card:set_debuff(true)
                            return true
                        end
                    }))
                    return {
                        message = localize('k_debuffed'),
                        colour = G.C.RED,
                        card = card,
                    } 
                elseif v ~= card and v.ability and type(v.ability.extra) == 'table' and v.ability.extra.slurp and v.ability.extra.slurp == 2 then
                    if card ~= G.jokers.cards[1] then
                        G.E_MANAGER:add_event(Event({
                            func = function()
                                card:set_debuff(true)
                                return true
                            end
                        })) 
                        return {
                            message = localize('k_debuffed'),
                            colour = G.C.RED,
                            card = card,
                        }
                    end
                end
            end
        end

        -- Editions boosting
        if context.cardarea == G.jokers and context.before and not context.blueprint then 
            local g_count = 0 
            local w_count = 0
            local enhanced = {}
            for k, v in ipairs(context.scoring_hand) do
                if v.config.center ~= G.P_CENTERS.c_base and not v.debuff and not v.vampired then 
                    enhanced[#enhanced+1] = v
                    
                    if v.config.center == G.P_CENTERS.m_gold then
                        g_count = g_count + 1
                        ease_dollars(card.ability.extra.money)
                    end

                    if v.config.center == G.P_CENTERS.m_wild then
                        w_count = w_count + 1
                    end

                    card:juice_up(0.3, 0.4)
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            v:juice_up()
                            v.vampired = nil
                            return true
                        end
                    })) 
                end
            end
      
            if #enhanced > 0 then 
                if g_count > 0 then
                  card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_gain * g_count
                end

                if w_count > 0 then
                    card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.chip_gain * w_count
                end

                return {
                    message = localize("pm_drained_ex"),
                    colour = G.C.ATTENTION,
                    card = card
                }
            end
        end

        if context.individual and context.cardarea == G.play then
            if context.other_card.lucky_trigger and not context.blueprint then
                card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.Xmult_gain
                return {
                    message = localize("pm_upgraded"),
                    colour = G.C.ATTENTION,
                    card = card
                }
            end
        end

        -- Finally, applying the chips
        if context.cardarea == G.jokers and context.scoring_hand then
            if context.joker_main then
              return {
                colour = G.C.BLACK,
                chips = card.ability.extra.chips,
                mult = card.ability.extra.mult,
                Xmult = card.ability.extra.Xmult,
                card = card,
              }
            end
        end
    end
}

-- Red Spike Snifit
SMODS.Joker{
    key = 'spikesnif',
    rarity = 1,
    atlas = 'PaperMario',
    discovered = true,
    cost = 3,
    blueprint_compat = true,
    pos = { x = 2, y = 5 },
    config = { extra = {mult = 15} },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.mult} }
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            if string.find(context.scoring_name, "Flush") then
                return {
                    mult = card.ability.extra.mult,
                    card = card,
                }
            end
		end
    end
}

-- Green Spike Snifit
SMODS.Joker{
    key = 'greenspikesnif',
    rarity = 1,
    atlas = 'PaperMario',
    discovered = true,
    cost = 6,
    blueprint_compat = true,
    pos = { x = 3, y = 5 },
    config = { extra = {mult = 20, suit = 'Spades', active = false} },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.mult, localize(card.ability.extra.suit, 'suits_singular')} }
    end,
    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.scoring_hand then
            if context.before then
                card.ability.extra.active = true
                local suit = card.ability.extra.suit
                for i = 1, #context.scoring_hand do
                    if not context.scoring_hand[i]:is_suit(suit) then
                        card.ability.extra.active = false
                        break
                    end
                end
            end
        end

        if context.joker_main and card.ability.extra.active then
            if string.find(context.scoring_name, "Flush") then
                return {
                    mult = card.ability.extra.mult,
                    card = card
                }
            end
		end     
    end
}

-- Blue Spike Snifit
SMODS.Joker{
    key = 'bluespikesnif',
    rarity = 1,
    atlas = 'PaperMario',
    discovered = true,
    cost = 6,
    blueprint_compat = true,
    pos = { x = 4, y = 5 },
    config = { extra = {mult = 20, suit = 'Clubs', active = false} },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.mult, localize(card.ability.extra.suit, 'suits_singular')} }
    end,
    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.scoring_hand then
            if context.before then
                card.ability.extra.active = true
                local suit = card.ability.extra.suit
                for i = 1, #context.scoring_hand do
                    if not context.scoring_hand[i]:is_suit(suit) then
                        card.ability.extra.active = false
                        break
                    end
                end
            end
        end

        if context.joker_main and card.ability.extra.active then
            if string.find(context.scoring_name, "Flush") then
                return {
                    mult = card.ability.extra.mult,
                    card = card
                }
            end
		end     
    end
}

-- Yellow Spike Snifit
SMODS.Joker{
    key = 'yellowspikesnif',
    rarity = 1,
    atlas = 'PaperMario',
    discovered = true,
    cost = 6,
    blueprint_compat = true,
    pos = { x = 5, y = 5 },
    config = { extra = {mult = 20, suit = 'Diamonds', active = false} },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.mult, localize(card.ability.extra.suit, 'suits_singular')} }
    end,
    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.scoring_hand then
            if context.before then
                card.ability.extra.active = true
                local suit = card.ability.extra.suit
                for i = 1, #context.scoring_hand do
                    if not context.scoring_hand[i]:is_suit(suit) then
                        card.ability.extra.active = false
                        break
                    end
                end
            end
        end

        if context.joker_main and card.ability.extra.active then
            if string.find(context.scoring_name, "Flush") then
                return {
                    mult = card.ability.extra.mult,
                    card = card
                }
            end
		end     
    end
}

-- Pink Spike Snifit
SMODS.Joker{
    key = 'pinkspikesnif',
    rarity = 1,
    atlas = 'PaperMario',
    discovered = true,
    cost = 6,
    blueprint_compat = true,
    pos = { x = 6, y = 5 },
    config = { extra = {mult = 20, suit = 'Hearts', active = false} },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.mult, localize(card.ability.extra.suit, 'suits_singular')} }
    end,
    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.scoring_hand then
            if context.before then
                card.ability.extra.active = true
                local suit = card.ability.extra.suit
                for i = 1, #context.scoring_hand do
                    if not context.scoring_hand[i]:is_suit(suit) then
                        card.ability.extra.active = false
                        break
                    end
                end
            end
        end

        if context.joker_main and card.ability.extra.active then
            if string.find(context.scoring_name, "Flush") then
                return {
                    mult = card.ability.extra.mult,
                    card = card
                }
            end
		end     
    end
}

-- Spiny
SMODS.Joker{
    key = 'spiny',
    rarity = 3,
    atlas = 'PaperMario',
    discovered = false,
    cost = 6,
    blueprint_compat = true,
    pos = { x = 7, y = 5 },
    config = { extra = {retriggers = 1, active = false} },
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    calculate = function(self, card, context)
        -- Why is this different from the base flush check?
        -- i injected a new way to check for flushes and I don't want
        -- this joker to trigger when that card makes a flush.
        if context.cardarea == G.jokers and context.scoring_hand then
            if context.before then
                card.ability.extra.active = true

                local suits = {
                    "Spades",
                    "Hearts",
                    "Clubs",
                    "Diamonds"
                }
                local flush_found = false
                local hand = context.scoring_hand

                for j = 1, #suits do
                    local suit = suits[j]
                    local flush_count = 0
                    for i=1, #hand do
                      if hand[i]:is_suit(suit, nil, true) then flush_count = flush_count + 1 end 
                    end
                    if flush_count >= 5 then flush_found = true end
                end

                if not flush_found then card.ability.extra.active = false end
            end
        end

        if context.cardarea == G.play and context.repetition and not context.repetition_only then
			if card.ability.extra.active then
				return {
					message = 'Again!',
					repetitions = card.ability.extra.retriggers,
					card = context.other_card
				}
			end
		end    
    end
}

-- Buzzy Beetle
SMODS.Joker{
    key = 'buzzy',
    rarity = 3,
    atlas = 'PaperMario',
    discovered = false,
    cost = 6,
    blueprint_compat = true,
    pos = { x = 0, y = 6 },
    config = { extra = {retriggers = 1, hand = "Straight"} },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.hand} }
    end,
    calculate = function(self, card, context)
        if context.cardarea == G.play and context.repetition and not context.repetition_only then
			if next(context.poker_hands[card.ability.extra.hand]) then
				return {
					message = 'Again!',
					repetitions = card.ability.extra.retriggers,
					card = context.other_card
				}
			end
		end    
    end
}

-- Spike Top
SMODS.Joker{
    key = 'spiketop',
    rarity = 3,
    atlas = 'PaperMario',
    discovered = false,
    cost = 7,
    blueprint_compat = true,
    pos = { x = 1, y = 6 },
    config = { extra = {hand = "Flush", Xmult = 1.5, active = false} },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.hand, card.ability.extra.Xmult } }
    end,
    calculate = function(self, card, context)

        -- yes this is flower pot code
        if context.cardarea == G.play and not context.before and not context.after and not context.end_of_round and not context.blueprint then
            local suits = {
                ["Spades"] = 0,
                ["Hearts"] = 0,
                ["Clubs"] = 0,
                ["Diamonds"] = 0,
            }
            local hand = context.scoring_hand
            for k, v in pairs(suits) do
                local suit = k
                for i=1, #hand do
                    if hand[i].ability.name ~= 'Wild Card' then
                        if hand[i]:is_suit(suit, nil, true) then suits[suit] = suits[suit] + 1 end 
                    end
                end

                for i=1, #hand do
                    if hand[i].ability.name == 'Wild Card' then
                        if hand[i]:is_suit(suit) and suits[suit] == 0 then suits[suit] = suits[suit] + 1 end 
                    end
                end
            end
            if suits["Spades"] > 0 and suits["Hearts"] > 0 and suits["Diamonds"] > 0 and suits["Clubs"] > 0 then
                card.ability.extra.active = true
            end
        end


        if context.joker_main then
            if card.ability.extra.active then
                return {
                    xmult = card.ability.extra.Xmult,
                    card = card
                }
            end
        end

        if context.final_scoring_step then
            card.ability.extra.active = false
        end
    end
}

-- Rocky Wrench
SMODS.Joker{
    key = 'wrench',
    rarity = 3,
    atlas = 'PaperMario',
    discovered = false,
    cost = 8,
    blueprint_compat = true,
    pos = { x = 2, y = 6 },
    config = { extra = {Xmult = 1.5, enhancement = "Steel"} },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.m_steel
        return { vars = {card.ability.extra.Xmult, card.ability.extra.enhancement} }
    end,
    calculate = function(self, card, context)
        if context.before and context.cardarea == G.jokers and not context.blueprint then
            local c = context.scoring_hand[1]
            c:set_ability(G.P_CENTERS.m_steel, nil, true)    
            G.E_MANAGER:add_event(Event({
                func = function()
                    c:juice_up()
                    return true
                end
            }))
            return {
                message = localize("pm_upgraded"),
                card = card
            }
        end
        
        if context.individual and context.cardarea == G.play and context.other_card.ability.name == 'Steel Card' then
            if not context.end_of_round and not context.before and not context.after and not context.other_card.debuff then
                return {
                    xmult = card.ability.extra.Xmult,
                    card = card
              }
            end
        end
    end
}

-- Pokey
SMODS.Joker{
    key = 'pokey',
    rarity = 3,
    atlas = 'PaperMario',
    discovered = false,
    cost = 7,
    blueprint_compat = true,
    pos = { x = 3, y = 6 },
    config = { extra = {odds = 6, enhancement = 'Wild', mult = 8, hand = 'Flush'} },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.m_wild
        return { vars = {(G.GAME.probabilities.normal or 1), card.ability.extra.odds, card.ability.extra.enhancement, card.ability.extra.mult, card.ability.extra.hand } }
    end,
    calculate = function(self, card, context)
        if context.before and context.cardarea == G.jokers and not context.blueprint then
            local worked = false
            for k, v in ipairs(context.scoring_hand) do
                if pseudorandom('pokey') < (G.GAME.probabilities.normal / card.ability.extra.odds) then
                    worked = true
                    v:set_ability(G.P_CENTERS.m_wild, nil, true)
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            v:juice_up()
                            return true
                        end
                    }))
                end
            end
            if worked then 
                return {
                message = localize("pm_pokeyed"),
                    colour = G.C.MULT,
                    card = card
                }
            end
        end

        if context.individual and context.cardarea == G.play and context.other_card.config.center == G.P_CENTERS.m_wild then
            if not context.end_of_round and not context.before and not context.after and not context.other_card.debuff then
                return {
                    mult = card.ability.extra.mult,
                    card = context.other_card,
                }
            end
        end
    end
}

-- Green Pokey
SMODS.Joker{
    key = 'greenpokey',
    rarity = 3,
    atlas = 'PaperMario',
    discovered = false,
    cost = 7,
    blueprint_compat = false,
    pos = { x = 4, y = 6 },
    config = { extra = {hand = 'Flush', active = false} },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.hand } }
    end,
    calculate = function(self, card, context)
        
        -- Check if hand is a flush
        if context.before and context.cardarea == G.jokers and not context.blueprint and not (context.retrigger_joker_check or context.retrigger_joker) then
            if next(context.poker_hands['Flush']) then
                card.ability.extra.active = true
                local eval = function() return card.ability.extra.active and not G.RESET_JIGGLES end
                juice_card_until(card, eval, true)

                for k, v in pairs(G.GAME.probabilities) do 
                    G.GAME.probabilities[k] = v*999 -- essentially guarantees it, unless a card's probabilities go past that
                end

                return {
                    message = localize("pm_active"),
                    color = G.C.GREEN,
                    card = card
                }
            end
        end

        if context.final_scoring_step and not (context.retrigger_joker_check or context.retrigger_joker) then
            card.ability.extra.active = false

            for k, v in pairs(G.GAME.probabilities) do 
                G.GAME.probabilities[k] = math.max(1, (v/999)) -- should hopefully revert it, if not, then just makes it a 1
            end
        end
    end
}

-- Bob-Omb
SMODS.Joker{
    key = 'bomb',
    rarity = 1,
    atlas = 'PaperMario',
    discovered = true,
    cost = 3,
    blueprint_compat = false,
    pos = { x = 5, y = 6 },
    config = { extra = {mult = 30} },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult } }
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            G.E_MANAGER:add_event(Event({
                func = function()
                    card:set_debuff(true)
                    return true
                end
              })) 
            return {
                mult = card.ability.extra.mult,
                card = card
            }
        end
    end
}

-- Lava Bubble
SMODS.Joker{
    key = 'podoboo',
    rarity = 1,
    atlas = 'PaperMario',
    discovered = false,
    cost = 3,
    blueprint_compat = true,
    pos = { x = 6, y = 6 },
    config = { extra = {mult = 0, mult_gain = 10} },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, card.ability.extra.mult_gain } }
    end,
    calculate = function(self, card, context)

        -- Shake while first card is active
        if context.first_hand_drawn then
            if not context.blueprint and G.GAME.current_round.hands_played <= 0 then
                local eval = function() return G.GAME.current_round.hands_played == 0 and not G.RESET_JIGGLES end
                juice_card_until(self, eval, true)
            end
        end

        -- Applies the Xmult.
        if context.cardarea == G.jokers and context.scoring_hand then
            if context.joker_main then
                return {
                    mult = card.ability.extra.mult,
                    card = card
                }
            end
        end

        -- The 'fire' part of the ability
        if context.destroying_card and not context.blueprint then
            -- if first hand is 1 card, then...
            if context.full_hand and #context.full_hand == 1 and G.GAME.current_round.hands_played == 0 then
                -- Increase this card's XMult
                card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_gain
                
                play_sound('tarot1')

                card:juice_up(0.3, 0.4)

                card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize("pm_upgraded")})
                return true
            else
                return nil
            end
        end
    end
}

-- Pirahna Plant (?)

-- Fire Pirahna Plant
SMODS.Joker{
    key = 'fpirplant',
    rarity = 1,
    atlas = 'PaperMario',
    discovered = false,
    cost = 4,
    blueprint_compat = false,
    pos = { x = 7, y = 6 },
    config = { extra = {odds = 6} },
    loc_vars = function(self, info_queue, card)
        return { vars = { (G.GAME.probabilities.normal or 1), card.ability.extra.odds } }
    end,
    calculate = function(self, card, context)

        -- Shake while first card is active
        if context.first_hand_drawn then
            if not context.blueprint and G.GAME.current_round.hands_played <= 0 then
                local eval = function() return G.GAME.current_round.hands_played == 0 and not G.RESET_JIGGLES end
                juice_card_until(card, eval, true)
            end
        end

        -- The 'fire' part of the ability
        if context.destroying_card and not context.blueprint then
            -- if first hand is 1 card, then...
            if context.full_hand and #context.full_hand == 1 and G.GAME.current_round.hands_played == 0 then
               -- 1 in 6 chance to destroy the card in hand
                local slurped_card = context.full_hand[1]
                local rand_cond = pseudorandom('fpp') < (G.GAME.probabilities.normal / card.ability.extra.odds)
                if rand_cond then
                    card:juice_up(0.3, 0.4)
                    play_sound('tarot1')
                    card_eval_status_text(slurped_card, 'extra', nil, nil, nil, {message = localize("pm_burned")})
                else
                    if slurped_card.config.center == G.P_CENTERS.c_base then
                        slurped_card:set_ability(SMODS.poll_enhancement({guaranteed = true}), nil, true)   
                        play_sound('tarot1')
                        card_eval_status_text(slurped_card, 'extra', nil, nil, nil, {message = localize("pm_upgraded")})
                    end
                end
                return rand_cond
           end
           return nil
       end
    end
}

-- Ptooie
SMODS.Joker{
    key = 'ptooie',
    rarity = 2,
    atlas = 'PaperMario',
    discovered = false,
    cost = 6,
    blueprint_compat = false,
    pos = { x = 0, y = 7 },
    config = { extra = {odds = 4} },
    loc_vars = function(self, info_queue, card)
        return { vars = { (G.GAME.probabilities.normal or 1), card.ability.extra.odds } }
    end,
    calculate = function(self, card, context)

        -- Shake while first card is active
        if context.first_hand_drawn then
            if not context.blueprint and G.GAME.current_round.hands_played <= 0 then
                local eval = function() return G.GAME.current_round.hands_played == 0 and not G.RESET_JIGGLES end
                juice_card_until(card, eval, true)
            end
        end

        -- The 'fire' part of the ability
        if context.destroying_card and not context.blueprint then
            -- if first hand is 1 card, then...
            if context.full_hand and #context.full_hand == 1 and G.GAME.current_round.hands_played == 0 then
               -- 1 in 6 chance to destroy the card in hand
                local slurped_card = context.full_hand[1]
                local rand_cond = pseudorandom('tuah') < (G.GAME.probabilities.normal / card.ability.extra.odds) -- no, im not proud of this joke
                if rand_cond then
                    card:juice_up(0.3, 0.4)
                    play_sound('tarot1')
                    card_eval_status_text(slurped_card, 'extra', nil, nil, nil, {message = localize("pm_burned")})
                else
                    if not slurped_card.seal then
                        -- yes, this is certificate code
                        local seal_type = pseudorandom(pseudoseed('tooie'))
                        if seal_type > 0.75 then slurped_card:set_seal('Red', true)
                        elseif seal_type > 0.5 then slurped_card:set_seal('Blue', true)
                        elseif seal_type > 0.25 then slurped_card:set_seal('Gold', true)
                        else slurped_card:set_seal('Purple', true)
                        end
                        card:juice_up(0.3, 0.4)
                        play_sound('tarot1')
                        card_eval_status_text(slurped_card, 'extra', nil, nil, nil, {message = localize("pm_upgraded")})
                    end
                end
                return rand_cond
           end
           return nil
       end
    end
}

-- Dino Rhino
SMODS.Joker{
    key = 'dino',
    rarity = 3,
    atlas = 'PaperMario',
    discovered = false,
    cost = 7,
    blueprint_compat = false,
    pos = { x = 1, y = 7 },
    config = { extra = {odds = 3} },
    loc_vars = function(self, info_queue, card)
        return { vars = { (G.GAME.probabilities.normal or 1), card.ability.extra.odds } }
    end,
    calculate = function(self, card, context)

        -- Shake while first card is active
        if context.first_hand_drawn then
            if not context.blueprint and G.GAME.current_round.hands_played <= 0 then
                local eval = function() return G.GAME.current_round.hands_played == 0 and not G.RESET_JIGGLES end
                juice_card_until(card, eval, true)
            end
        end

        -- The 'fire' part of the ability
        if context.destroying_card and not context.blueprint then
            -- if first hand is 1 card, then...
            if context.full_hand and #context.full_hand == 1 and G.GAME.current_round.hands_played == 0 then
               -- 1 in 6 chance to destroy the card in hand
                local slurped_card = context.full_hand[1]
                local rand_cond = pseudorandom('dino') < (G.GAME.probabilities.normal / card.ability.extra.odds)
                if rand_cond then
                    card:juice_up(0.3, 0.4)
                    play_sound('tarot1')
                    card_eval_status_text(slurped_card, 'extra', nil, nil, nil, {message = localize("pm_burned")})
                else
                    if not slurped_card.edition then
                        local edition = poll_edition('aura', nil, true, true)
                        slurped_card:set_edition(edition, true, true)
                        card:juice_up(0.3, 0.4)
                        play_sound('tarot1')
                        card_eval_status_text(slurped_card, 'extra', nil, nil, nil, {message = localize("pm_upgraded")})
                    end
                end
                return rand_cond
           end
           return nil
       end
    end
}

-- Hammer Bro
SMODS.Joker{
    key = 'hammerbro',
    rarity = 2,
    atlas = 'PaperMario',
    discovered = false,
    cost = 5,
    blueprint_compat = true,
    pos = { x = 2, y = 7 },
    config = { extra = {suit = "Clubs", mult = 8, bro = 1} },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.m_steel
        return { vars = { localize(card.ability.extra.suit, 'suits_singular'), card.ability.extra.mult } }
    end,
    calculate = function(self, card, context)        
        
        if context.before and context.cardarea == G.jokers and not context.blueprint then
            local active = false
            for k, c in ipairs(context.scoring_hand) do
                if c:is_suit(card.ability.extra.suit) then
                    active = true
                    c:set_ability(G.P_CENTERS.m_steel, nil, true)                       
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
        
        if context.individual and context.cardarea == G.play and context.other_card:is_suit(card.ability.extra.suit) then
            if not context.end_of_round and not context.before and not context.after and not context.other_card.debuff then
                return {
                    mult = card.ability.extra.mult,
                    card = card
                }
            end
        end
    end
}

-- Boomerang Bro
SMODS.Joker{
    key = 'boomerbro',
    rarity = 2,
    atlas = 'PaperMario',
    discovered = false,
    cost = 5,
    blueprint_compat = true,
    pos = { x = 3, y = 7 },
    config = { extra = {suit = 'Spades', retriggers = 1, bro = 1} },
    loc_vars = function(self, info_queue, card)
        return { vars = { localize(card.ability.extra.suit, 'suits_singular') } }
    end,
    calculate = function(self, card, context)
        if not card.ability['pm_monochrome'] or card.ability['pm_monochrome'].extra.drained_turns <= 0 then
            if context.cardarea == G.play and context.repetition and not context.repetition_only then
                if context.other_card:is_suit(card.ability.extra.suit) then
                    return {
                        message = localize('k_again_ex'),
                        repetitions = card.ability.extra.retriggers,
                        card = context.other_card
                    }
                end
            end
        end
    end
}

-- Fire Bro
SMODS.Joker{
    key = 'firebro',
    rarity = 3,
    atlas = 'PaperMario',
    discovered = false,
    cost = 7,
    blueprint_compat = true,
    pos = { x = 4, y = 7 },
    config = { extra = {Xmult = 1.5, suit = 'Hearts', bro = 1} },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.Xmult, localize(card.ability.extra.suit, 'suits_singular')} }
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play and context.other_card:is_suit(card.ability.extra.suit) then
            if not context.end_of_round and not context.before and not context.after and not context.other_card.debuff then
                return {
                    xmult = card.ability.extra.Xmult,
                    card = card
              }
            end
        end

        if context.destroying_card and context.cardarea == G.play and not context.blueprint then
            local not_heart = false
            for i = 1, #context.full_hand do
                if not context.full_hand[i]:is_suit(card.ability.extra.suit) then
                    not_heart = true
                    break
                end
            end
            if not_heart then
                return context.destroying_card:is_suit(card.ability.extra.suit)
            end
        end

    end
}

-- Ice Bro
SMODS.Joker{
    key = 'icebro',
    rarity = 3,
    atlas = 'PaperMario',
    discovered = false,
    cost = 7,
    blueprint_compat = false,
    pos = { x = 5, y = 7 },
    config = { extra = {suit = 'Diamonds', mult = 0, mult_gain = 5, bro = 1} },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.m_pm_frozen
        return { vars = { localize(card.ability.extra.suit, 'suits_singular'), card.ability.extra.mult_gain, card.ability.extra.mult } }
    end,
    calculate = function(self, card, context)
        if context.before and context.cardarea == G.jokers and not context.blueprint then
            for i = 1, #context.scoring_hand do
                local c = context.scoring_hand[i]
                if c:is_suit(card.ability.extra.suit) then 
                    c:set_ability(G.P_CENTERS.m_pm_frozen, nil, true)
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            c:juice_up()
                            return true
                        end
                    }))
                end
            end
        end
        
        if context.joker_main then
            return{
                mult = card.ability.extra.mult,
                card = card
            }
        end
    end,
    update = function(self, card, dt)
        if G.STAGE == G.STAGES.RUN then
            local frozen = 0
            for k, v in pairs(G.playing_cards) do
                if v.config.center == G.P_CENTERS.m_pm_frozen then frozen = frozen + 1 end
            end
            card.ability.extra.mult = frozen * card.ability.extra.mult_gain
        else
            card.ability.extra.mult = 0
        end
    end
}

-- Juggler Bro
SMODS.Joker{
    key = 'jugglerbro',
    rarity = 3,
    atlas = 'PaperMario',
    discovered = false,
    cost = 7,
    blueprint_compat = true,
    pos = { x = 6, y = 7 },
    config = { extra = {hand_size = -3, hand_gain = 1, hand_max = 10, bro = 1} },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.hand_size < 0 and card.ability.extra.hand_size or "+" .. math.min(card.ability.extra.hand_max, card.ability.extra.hand_size), card.ability.extra.hand_gain, card.ability.extra.hand_max } }
    end,
    calculate = function(self, card, context)
        if context.end_of_round and not context.individual and not context.repetition and not context.blueprint then
			G.hand:change_size(math.min(card.ability.extra.hand_max-card.ability.extra.hand_size, card.ability.extra.hand_gain))
			card.ability.extra.hand_size = card.ability.extra.hand_size + card.ability.extra.hand_gain
			return {
				message = localize({ type = "variable", key = "a_handsize", vars = { card.ability.extra.hand_gain } }),
				colour = G.C.FILTER,
				card = card,
			}
		end
    end,

    add_to_deck = function(self, card, from_debuff)
		G.hand:change_size(math.min(card.ability.extra.hand_max, card.ability.extra.hand_size))
	end,
	remove_from_deck = function(self, card, from_debuff)
		G.hand:change_size(-1*math.min(card.ability.extra.hand_max, card.ability.extra.hand_size))
	end
}

-- Circus Bro
SMODS.Joker{
    key = 'circusbro',
    rarity = 3,
    atlas = 'PaperMario',
    discovered = false,
    cost = 7,
    blueprint_compat = true,
    pos = { x = 7, y = 7 },
    config = { extra = {hand = "Three of a Kind", mult = 10, rank = 0, bro = 1} },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.hand, card.ability.extra.mult } }
    end,
    calculate = function(self, card, context)
        
        if context.before and next(context.poker_hands[card.ability.extra.hand]) and not context.blueprint then
            card.ability.extra.rank = context.poker_hands[card.ability.extra.hand][1][1]:get_id()
        end
        
        if context.individual and not context.end_of_round and context.cardarea == G.play and context.other_card:get_id() == card.ability.extra.rank then
            if not context.end_of_round and not context.before and not context.after and not context.other_card.debuff then
                return {
                    mult = card.ability.extra.mult,
                    card = card
              }
            end
        end
    end
}

-- Sledge Bro
SMODS.Joker{
    key = 'sledgebro',
    rarity = 3,
    atlas = 'PaperMario',
    discovered = false,
    cost = 8,
    blueprint_compat = true,
    pos = { x = 0, y = 8 },
    config = { extra = {chips = 25, bro = 1} },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.chips} }
    end,
    calculate = function(self, card, context)
        if context.before and not context.blueprint then
            local thunk = 0
            for k, v in ipairs(context.full_hand) do
                if v.config.center == G.P_CENTERS.m_stone then
                    thunk = thunk + 1
                    local current_chips = v.perma_bonus or 0
                    v.perma_bonus = current_chips + card.ability.extra.chips
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
                    message = localize('pm_upgraded'),
                    colour = G.C.BLUE
                }
            end
        end
    end
}

-- Magikoopa
SMODS.Joker{
    key = 'magikoopa',
    rarity = 3,
    atlas = 'PaperMario',
    discovered = false,
    cost = 7,
    blueprint_compat = true,
    pos = { x = 1, y = 8 },
    config = { extra = {} },
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
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
                -- create the tarot card
                local t = {
                    set = 'pm_BattleCard'
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
    end
}
----------------------------------------------
------------MOD CODE END----------------------