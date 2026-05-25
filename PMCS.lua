-- Talisman --
to_big = to_big or function(num)
    return num
end

--Creates atlases for cards to use
SMODS.Atlas { -- All Tags
	-- Key for code to find it with
	key = "modicon",
	-- The name of the file, for the code to pull the atlas from
	path = "icon.png",
	-- Width of each sprite in 1x size
	px = 32,
	-- Height of each sprite in 1x size
	py = 32,
}

SMODS.Atlas { -- The main atlas, used for all basic enemy types (yes, even sombrero)
	-- Key for code to find it with
	key = "PaperMario",
	-- The name of the file, for the code to pull the atlas from
	path = "PaperMario.png",
	-- Width of each sprite in 1x size
	px = 220,
	-- Height of each sprite in 1x size
	py = 307
}

SMODS.Atlas { -- All Koopalings (and Kamek)
	-- Key for code to find it with
	key = "Koopalings",
	-- The name of the file, for the code to pull the atlas from
	path = "Koopalings.png",
	-- Width of each sprite in 1x size
	px = 220,
	-- Height of each sprite in 1x size
	py = 307
}

SMODS.Atlas { -- All Thing Jokers
	-- Key for code to find it with
	key = "Things",
	-- The name of the file, for the code to pull the atlas from
	path = "Things.png",
	-- Width of each sprite in 1x size
	px = 220,
	-- Height of each sprite in 1x size
	py = 307
}

SMODS.Atlas { -- All Boss Jokers
	-- Key for code to find it with
	key = "PMBossCards",
	-- The name of the file, for the code to pull the atlas from
	path = "PMBossCards.png",
	-- Width of each sprite in 1x size
	px = 220,
	-- Height of each sprite in 1x size
	py = 307
}

SMODS.Atlas { -- All Battle Cards
	-- Key for code to find it with
	key = "BattleCards",
	-- The name of the file, for the code to pull the atlas from
	path = "BattleCards.png",
	-- Width of each sprite in 1x size
	px = 220,
	-- Height of each sprite in 1x size
	py = 307
}

SMODS.Atlas { -- All Other Consumables
	-- Key for code to find it with
	key = "PMConsumable",
	-- The name of the file, for the code to pull the atlas from
	path = "PMConsumables.png",
	-- Width of each sprite in 1x size
	px = 71,
	-- Height of each sprite in 1x size
	py = 95
}

SMODS.Atlas { -- All Enhancements
	-- Key for code to find it with
	key = "Enhancements",
	-- The name of the file, for the code to pull the atlas from
	path = "Enhancements.png",
	-- Width of each sprite in 1x size
	px = 71,
	-- Height of each sprite in 1x size
	py = 95
}

SMODS.Atlas { -- All Boosters
	-- Key for code to find it with
	key = "PMBooster",
	-- The name of the file, for the code to pull the atlas from
	path = "PMBoosters.png",
	-- Width of each sprite in 1x size
	px = 71,
	-- Height of each sprite in 1x size
	py = 95
}

SMODS.Atlas { -- All Blinds
	-- Key for code to find it with
	key = "PMBlinds",
	-- The name of the file, for the code to pull the atlas from
	path = "PMBlinds.png",
	-- Width of each sprite in 1x size
	px = 34,
	-- Height of each sprite in 1x size
	py = 34,
    -- set it so that this becomes an animation type
    atlas_table = 'ANIMATION_ATLAS',
    frames = 21,
}

SMODS.Atlas { -- All Stakes
	-- Key for code to find it with
	key = "PMChips",
	-- The name of the file, for the code to pull the atlas from
	path = "PMChips.png",
	-- Width of each sprite in 1x size
	px = 29,
	-- Height of each sprite in 1x size
	py = 29,
}

SMODS.Atlas { -- All Stakes
	-- Key for code to find it with
	key = "PMStickers",
	-- The name of the file, for the code to pull the atlas from
	path = "PMStickers.png",
	-- Width of each sprite in 1x size
	px = 71,
	-- Height of each sprite in 1x size
	py = 95,
}

SMODS.Atlas { -- All Vouchers
	-- Key for code to find it with
	key = "PMVouchers",
	-- The name of the file, for the code to pull the atlas from
	path = "PMVouchers.png",
	-- Width of each sprite in 1x size
	px = 71,
	-- Height of each sprite in 1x size
	py = 95,
}

SMODS.Atlas { -- All Tags
	-- Key for code to find it with
	key = "PMTags",
	-- The name of the file, for the code to pull the atlas from
	path = "PMTags.png",
	-- Width of each sprite in 1x size
	px = 34,
	-- Height of each sprite in 1x size
	py = 34,
}

