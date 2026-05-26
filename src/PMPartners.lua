-- Partners (Using the Partners API)
-- dependencies = {
--        "partner",
--    },

Partner_API.Partner{
    key = "goombella",
    discovered = true,
    pos = {x = 0, y = 0},
    atlas = "PMPartners",
    config = {extra = {chips = 35, extra_chips = 100, chance = 3, rank = 0, retrigger_chance = 1, hand_gain = 1 }},
    loc_vars = function(self, info_queue, card)
        if card.ability.extra.rank >= 1 then info_queue[#info_queue+1] = {set = 'Other', key = 'pm_goombella_green'} end
        if card.ability.extra.rank >= 2 then info_queue[#info_queue+1] = {set = 'Other', key = 'pm_goombella_red'} end
        return { vars = {card.ability.extra.chips, G.GAME.probabilities.normal, card.ability.extra.chance, card.ability.extra.extra_chips}}
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            if pseudorandom('goombella') < (G.GAME.probabilities.normal / card.ability.extra.chance) then -- Headbonk
                return {
                    message = localize("pm_lucky"),
                    chips = card.ability.extra.extra_chips,
                    card = card
                }
            else
                return {
                    chips = card.ability.extra.chips,
                    card = card
                }
            end
        end     
        if context.partner_click then -- Tattle
            local quips = {}
            local boss_quip
            for k, v in pairs(G.localization.misc.quips) do
                if string.find (k, "goombella") then
                    if string.find(k, "goombella_normal") then
                        quips[#quips+1] = k
                    elseif G.GAME.blind.boss then
                        if string.find(k, "hook") and string.find(G.GAME.blind.name, "Hook") then boss_quip = k
                        elseif string.find(k, "money") and (string.find(G.GAME.blind.name, "0x") or string.find(G.GAME.blind.name, "Tooth")) then boss_quip = k
                        elseif string.find(k, "hidden") and (string.find(G.GAME.blind.name, "House") or string.find(G.GAME.blind.name, "Wheel") or string.find(G.GAME.blind.name, "Fish") or string.find(G.GAME.blind.name, "Mark")) then boss_quip = k
                        elseif string.find(k, "none") and (string.find(G.GAME.blind.name, "Wall") or string.find(G.GAME.blind.name, "Violet")) then boss_quip = k
                        elseif string.find(k, "arm") and string.find(G.GAME.blind.name, "Arm") then boss_quip = k
                        elseif string.find(k, "suit") and (string.find(G.GAME.blind.name, "Club") or string.find(G.GAME.blind.name, "Goad") or string.find(G.GAME.blind.name, "Head") or string.find(G.GAME.blind.name, "Window")) then boss_quip = k
                        elseif string.find(k, "water") and string.find(G.GAME.blind.name, "Water") then boss_quip = k
                        elseif string.find(k, "psychic") and string.find(G.GAME.blind.name, "Psychic") then boss_quip = k
                        elseif string.find(k, "hand") and (string.find(G.GAME.blind.name, "Manacle") or string.find(G.GAME.blind.name, "Needle")) then boss_quip = k
                        elseif string.find(k, "speedrun") and (string.find(G.GAME.blind.name, "Eye") or string.find(G.GAME.blind.name, "Crimson"))  then boss_quip = k
                        elseif string.find(k, "snake") and string.find(G.GAME.blind.name, "Serpent") then boss_quip = k
                        elseif string.find(k, "mouth") and string.find(G.GAME.blind.name, "Mouth") then boss_quip = k
                        elseif string.find(k, "disabled") and (string.find(G.GAME.blind.name, "Plant") or string.find(G.GAME.blind.name, "Pillar"))  then boss_quip = k
                        elseif string.find(k, "flint") and string.find(G.GAME.blind.name, "Flint") then boss_quip = k
                        elseif string.find(k, "amber") and string.find(G.GAME.blind.name, "Amber") then boss_quip = k
                        elseif string.find(k, "verdant") and string.find(G.GAME.blind.name, "Verdant") then boss_quip = k
                        elseif string.find(k, "bell") and string.find(G.GAME.blind.name, "Bell") then boss_quip = k
                        end
                    end
                end
            end
            if G.GAME.blind.boss and boss_quip then
                card:add_partner_speech_bubble(boss_quip)
                card:partner_say_stuff(5)
            else
                card:add_partner_speech_bubble(pseudorandom_element(quips, pseudoseed("goombella")))
                card:partner_say_stuff(5)
            end
        end
        if context.repetition and context.cardarea == G.play and context.other_card == context.scoring_hand[1] and card.ability.extra.rank >= 1 then -- green ability: Multibonk
            local retriggers = 1
            local thunk = card.ability.extra.retrigger_chance
            while pseudorandom('goombella') < (G.GAME.probabilities.normal / thunk) do
                retriggers = retriggers + 1
                thunk = thunk * 2
                print("1/",thunk)
            end
            return {
                message = localize("pm_again"),
                repetitions = retriggers,
                card = card
            }
        end
        if context.setting_blind and card.ability.extra.rank >= 2 then -- red ability: Rally Wink
            ease_hands_played(card.ability.extra.hand_gain)
        end

    end
}

Partner_API.Partner{
    key = "koops",
    discovered = true,
    pos = {x = 1, y = 0},
    atlas = "PMPartners",
    config = {extra = {mult = 7, chips = 25, shielded = true, x_mult = 2.5, rank = 0}},
    loc_vars = function(self, info_queue, card)
        if card.ability.extra.rank >= 1 then info_queue[#info_queue+1] = {set = 'Other', key = 'pm_koops_green'} end
        if card.ability.extra.rank >= 2 then info_queue[#info_queue+1] = {set = 'Other', key = 'pm_koops_red'} end
        return { vars = {card.ability.extra.mult, card.ability.extra.chips}}
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            if string.find(context.scoring_name, "Straight") then
                if card.ability.extra.rank >= 2 then
                    return {
                        xmult = card.ability.extra.x_mult,
                        mult = card.ability.extra.mult,
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

        if G.GAME.blind.triggered then
            if G.GAME.blind and ((not G.GAME.blind.disabled) and (G.GAME.blind:get_type() == 'Boss')) then
                if string.find(G.GAME.blind.name, "Flint") or string.find(G.GAME.blind.name, "Arm") then
                    card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('ph_boss_disabled')})
                    G.GAME.blind:disable()
                end
            end
        end
        
        if context.individual and context.cardarea == G.play then
            if not context.end_of_round and not context.before and not context.after and not context.other_card.debuff then
                if string.find(context.scoring_name, "Straight") then
                    card:juice_up(0.3, 0.4)
                    return {
                        chips = card.ability.extra.chips,
                        card = context.other_card
                    }
                end
            end
		end

        -- Shell Shield
        if card.ability.extra.rank >= 1 and context.end_of_round and not context.blueprint and context.game_over and G.GAME.current_round.hands_played == 0 then
            G.E_MANAGER:add_event(Event(
            {
                trigger = 'after',
                delay = 0.1,
                func = function()
                    card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("k_saved_ex")})
                    ease_hands_played(1)
                    return true
                end
            }
            ))
        end 


    end
}

Partner_API.Partner{
    key = "flurrie",
    discovered = true,
    pos = {x = 2, y = 0},
    atlas = "PMPartners",
    config = {extra = {chips= 250, chance = 3, money = 5, kiss_chance = 1, true_score = 250, save_chance = 7, rank = 2}},
    loc_vars = function(self, info_queue, card)
        if card.ability.extra.rank >= 1 then info_queue[#info_queue+1] = {set = 'Other', key = 'pm_flurrie_green'} end
        if card.ability.extra.rank >= 2 then info_queue[#info_queue+1] = {set = 'Other', key = 'pm_flurrie_red'} end
        return { vars = { G.GAME.probabilities.normal, card.ability.extra.chance, card.ability.extra.chips, card.ability.extra.money }}
    end,
    calculate = function(self, card, context)
        if context.joker_main then -- Body Slam
            if pseudorandom('flurrie') < (G.GAME.probabilities.normal / card.ability.extra.chance) then
                return {
                    chips = card.ability.extra.chips,
                    card = card
                }
            end
        end
        
        if context.skip_blind then -- Gale Force
            return {
                dollars = card.ability.extra.money,
                card = card
            }
        end

        if context.final_scoring_step and card.ability.extra.rank >= 1 then -- Lip Lock
            if pseudorandom('flurrie') < (G.GAME.probabilities.normal / card.ability.extra.kiss_chance) then
                ease_hands_played(1)
                G.GAME.chips = G.GAME.chips + card.ability.extra.true_score
                G.hand_text_area.game_chips:juice_up()
                return { 
                    card = card
                }
            end
        end

        -- Dodgy Fog
        if context.end_of_round and card.ability.extra.rank >= 2 and context.game_over and pseudorandom('flurrie') < (G.GAME.probabilities.normal / card.ability.extra.save_chance) then
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

Partner_API.Partner{
    key = "yoshi",
    discovered = true,
    pos = {x = 3, y = 0},
    atlas = "PMPartners",
    config = {extra = {chips = 5, instant_score = 40, blue_cooldown = 0, score_reduction = 20, green_cooldown = 0, x_mult = 1.25, rank = 0}},
    loc_vars = function(self, info_queue, card)
        if card.ability.extra.rank >= 1 then info_queue[#info_queue+1] = {set = 'Other', key = 'pm_yoshi_green'} end
        if card.ability.extra.rank >= 2 then info_queue[#info_queue+1] = {set = 'Other', key = 'pm_yoshi_red'} end
        return { vars = {card.ability.extra.chips, card.ability.extra.instant_score, card.ability.extra.blue_cooldown}}
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play then
            if not context.end_of_round and not context.before and not context.after and not context.other_card.debuff then
                card:juice_up(0.3, 0.4)
                if card.ability.extra.rank >= 2 then
                    return {
                        xmult = card.ability.extra.x_mult,
                        chips = card.ability.extra.chips,
                        card = context.other_card
                    }
                else
                    return {
                        chips = card.ability.extra.chips,
                        card = context.other_card
                    }
                end
            end
		end

        if context.first_hand_drawn and card.ability.extra.blue_cooldown == 0 then
            if not context.blueprint and G.GAME.current_round.hands_played <= 0 then
                local eval = function() return G.GAME.current_round.hands_played == 0 and not G.RESET_JIGGLES end
                juice_card_until(self, eval, true)
            end
        end

        if context.final_scoring_step and card.ability.extra.blue_cooldown == 0 then
            if context.full_hand and #context.full_hand == 1 and G.GAME.current_round.hands_played == 0 then
                G.GAME.chips = G.GAME.blind.chips * (card.ability.extra.instant_score / 100)
                G.hand_text_area.game_chips:juice_up()
                card.ability.extra.blue_cooldown = 3
            end
        end

        if context.final_scoring_step and card.ability.extra.rank >= 1 and card.ability.extra.green_cooldown == 0 then
            if string.find(context.scoring_name, "Flush") then
                G.GAME.blind.chips = G.GAME.blind.chips * (1-(card.ability.extra.score_reduction / 100))
                G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
                G.hand_text_area.blind_chips:juice_up()
                card.ability.extra.green_cooldown = 3
            end
        end

        if context.end_of_round then
            if card.ability.extra.blue_cooldown > 0 then card.ability.extra.blue_cooldown = card.ability.extra.blue_cooldown - 1 end
            if card.ability.extra.green_cooldown > 0 then card.ability.extra.blue_cooldown = card.ability.extra.green_cooldown - 1 end
        end

    end    
}