SMODS.Atlas{
    key = "PMPartners",
    px = 46,
    py = 58,
    path = "PMPartners.png"
}

-- load in the RGB Light color yippee
SMODS.Gradient{
    key = 'rgbled',
    colours = {
        HEX("eb0000"),
        HEX("ffbb00"),
        HEX("ffff00"),
        HEX("00ff00"),
        HEX("00d9ff"),
        HEX("1100ff"),
        HEX("d400ff"),
        HEX("ff00dd"),
    },
    cycle = 2,
    interpolation = 'linear',
}
-- also make it a loc_colour
loc_colour('')
G.ARGS.LOC_COLOURS.pm_rgbled = SMODS.Gradients.pm_rgbled

-- save current paths
mod_dir = ''..SMODS.current_mod.path
pm_config = SMODS.current_mod.config

if NFS.read(mod_dir.."/config.lua") then
    pm_config = STR_UNPACK(NFS.read(mod_dir.."/config.lua"))
end
if pm_config.bc_rarity and type(pm_config.bc_rarity) ~= 'number' then
    pm_config.bc_rarity = 1
end
if pm_config.things_rarity and type(pm_config.things_rarity) ~= 'number' then
    pm_config.things_rarity = 1
end
if pm_config.drained_rarity and (type(pm_config.drained_rarity) ~= 'number' or pm_config.drained_rarity < 1) then
    pm_config.drained_rarity = 1
end
if pm_config.battle_track and (type(pm_config.battle_track) ~= 'number') then
    pm_config.battle_track = 8
end

G.FUNCS.cycle_update = function(args)
    args = args or {}
    if args.cycle_config and args.cycle_config.ref_table and args.cycle_config.ref_value then
        args.cycle_config.ref_table[args.cycle_config.ref_value] = args.to_key
        if args.cycle_config.ref_value == 'bc_rarity' then G.GAME['pm_battlecard_rate'] = ((args.to_key - 1) * 0.2) or 0 end
        if args.cycle_config.ref_value == 'drained_rarity' then SMODS.Stickers['pm_monochrome'].rate = ((args.to_key - 1) * 0.2) or 0 end
       NFS.write(mod_dir.."/config.lua", STR_PACK(pm_config))
    end
end

-- loads all joker files for use later
-- NOTE: i know this is probably a TERRIBLE way to make this work but it's the first thing i thought of
local load_order = {'PMAchievements.lua', 'PMBosses.lua', 'PMChallenges.lua', 'PMMisc.lua', 'PMMusic.lua', 'PMTags.lua', 'PMVouchers.lua', 'PMJokers.lua', 'PMThings.lua', 'PMKoopalings.lua', 'PMMiscJokers.lua'}
for i=1, #load_order do
    local v = load_order[i]
    assert(SMODS.load_file('src/'..v))()
end

partners = (SMODS.Mods['partner'] or {}).can_load or false

if partners then
    SMODS.load_file("src/PMPartners.lua")()
end

--Load UI file
local UI, load_error = SMODS.load_file("pmui.lua")
if load_error then
  sendDebugMessage ("The error is: "..load_error)
else
  UI()
end

-- make retriggers exist
SMODS.current_mod.optional_features = function()
    return {
        retrigger_joker = true
    }
end

-- load custom rarities
SMODS.Rarity{
    key = "thing",
    default_weight = 0.1,
    badge_colour = HEX("EBD534"),
    pools = {["Joker"] = true},
    get_weight = function(self, weight, object_type)
        if pm_config.things_rarity > 1 then
            if pm_config.things_rarity ~= 2 then return (pm_config.things_rarity - 1) * self.default_weight
            else return weight end
        else
            return 0
        end
    end,
}

SMODS.Rarity{
    key = "bosses",
    default_weight = 0,
    badge_colour = HEX("9c1072"),
    pools = {["Joker"] = true},
    hidden = true,
    get_weight = function(self, weight, object_type)
        return weight
    end,
}

-- replacement rarities for consumables lmao
SMODS.Rarity{
    key = "common",
    default_weight = 50,
    badge_colour = HEX("3479B5"),
    pools = {["pm_BattleCard"] = true},
    get_weight = function(self, weight, object_type)
        return weight
    end,
}
SMODS.Rarity{
    key = "uncommon",
    default_weight = 35,
    badge_colour = HEX("2FBB82"),
    pools = {["pm_BattleCard"] = true},
    get_weight = function(self, weight, object_type)
        return weight
    end,
}
SMODS.Rarity{
    key = "rare",
    default_weight = 15,
    badge_colour = HEX("E62F2C"),
    pools = {["pm_BattleCard"] = true},
    get_weight = function(self, weight, object_type)
        return weight
    end,
}


-- load custom editions, stickers, and shaders

SMODS.Edition{
    key = "replica",
    shader = false,
    sound = { 
        sound = "tarot1", 
        per = 1.2, 
        vol = 0.4,
    },  
    weight = 0.1, 
    discovered = true,
	in_shop = false,
	extra_cost = -3,
    badge_colour = G.C.PURPLE,
    get_weight = function(self)
		return G.GAME.edition_rate * self.weight
	end,
	config = {
        x_mult = 0.9,
        x_mult2 = 1.5,
    },
	loc_vars = function(self, info_queue)
		return { vars = { self.config.x_mult } }
	end,
    calculate = function(self, card, context)
        if context.setting_blind and G.GAME.blind and G.GAME.blind.boss and not G.GAME.blind.disabled and not G.GAME.used_vouchers.v_pm_replicaenjoyer then
            card:set_debuff(true)
            card:juice_up()
            card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('k_disabled_ex'),colour = G.C.MULT, delay = 0.45})
        end
        
        if context.pre_joker then
            if G.GAME.used_vouchers.v_pm_replicaenjoyer then
                return {
                    xmult = card.edition.x_mult2,
                }
            else
                return {
                    xmult = card.edition.x_mult,
                }
            end
        end
    end
}

SMODS.Edition{
    key = "quantum",
    shader = false,
    sound = { 
        sound = "tarot1", 
        per = 1.2, 
        vol = 0.4,
    },  
    weight = 0.1, 
    discovered = true,
	in_shop = false,
	extra_cost = 12,
    badge_colour = SMODS.Gradients.pm_rgbled,
    get_weight = function(self)
		return G.GAME.edition_rate * self.weight
	end,
	config = {
        chips = 50,
        mult = 10,
        x_mult = 1.5,
        card_limit = 1,
        old_shader = nil,
        old_edition = nil,
    },
	loc_vars = function(self, info_queue)
		return { vars = { self.config.chips, self.config.mult, self.config.x_mult, self.config.card_limit } }
	end,
    on_apply = function(card)
        card.edition.old_shader = nil
        card.edition.old_edition = nil
    end,
    calculate = function(self, card, context)
        if context.pre_joker then
            return {
                chips = card.edition.chips,
                mult = card.edition.mult,
                xmult = card.edition.x_mult,
            }
        elseif context.main_scoring and context.cardarea == G.play then
            return {
                chips = card.edition.chips,
                mult = card.edition.mult,
                xmult = card.edition.x_mult,
            }
        end
    end
}

SMODS.Shader{
    key = 'drained',
    path = 'drained.fs',
}
SMODS.Sticker{
    key = "monochrome",
    no_sticker_sheet = true,
    badge_colour = HEX("C7C7C7"),
    discovered = true,
    sets = {
        Joker = true,
        pm_BattleCard = true,
    },
    rate = (pm_config.drained_rarity - 1) * 0.2,
    config = {
        extra = {
            drained_turns = 5,
            drained_suit = "Spades"
        }
    },
    needs_enable_flag = false,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability[self.key].extra.drained_turns, card.ability[self.key].extra.drained_suit, colours = {G.C.SUITS[card.ability[self.key].extra.drained_suit]} } }
    end,
    should_apply = function(self, card, center, area)
        if G.GAME.used_vouchers.v_pm_autopaint or (pm_config.drained_rarity < 1) then return false
        elseif card.ability.set == 'Joker' or card.ability.set == 'pm_BattleCard' then 
            if pseudorandom('mono') < SMODS.Stickers['pm_monochrome'].rate then return true end
        end
        return false
    end,
    apply = function(self, card, val)
        if val then
            local suits = {
                "Spades",
                "Diamonds",
                "Clubs",
                "Hearts",
            }
            card.ability[self.key] = val and copy_table(self.config)
            card.cost = 1
            if type(card.ability.extra) == 'table' and card.ability.extra.suit then card.ability[self.key].extra.drained_suit = card.ability.extra.suit    
            else card.ability[self.key].extra.drained_suit = pseudorandom_element(suits, pseudoseed('mono')) end
            card.ability[self.key].extra.drained_turns = math.floor(pseudorandom('turns', 1, 10))
        else
            card.ability[self.key] = val
            if not val and G.GAME.modifiers['enable_pm_coloredin'] then SMODS.Stickers.pm_coloredin:apply(card, true) end
        end
    end,
    calculate = function (self, card, context)

        if context.individual and context.cardarea == G.play and card.ability[self.key] and card.ability[self.key].extra.drained_turns > 0 then
            if context.other_card:is_suit(card.ability[self.key].extra.drained_suit) then
                if card.ability[self.key].extra.drained_turns == 1 then
                    card.ability[self.key].extra.drained_turns = 0
                else
                    card.ability[self.key].extra.drained_turns = card.ability[self.key].extra.drained_turns - 1
                    card_eval_status_text(card, 'extra', nil, nil, nil, {message = card.ability[self.key].extra.drained_turns.." Remaining", colour = G.C.ATTENTION, delay = 0.45})
                end
            end
        end

        if context.first_hand_drawn and card.ability[self.key].extra.drained_turns and card.ability.set == 'Joker' then
            card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('k_disabled_ex'),colour = G.C.MULT, delay = 0.45})
        end

        if context.final_scoring_step and card.ability[self.key] and card.ability[self.key].extra.drained_turns <= 0 then
            card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("pm_colorized"),colour = G.C.FILTER, delay = 0.45})
            if card.ability.set == 'Joker' then card:set_debuff(false) end
            SMODS.Stickers.pm_monochrome:apply(card, nil)
        end

    end,
    draw = function (self, card, layer)
        if (layer == 'card' or layer == 'both') then
            if card.sprite_facing == 'front' then
                -- LEGIT JUST HERE SO WE DON'T DRAW A STICKER SPRITE
            end
        end
    end,
}

SMODS.Sticker{
    key = "coloredin",
    no_sticker_sheet = true,
    badge_colour = SMODS.Gradients.pm_rgbled,
    discovered = true,
    sets = {
        Joker = true,
    },
    rate = 0.0,
    config = {
        extra = {
            drained_turns = 5,
        }
    },
    needs_enable_flag = true,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability[self.key].extra.drained_turns, } }
    end,
    should_apply = function(self, card, center, area)
        if G.GAME.used_vouchers.v_pm_saturation or not G.GAME.modifiers['enable_pm_coloredin'] or (pm_config.drained_rarity < 1) then return false
        elseif card.ability.set == 'Joker' or card.ability.set == 'pm_BattleCard' then 
            if (G.GAME.used_vouchers.v_pm_autopaint and G.GAME.modifiers['enable_pm_coloredin']) and pseudorandom('mono') < SMODS.Stickers['pm_monochrome'].rate then return true end
        end
        return false
    end,
    apply = function(self, card, val)
        if val then
            card.ability[self.key] = val and copy_table(self.config)
            card.ability[self.key].extra.drained_turns = math.floor(pseudorandom('color', 1, 9))
        else
            card.ability[self.key] = val
        end
    end,
    calculate = function (self, card, context)
        if context.end_of_round and (context.cardarea == G.jokers or context.cardarea == G.consumeables) and card.ability[self.key] and card.ability[self.key].extra.drained_turns > 0 then
            if card.ability[self.key].extra.drained_turns == 1 then
                card.ability[self.key].extra.drained_turns = 0
                card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("pm_drained"), colour = G.C.FILTER, delay = 0.45})
                SMODS.Stickers.pm_monochrome:apply(card, true)
                SMODS.Stickers.pm_coloredin:apply(card, nil)
            else
                card.ability[self.key].extra.drained_turns = card.ability[self.key].extra.drained_turns - 1
                card_eval_status_text(card, 'extra', nil, nil, nil, {message = card.ability[self.key].extra.drained_turns.." Remaining", colour = G.C.ATTENTION, delay = 0.45})
            end
        end
    end,
    draw = function (self, card, layer)
        if (layer == 'card' or layer == 'both') then
            if card.sprite_facing == 'front' then
                -- just here so we don't draw a sticker
            end
        end
    end,
}

-- Enhancements

SMODS.Enhancement({
    key = "frozen",
    atlas = "Enhancements",
    pos = {x = 0, y = 0},
    config = {h_mult = 10},
    weight = 6,
    loc_vars = function(self, info_queue, card)
        return { vars = { self.config.h_mult } }
    end,
})

SMODS.Enhancement({
    key = "quantum",
    atlas = "Enhancements",
    pos = {x = 1, y = 0},
    config = {
        bonus = 30, 
        mult = 4, 
        x_mult = 2, 
        h_x_mult = 1.5, 
        h_dollars = 3, 
        l_mult = 20, 
        l_dollars = 20, 
        odds = 5, 
        l_odds = 15, 
        old_enhancement = nil,
        old_shader = nil, 
    },
    weight = 0,
    any_suit = true,
    always_scores = true,
    in_pool = function(self, args)
        return false
    end,
    loc_vars = function(self, info_queue, card)
        return { vars = { self.config.bonus, self.config.mult, self.config.x_mult, self.config.h_x_mult, self.config.h_dollars, (G.GAME.probabilities.normal or 1), self.config.l_mult, self.config.l_dollars, self.config.odds, self.config.l_odds } }
    end,
    calculate = function(self, card, context)
        if context.main_scoring and context.cardarea == G.play then
            if pseudorandom('lucky') < (G.GAME.probabilities.normal / card.ability.odds) then
                return{
                    mult = card.ability.l_mult,
                    card = card
                }
            end
            if pseudorandom('lucky') < (G.GAME.probabilities.normal / card.ability.l_odds) then
                ease_dollars(card.ability.l_dollars)
                return{
                    message = "$20",
                    card = card, 
                    colour = G.C.MONEY
                }
            end
        end
    end
})

SMODS.Enhancement{
    key = "slipper",
    config = {bonus = 0, old_enhancement = nil, old_nominal = 0, old_bonus = 0},
    atlas = "Enhancements",
    pos = {x = 2, y = 0},
    weight = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    in_pool = function(self, args)
        return false
    end,
    set_ability = function(self, card, initial, delay_sprites)
        if card.base then old_nominal = card.base.nominal or 0
        else old_nominal = 0 end
        card.ability.bonus = (old_nominal * -1) + (card.ability.old_bonus or 0) + (card.ability.perma_bonus or 0) 
        card:set_sprites(card.ability.old_enhancement or G.P_CENTERS.c_base)
    end,
    draw = function(self, card, layer)
        if (layer == 'card' or layer == 'both') then
            if card.sprite_facing == 'front' then
                card:set_sprites(card.ability.old_enhancement or G.P_CENTERS.c_base)
            end
        end
    end,
}

-- Seals
SMODS.Seal{
    key = 'seal_quantum',
    config = {
        p_dollars = 3,
        repetitions = 1,
        old_seal = nil,
    },
    atlas = "Enhancements",
    pos = {x = 2, y = 0},
    badge_colour = SMODS.Gradients.pm_rgbled,
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.seal.repetitions, card.ability.seal.p_dollars} }
    end,
    calculate = function(self, card, context)
        if context.repetition then
            return {
                message = localize('k_again_ex'),
                repetitions = card.ability.repetitions,
                card = card
            }
        end
        if context.end_of_round and #G.consumeables.cards < G.consumeables.config.card_limit then 
            if G.GAME.last_hand_played then
                local _planet = 0
                for k, v in pairs(G.P_CENTER_POOLS.Planet) do
                    if v.config.hand_type == G.GAME.last_hand_played then
                        _planet = v.key
                    end
                end
                local t = {
                    set = 'Planet',
                    key = _planet,
                }
                SMODS.add_card(t) 
            end
        end
        if context.discard and context.other_card == card and #G.consumeables.cards < G.consumeables.config.card_limit then
            local t = {
                set = 'Tarot',
            }
            SMODS.add_card(t) 
        end
    end,
    get_p_dollars = function(self, card)
        return card.ability.seal.p_dollars
    end,
    in_pool = function(self, args)
        return false
    end,
}

-- load consumable type
SMODS.ConsumableType{
    key = "BattleCard",
    primary_colour = HEX("CC2E23"),
    secondary_colour = HEX("CC2E23"),
    collection_row = {5, 2},
    shop_rate = ((pm_config.bc_rarity > 1) and pm_config.bc_rarity - 1) or 0.0,
    allow_duplicates = (G.GAME and G.GAME.used_vouchers.v_pm_copycat) or false,
    default = "c_pm_one_up",
    rarities = {
        {key = 'pm_common', rate = 65},
        {key = 'pm_uncommon', rate = 25},
        {key = 'pm_rare', rate = 1},
    },
    prefix_config = { key = true },
    loc_txt = { 
        name = 'Battle Card', -- used on card type badges
        collection = 'Battle Cards', -- label for the button to access the collection
    },
    set_card_type_badge = function(self,_c,card,badges)
		table.insert(badges, create_badge(localize('pm_battle_card'), HEX("CC2E23"), nil, 1.2))
		if _c.discovered then
			local rarity_names = {
                ['pm_common'] = localize('k_common'), 
                ['pm_uncommon'] = localize('k_uncommon'), 
                ['pm_rare'] = localize('k_rare'),
            }
			local rarity_name = rarity_names[_c.rarity]
			local rarity_color = G.C.RARITY[_c.rarity]
			table.insert(badges, create_badge(rarity_name, rarity_color, nil, 1.0))
		end
	end,
}

-- Stakes
SMODS.Stake{
    key = 'rainbow',
    applied_stakes = {"gold"},
    unlocked = true,
    colour = SMODS.Gradients.pm_rgbled,
    prefix_config = { applied_stakes = { mod = false } },
    atlas = 'PMChips', pos = { x = 0, y = 0 },
    sticker_atlas = 'PMStickers', sticker_pos = { x = 0, y = 0 },
    modifiers = function()
		G.GAME.modifiers['enable_pm_coloredin'] = true
	end,
}

-- DRAWSTEPS
-- drawing drained
SMODS.DrawStep {
    key = 'drained_step',
    order = -1,
    conditions = {
        facing = 'front',
    },
    func = function (card, layer)
        if layer == 'card' or layer == 'both' then
            if card.ability and card.ability['pm_monochrome'] and (card.config.center.discovered or card.bypass_discovery_center) then
                card.children.center:draw_shader('pm_drained', nil, card.ARGS.send_to_shader)
                if card.children.front and (card.ability.delayed or (card.ability.effect ~= 'Stone Card' and not card.config.center.replace_base_card)) then
                    card.children.front:draw_shader('pm_drained', nil, card.ARGS.send_to_shader)
                end
            end
        end
    end,
}

SMODS.DrawStep {
    key = 'quantum_estep',
    order = 10,
    conditions = {
        facing = 'front',
    },
    func = function (card, layer)
        if layer == 'card' or layer == 'both' then
            if card.edition and card.edition.pm_quantum and card.edition.old_shader and (card.config.center.discovered or card.bypass_discovery_center) then
                card.children.center:draw_shader(card.edition.old_shader, nil, card.ARGS.send_to_shader)
                if card.children.front and card.ability.effect ~= 'Stone Card' then
                    card.children.front:draw_shader(card.edition.old_shader, nil, card.ARGS.send_to_shader)
                end
            end
        end
    end,
}

SMODS.DrawStep {
    key = 'quantum_sstep',
    order = 30,
    conditions = {
        facing = 'front',
    },
    func = function (card, layer)
        local seal = G.P_SEALS[card.seal] or {}
        if layer == 'card' or layer == 'both' then
            if card.seal == 'pm_seal_quantum' and card.ability.seal.old_seal then
                G.shared_seals[card.ability.seal.old_seal].role.draw_major = card
                G.shared_seals[card.ability.seal.old_seal]:draw_shader('dissolve', nil, nil, nil, card.children.center)
                if card.ability.seal.old_seal == 'Gold' then G.shared_seals[card.ability.seal.old_seal]:draw_shader('voucher', nil, card.ARGS.send_to_shader, nil, card.children.center) end
            end
        end
    end,
}


-- drawing the front sprite for replica
SMODS.DrawStep {
    key = 'replica_step',
    order = 65,
    conditions = {
        facing = 'front',
    },
    func = function (card, layer)
        if layer == 'card' or layer == 'both' then
            if card.edition and card.edition.pm_replica and (card.config.center.discovered or card.bypass_discovery_center) then
                card.children.replica_step = Sprite(card.T.x, card.T.y, card.T.w, card.T.h, G.ASSET_ATLAS['pm_Things'], { x = 4, y = 3 })
            else
                card.children.replica_step = nil
            end
        end
    end,
}

pm_total_chips = function(card)
    local total_chips = (card.base.nominal) + (card.ability.bonus) + (card.ability.perma_bonus or 0) 
    if card.edition then total_chips = total_chips + (card.edition.chips or 0) end
    return total_chips
  end

-- remove function, received from the Pokermon Mod
remove = function(self, card, context)
play_sound('tarot1')
card:juice_up(0.3, 0.4)
card.states.drag.is = true
card.children.center.pinch.x = true
G.E_MANAGER:add_event(Event({
    trigger = 'after', delay = 0.3, blockable = false,
    func = function()
        G.jokers:remove_card(card)
        card:remove()
        card = nil
        return true
    end
}))
card.gone = true
return true
end

-- get the function from the blind to cap the score, credits to cryptid for making this work
function Blind:cap_score(score)
	if not self.disabled then
		local obj = self.config.blind
		if obj.cap_score and type(obj.cap_score) == "function" then
			return obj:cap_score(score)
		end
	end
	return score
end

function SMODS.current_mod.reset_game_globals(run_start)
	G.GAME.pm_ach_conditions = G.GAME.pm_ach_conditions or {}
end

-- we're injecting not using lovely babyyyyyyyyy
local get_flush_ref = get_flush
function get_flush(hand)
  local base = get_flush_ref(hand)
  local results = {}
  local spiketop = next(SMODS.find_card('j_pm_spiketop'))
  local morton = next(SMODS.find_card('j_pm_morton'))
  local target = (next(SMODS.find_card('j_pm_plunger')) and 3) or (next(find_joker('Four Fingers')) and 4) or 5
  local suits = {
    ["Spades"] = 0,
    ["Hearts"] = 0,
    ["Clubs"] = 0,
    ["Diamonds"] = 0,
  }
  local nuits = {
    "Spades",
    "Hearts",
    "Clubs",
    "Diamonds"
  }
  
    if (not spiketop and not morton) and #hand < target then
        return base
    elseif not spiketop and not morton then
        for j = 1, #nuits do
            local t = {}
            local suit = nuits[j]
            local flush_count = 0
            for i=1, #hand do
              if hand[i]:is_suit(suit, nil, true) then flush_count = flush_count + 1;  t[#t+1] = hand[i] end 
            end
            if flush_count >= target then
              table.insert(results, t)
              return results
            end
        end
        return base
    else
        if morton then -- morton check
            local m = {}
            local stone_count = 0
            for i=1, #hand do
                if hand[i].ability.name == 'Stone Card' then stone_count = stone_count + 1; m[#m+1] = hand[i] end
            end

            if stone_count >= target then
                table.insert(results, m)
                return results 
            else return base
            end
        end
        if spiketop then -- spiketop check
            local t = {}
            for k, v in pairs(suits) do
                local suit = k
                local flush_count = 0
                for i=1, #hand do
                    if hand[i].ability.name ~= 'Wild Card' then
                        if hand[i]:is_suit(suit, nil, true) then 
                            flush_count = flush_count + 1  
                            suits[suit] = suits[suit] + 1
                            t[#t+1] = hand[i] 
                        end 
                    end
                end

                for i=1, #hand do
                    if hand[i].ability.name == 'Wild Card' then
                        if hand[i]:is_suit(suit) and suits[suit] == 0 then 
                            flush_count = flush_count + 1  
                            suits[suit] = suits[suit] + 1
                            t[#t+1] = hand[i] 
                        end 
                    end
                end

                if flush_count >= target then
                    table.insert(results, t)
                    return results
                end
            end
            if suits["Spades"] > 0 and suits["Hearts"] > 0 and suits["Diamonds"] > 0 and suits["Clubs"] > 0 then
                table.insert(results, t)
                return results
            else
                return base
            end
        end
    end
end

local get_straight_ref = get_straight
function get_straight(hand)
  local base = get_straight_ref(hand)
  local results = {}
  local bloop = next(SMODS.find_card('j_pm_bloopking'))
  local cork = next(SMODS.find_card('j_pm_cork'))
  local sledge = next(SMODS.find_card('j_pm_sledgebro'))
  local target = (next(find_joker('Four Fingers')) and 4) or 5
  
  if #hand > 5 or #hand < target then return base
  elseif bloop then
    local t = {}
    for i=1, #hand do
        local id = hand[i]:get_id()
        if hand[i]:is_face() then return base
        else t[i+1] = hand[i]
        end
    end
    table.insert(results, t)
    return results
  elseif cork then -- cork check
    local m = {}
    local stone_count = 0
    for i=1, #hand do
        if hand[i].ability.name == 'Stone Card' then stone_count = stone_count + 1; m[#m+1] = hand[i] end
    end

    if stone_count >= target then
        table.insert(results, m)
        return results 
    else return base end
  elseif sledge then
    local t = {}
    local IDS = {}
    local stone_cards = {}
    for i=1, #hand do

        if hand[i].config.center == G.P_CENTERS.m_stone then
            stone_cards[#stone_cards+1] = hand[i]
        else 
            local id = hand[i]:get_id()
            if id > 1 and id < 15 then
                if IDS[id] then
                    IDS[id][#IDS[id]+1] = hand[i]
                else
                    IDS[id] = {hand[i]}
                end
            end
        end
    end

    local straight_length = 0
    local straight = false
    local can_skip = next(find_joker('Shortcut')) 
    local skipped_rank = false
    for j = 1, 14 do
      if IDS[j == 1 and 14 or j] then
        straight_length = straight_length + 1
        skipped_rank = false
        for k, v in ipairs(IDS[j == 1 and 14 or j]) do
          t[#t+1] = v
        end
      elseif can_skip and not skipped_rank and j ~= 14 then
          skipped_rank = true
      elseif #stone_cards > 0 then
          t[#t+1] = stone_cards[#stone_cards]
          stone_cards[#stone_cards] = nil
      else
        straight_length = 0
        skipped_rank = false
        if not straight then t = {} end
        if straight then break end
      end
      if straight_length >= (5 - (four_fingers and 1 or 0)) then straight = true end 
    end
    if not straight then return ret end
    table.insert(ret, t)
    return ret

  end
  return base
end

local get_X_same_ref = get_X_same
function get_X_same(num, hand, or_more)
    if next(SMODS.find_card('j_pm_sledgebro')) then
        -- check first if all cards are stone
        local exus = true
        for k=1, #hand do
            if hand[k].config.center ~= G.P_CENTERS.m_stone then
                exus = false
                break
            end
        end

        if exus then
            return hand
        else
            local vals = {}
            for i = 1, SMODS.Rank.max_id.value do
                vals[i] = {}
            end
            for i=#hand, 1, -1 do
            local curr = {}
            table.insert(curr, hand[i])
            for j=1, #hand do
                if (hand[i]:get_id() == hand[j]:get_id() and i ~= j) or (hand[j].config.center == G.P_CENTERS.m_stone) then
                table.insert(curr, hand[j])
                end
            end
            if or_more and (#curr >= num) or (#curr == num) then
                vals[curr[1]:get_id()] = curr
            end
            end
            local ret = {}
            for i=#vals, 1, -1 do
            if next(vals[i]) then table.insert(ret, vals[i]) end
            end
            return ret
        end
    else return get_X_same_ref(num, hand, or_more) end
end

-- replacing an SMOD function lol
function SMODS.calculate_destroying_cards(context, cards_destroyed, scoring_hand)
    for i,card in ipairs(scoring_hand or context.cardarea.cards) do
        local destroyed = nil
        --un-highlight all cards
        if scoring_hand then highlight_card(card,(i-0.999)/(#scoring_hand-0.998),'down') end

        -- context.destroying_card calculations
        context.destroy_card = card
        context.destroying_card = scoring_hand and card
        for _, area in ipairs(SMODS.get_card_areas('jokers')) do
            local should_break
            for _, _card in ipairs(area.cards) do
                local eval, post = eval_card(_card, context)
                local self_destroy = false
                for key, effect in pairs(eval) do
                    if type(effect) == 'table' then
                        self_destroy = SMODS.calculate_effect(effect, card)
                    else
                        self_destroy = effect
                    end
                end
                SMODS.trigger_effects({post}, card)
                if self_destroy then 
                    destroyed = true
                    should_break = true
                    break
                end
            end
            if should_break then break end
        end
    
        if scoring_hand then 
            if not next(SMODS.find_card('j_pm_instantcamera')) and SMODS.has_enhancement(card, 'm_glass') and not card.debuff and pseudorandom('glass') < G.GAME.probabilities.normal/(card.ability.name == 'Glass Card' and card.ability.extra or G.P_CENTERS.m_glass.config.extra) then
                destroyed = true
            end
        end
        
        local eval, post = eval_card(card, context)
        local self_destroy = false
        for key, effect in pairs(eval) do
            self_destroy = SMODS.calculate_effect(effect, card)
        end
        SMODS.trigger_effects({post}, card)
        if self_destroy then destroyed = true end
        
        -- TARGET: card destroyed

        if destroyed then 
            if SMODS.shatters(card) then
                card.shattered = true
            else 
                card.destroyed = true
            end 
            cards_destroyed[#cards_destroyed+1] = card
        end
    end
end

local get_chip_mult_ref = Card.get_chip_mult
function Card:get_chip_mult()
    local result = get_chip_mult_ref(self)
    if self.ability.effect == "Lucky Card" then
        if next(SMODS.find_card('j_pm_catoluck')) then
            self.lucky_trigger = true
            return self.ability.mult
        else
            return result
        end
    end
    return result
end

local is_suit_ref = Card.is_suit
function Card:is_suit(suit, bypass_debuff, flush_calc)
    if flush_calc then
        if next(SMODS.find_card('j_pm_bloopking')) and self.config.center ~= G.P_CENTERS.c_base then
            return true
        else return is_suit_ref(self, suit, bypass_debuff, flush_calc) end
    else
        if self.debuff and not bypass_debuff then return end
        if next(SMODS.find_card('j_pm_bloopking')) and self.config.center ~= G.P_CENTERS.c_base then
            return true
        else return is_suit_ref(self, suit, bypass_debuff, flush_calc) end
    end
end

local set_debuff_ref = Card.set_debuff
function Card:set_debuff(should_debuff)
    local result = set_debuff_ref(self, should_debuff)
    if next(SMODS.find_card('j_pm_huey')) then
        local _card = SMODS.find_card('j_pm_huey')[1]
        if _card then 
            if _card.ability.extra.suit and self:is_suit(_card.ability.extra.suit) then
                self.debuff = false
                should_debuff = false
            end
        else return result
        end
    else return result
    end
end

function pm_in_array(haystack, needle)
	for i=1, #haystack do
		if haystack[i] == needle then return true end
	end
	return false
end

----------------------------------------------
------------MOD CODE END----------------------