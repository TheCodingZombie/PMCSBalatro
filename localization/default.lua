return {
    descriptions = {
        Back={},
        Blind={
            bl_pm_booking = {
                name = "The Boo",
                text = {
                    "Negative cards",
                    "get debuffed",
                }
            },

            bl_pm_bombking = {
                name = "The Bomb",
                text = {
                    "The first hand cannot score",
                    "more than 50% of required score",
                }
            },

            bl_pm_pirahnaking = {
                name = "The Pirahna Plant",
                text = {
                    "Debuffs random cards",
                    "each hand",
                }
            },

            bl_pm_pokeyking = {
                name = "The Cactus",
                text = {
                    "Caps score at 25% of required",
                    "score when playing #1#",
                }
            },

            bl_pm_wigglerking = {
                name = "The Wiggler",
                text = {
                    "When playing #1#,",
                    "doubles score required once",
                }
            },

            bl_pm_junior = {
                name = "The Junior",
                text = {
                    "Debuffs cards with editions,",
                    "enhancements, and seals",
                }
            },

            bl_pm_bowser = {
                name = "The Koopa King",
                text = {
                    "Discards cards with editions,",
                    "enhancements, and seals",
                }
            },

            bl_pm_goombaking = {
                name = "The Goomba",
                text = {
                    "Debuffs consumables",
                }
            },

            bl_pm_lakituking = {
                name = "The Lakitu",
                text = {
                    "Cannot play #1#",
                }
            },

            bl_pm_cheepking = {
                name = "The Cheep-Cheep",
                text = {
                    "Cannot play hands with",
                    "unscored cards",
                }
            },

            bl_pm_thwompking = {
                name = "The Thwomp",
                text = {
                    "Can only play",
                    "Stone Cards",
                }
            },

            bl_pm_billking = {
                name = "The Bullet",
                text = {
                    "Debuffs 15 random Jokers",
                    "and/or playing cards",
                }
            },

            bl_pm_bloopking = {
                name = "The Blooper",
                text = {
                    "All cards are face-down",
                }
            },

            bl_pm_drybowser = {
                name = "The Skeleton King",
                text = {
                    "Destroys cards with editions,",
                    "enhancements, and seals",
                }
            },

            bl_pm_lemmy = {
                name = "The Wild Card",
                text = {
                    "Shuffles the order",
                    "of your played cards",
                }
            },

            bl_pm_larry = {
                name = "The Blue",
                text = {
                    "Playing a hand containing #1#",
                    "is not allowed",
                }
            },

            bl_pm_iggy = {
                name = "The Lanky",
                text = {
                    "Discards one random card and increases the",
                    "score requirement by 100x the total chip value",
                }
            },

            bl_pm_wendy = {
                name = "The Ring",
                text = {
                    "Debuffs non-face cards",
                }
            },

            bl_pm_morton = {
                name = "The Moron",
                text = {
                    "Caps score at 50% when playing",
                    "Stone Cards",
                }
            },

            bl_pm_roy = {
                name = "The Strongarm",
                text = {
                    "Multiplies score requirement by",
                    "5x when debuffing this Blind",
                }
            },

            bl_pm_ludwig = {
                name = "The Clone",
                text = {
                    "Debuffs copies of Jokers",
                }
            },

            bl_pm_boomboom = {
                name = "The Tantrum",
                text = {
                    "You cannot win on the first 2 hands",
                    "unless you have less than 3"
                }
            },

            bl_pm_pompom = {
                name = "The Ninja",
                text = {
                    "1 in 4 chance to cap score at 10%",
                    "of required score",
                }
            },

            bl_pm_kamek = {
                name = "The Wizard",
                text = {
                    "Cards do not have base chips",
                }
            },

        },
        Edition={
            e_pm_replica = {
                name = "Replica",
                text = {
                    "{X:mult,C:white}X#1#{} Mult",
                    "Disabled during {C:mult}Boss Blinds{}",
                    "{s:0.9,C:inactive}A less effective{}",
                    "{s:0.9,C:inactive}duplicate of the original.{}",
                },
            },
            e_pm_quantum = {
                name = "Quantum",
                text = {
                    "{C:chips}+#1#{} Chips",
                    "{C:mult}+#2#{} Mult",
                    "{X:mult,C:white}X#3#{} Mult",
                    "{C:dark_edition}+#4#{} card limit",
                },
            },
        },
        Enhanced={
            m_pm_frozen = {
                name = "Frozen Card",
                text = {
                    "{C:mult}+#1#{} Mult when held in hand",
                    "cannot be {C:red}debuffed{}",
                }
            },

            m_pm_quantum = {
                name = "Quantum Card",
                text = {
                    "{C:chips}+#1#{} Chips",
                    "{C:mult}+#2#{} Mult",
                    "{X:mult,C:white}X#3#{} Mult",
                    "{X:mult,C:white}X#4#{} Mult when held in hand",
                    "{C:money}$#5#{} when held in hand at end of round",
                    "{C:green}#6# in #9#{} chance to gain {C:mult}+#7#{} Mult",
                    "{C:green}#6# in #10#{} chance to gain {C:money}$#8#{}",
                    "Can be used as any suit, always scores",
                }
            },
            m_pm_slipper = {
                name = "Cursed",
                text = {
                    "Card does not have base chips",
                }
            },
        },
        Joker={

            j_pm_shyguy = {

                name = "Shy Guy",
                text = {
                    "{C:chips}+#1#{} Chips",
                },
            },

            j_pm_greenguy = {
              
                name = "Green Shy Guy",
                text = {
                    "Played cards with {C:spades}#2#{} suit",
                    "give {C:chips}+#1#{} Chips when scored",
                },
            },

            j_pm_yellowguy = {
              
                name = "Yellow Shy Guy",
                text = {
                    "Played cards with {C:diamonds}#2#{} suit",
                    "give {C:chips}+#1#{} Chips when scored",
                },
            },
            
            j_pm_blueguy = {
              
                name = "Blue Shy Guy",
                text = {
                    "Played cards with {C:clubs}#2#{} suit",
                    "give {C:chips}+#1#{} Chips when scored",
                },
            },

            j_pm_pinkguy = {
              
                name = "Pink Shy Guy",
                text = {
                    "Played cards with {C:hearts}#2#{} suit",
                    "give {C:chips}+#1#{} Chips when scored",
                },
            },

            j_pm_slurpguy = {
              
                name = "Slurp Guy",
                text = {
                    "This Joker gains {C:mult}+#2#{} Mult per scoring", 
                    "{C:attention}Enhanced card{} played,",
                    "removes card {C:attention}enhancement{}",
                    "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult){}",
                },
            },

            j_pm_blueslurp = {
              
                name = "Blue Slurp Guy",
                text = {
                    "This Joker gains {C:chips}+#2#{} Chips per scoring", 
                    "{C:attention}Enhanced card{} played,",
                    "removes card {C:attention}enhancement{}",
                    "{C:inactive}(Currently {C:chips}+#1#{C:inactive} Chips){}",
                },
            },

            j_pm_yellowslurp = {
              
                name = "Yellow Slurp Guy",
                text = {
                    "This Joker gives {C:money}$#1#{} per scoring", 
                    "{C:attention}low enhanced card{} played and",
                    "{C:money}$#2#{} per {C:attention}high enhanced card{} played,",
                    "removes card {C:attention}enhancement{}",
                },
            },

            j_pm_spikeguy = {
              
                name = "Spike Guy",
                text = {
                    "{C:chips}+#1#{} Chips if played", 
                    "hand contains a {C:attention}Flush{}",
                },
            },

            j_pm_greenspike = {
              
                name = "Green Spike Guy",
                text = {
                    "{C:chips}+#1#{} Chips if played", 
                    "hand contains a {C:attention}Flush{}",
                    "and with only {C:spades}#2#{} suit",
                },
            },
            
            j_pm_bluespike = {
              
                name = "Blue Spike Guy",
                text = {
                    "{C:chips}+#1#{} Chips if played", 
                    "hand contains a {C:attention}Flush{}",
                    "and with only {C:clubs}#2#{} suit",
                },
            },

            j_pm_yellowspike = {
              
                name = "Yellow Spike Guy",
                text = {
                    "{C:chips}+#1#{} Chips if played", 
                    "hand contains a {C:attention}Flush{}",
                    "and with only {C:diamonds}#2#{} suit",
                },
            },

            j_pm_pinkspike = {
              
                name = "Pink Spike Guy",
                text = {
                    "{C:chips}+#1#{} Chips if played", 
                    "hand contains a {C:attention}Flush{}",
                    "and with only {C:hearts}#2#{} suit",
                },
            },

            j_pm_rollerguy = {
              
                name = "Roller Guy",
                text = {
                    "This Joker gains {C:chips}+#2#{} Chips",
                    "when you play a {C:attention}Straight{}",
                    "{C:inactive}(Currently {C:chips}+#1#{C:inactive} Chips){}",
                },
            },

            j_pm_greenroller = {
              
                name = "Green Roller Guy",
                text = {
                    "This Joker gains {C:mult}+#2#{} Mult",
                    "when you play a {C:attention}Straight{}",
                    "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult){}",
                },
            },

            j_pm_pinkroller = {
              
                name = "Pink Roller Guy",
                text = {
                    "This Joker gives {C:money}$#1#{}",
                    "when you play a {C:attention}Straight{}",
                },
            },

            j_pm_sombreroguy = {
              
                name = "Sombrero Guy",
                text = {
                    "Retrigger all other {C:attention}Jokers{}",
                },
            },

            j_pm_shybandit = {
              
                name = "The Shy Bandit",
                text = {
                    "If {C:attention}first hand{} of round has",
                    "only {C:attention}1{} card, {C:green}#2# in #3#{}",
                    "chance to {C:attention}destroy{} that card.",
                    "This gains {X:mult,C:white}X#4#{} Mult and gain {C:money}$#5#{}.",
                    "{C:inactive}Currently {X:mult,C:white}X#1#{C:inactive} Mult){}",
                },
            },

            j_pm_goomba = {
              
                name = "Goomba",
                text = {
                    "{C:mult}+5{} Mult",
                },
            },

            j_pm_paragoomba = {
              
                name = "Paragoomba",
                text = {
                    "Gain {C:mult}+10{} Mult",
                    "on a {C:attention}High Card{}",
                },
            },

            j_pm_bonegoomba = {
              
                name = "Bone Goomba",
                text = {
                    "Retrigger the {C:attention}first card{} played",
                    "then give it {C:mult}+8{} Mult",
                },
            },

            j_pm_koopa = {
              
                name = "Koopa Troopa",
                text = {
                    "If played hand contains a {C:attention}#1#{},",
                    "Each card gains {C:chips}+#2#{} bonus chips when scored",
                },
            },

            
            j_pm_paratroop = {
              
                name = "Paratroopa",
                text = {
                    "If played hand contains a {C:attention}#1#{},",
                    "Each card gives {C:mult}+Mult{}",
                    "equal to its total chips",
                },
            },

            j_pm_swoop = {
              
                name = "Swoop",
                text = { 
                    "Each {C:attention}Enhanced card{} played",
                    "gains {C:chips}+#1#{} bonus Chips when scored.",
                    "removes card {C:attention}enhancement{}",
                },
            },

            j_pm_cheep = {
              
                name = "Cheep Cheep",
                text = { 
                    "This Joker gains {C:chips}+#2#{} Chips",
                    "per {C:attention}non-scoring{} card",
                    "{C:inactive}(Currently {C:chips}+#1#{C:inactive} Chips){}",
                },
            },

            j_pm_bloop = {
              
                name = "Blooper",
                text = { 
                    "{X:mult,C:white}X#1#{} Mult.",
                    "{C:green}#2# in #3#{} chance to {C:attention}flip{}",
                    "over a card when you play a hand",
                    "{C:inactive}(each card has a separate chance){}",
                },
            },

            j_pm_fishyboop = {
              
                name = "Spike",
                text = { 
                    "If played hand contains a {C:attention}#1#{}",
                    "create a {C:attention}Spin Jump{}",
                    "If played hand contains a {C:attention}#2#{}",
                    "create a {C:attention}Huge Line Jump{}",
                },
            },

            j_pm_drybones = {
              
                name = "Dry Bones",
                text = { 
                    "{C:attention}Stone Cards{} give {V:1}+#1#{} #2#",
                    "when scored. Prevents {C:red}death{} if chips scored",
                    "are at least {C:attention}50%{} of required chips",
                    "{C:inactive}(#3#){}"
                },
            },

            j_pm_boo = {
              
                name = "Boo",
                text = { 
                    "At end of round, {C:green}#1# in #2#{} chance to",
                    "{C:mult}destroy{} this Joker and make a random",
                    "Joker {C:dark_edition}Negative{}",
                },
            },

            j_pm_rat = {
              
                name = "Scaredy Rat",
                text = { 
                    "{X:chips,C:white}X#1#{} Chips",
                },
            },

            j_pm_ninji = {
              
                name = "Ninji",
                text = { 
                    "Spades give {C:mult}+#1#{} Mult while",
                    "held in hand. If {C:attention}last hand{}",
                    "of round, {X:mult,C:white}X#2#{} Mult instead.",
                },
            },
        
            j_pm_fuzzy = {
              
                name = "Fuzzy",
                text = { 
                    "If {C:attention}first discard{} is {C:attention}one card{},",
                    "{C:mult}destroy{} it and gain {C:blue}+#1#{} Hand",
                },
            },

            j_pm_snifit = {
              
                name = "Snifit",
                text = { 
                    "If played hand contains a {C:attention}#1#{},",
                    "gain {C:chips}+#2#{} Chips per card of matching {C:attention}rank{}",
                    "{C:inactive}(Only one rank per hand){}",
                },
            },

            j_pm_greensnifit = {
              
                name = "Green Snifit",
                text = {
                    "Played cards with {C:spades}#2#{} suit",
                    "give {C:mult}+#1#{} Mult when scored",
                },
            },

            j_pm_yellowsnifit = {
              
                name = "Yellow Snifit",
                text = {
                    "Played cards with {C:diamonds}#2#{} suit",
                    "give {C:mult}+#1#{} Mult when scored",
                },
            },
            
            j_pm_bluesnifit = {
              
                name = "Blue Snifit",
                text = {
                    "Played cards with {C:clubs}#2#{} suit",
                    "give {C:mult}+#1#{} Mult when scored",
                },
            },

            j_pm_pinksnifit = {
              
                name = "Pink Snifit",
                text = {
                    "Played cards with {C:hearts}#2#{} suit",
                    "give {C:mult}+#1#{} Mult when scored",
                },
            },

            j_pm_slurfit = {
              
                name = "Red Slurp Snifit",
                text = {
                    "{X:attention,C:white}All for One{}",
                    "Playing {C:mult}Mult {C:attention}enhancements{} boosts this card:",
                    "{X:attention,C:white}Mult:{} {C:mult}+#1#{} Mult",
                    "{X:attention,C:white}Glass{} and {X:attention,C:white}Steel:{} {X:mult,C:white}+X#2#{} Mult",
                    "{C:inactive}(Currently {C:mult}+#3#{C:inactive} Mult and {X:mult,C:white}X#4#{C:inactive} Mult){}",
                },
            },

            j_pm_blueslurfit = {
              
                name = "Blue Slurp Snifit",
                text = {
                    "{X:attention,C:white}All for One{}",
                    "Playing {C:chips}Chip {C:attention}enhancements{} and {C:attention}editions{} boosts this card:",
                    "{X:attention,C:white}Bonus{} and {X:attention,C:white}Stone:{} {C:chips}+#1#{} Chips",
                    "{X:attention,C:white}Foil:{} {X:chips,C:white}+X#2#{} Chips",
                    "{C:inactive}(Currently {C:chips}+#3#{C:inactive} Chips and {X:chips,C:white}X#4#{C:inactive} Chips){}",
                },
            },

            j_pm_yellowslurfit = {
              
                name = "Yellow Slurp Snifit",
                text = {
                    "{X:attention,C:white}All for One{}",
                    "Playing {C:attention}certain enhancements{} boosts this card:",
                    "{X:attention,C:white}Gold:{} {C:mult}+#1#{} Mult and {C:money}$#2#{}",
                    "{X:attention,C:white}Wild:{} {C:chips}+#3#{} Chips",
                    "{X:attention,C:white}Lucky:{} {X:mult,C:white}+X#4#{} Mult when a {C:attention}Lucky{} card triggers",
                    "{C:inactive}(Currently {C:mult}+#5#{C:inactive} Mult, {C:chips}+#6#{C:inactive} Chips, {X:mult,C:white}X#7#{C:inactive} Mult){}",
                },
            },

            j_pm_spikesnif = {
              
                name = "Spike Snifit",
                text = {
                    "{C:mult}+#1#{} Mult if played", 
                    "hand contains a {C:attention}Flush{}",
                },
            },

            j_pm_greenspikesnif = {
              
                name = "Green Spike Snifit",
                text = {
                    "{C:mult}+#1#{} Mult if played", 
                    "hand contains a {C:attention}Flush{}",
                    "and with only {C:spades}#2#{} suit",
                },
            },
            
            j_pm_bluespikesnif = {
              
                name = "Blue Spike Snifit",
                text = {
                    "{C:mult}+#1#{} Mult if played", 
                    "hand contains a {C:attention}Flush{}",
                    "and with only {C:clubs}#2#{} suit",
                },
            },

            j_pm_yellowspikesnif = {
              
                name = "Yellow Spike Snifit",
                text = {
                    "{C:mult}+#1#{} Mult if played", 
                    "hand contains a {C:attention}Flush{}",
                    "and with only {C:diamonds}#2#{} suit",
                },
            },

            j_pm_pinkspikesnif = {
              
                name = "Pink Spike Snifit",
                text = {
                    "{C:mult}+#1#{} Mult if played", 
                    "hand contains a {C:attention}Flush{}",
                    "and with only {C:hearts}#2#{} suit",
                },
            },

            j_pm_spiny = {

                name = "Spiny",
                text = {
                    "{C:attention}Retrigger{} all cards",
                    "if they are all the same {C:attention}suit{}",
                    "{C:inactive}(Will not always trigger on a Flush!){}",
                },

            },

            j_pm_buzzy = {

                name = "Buzzy Beetle",
                text = {
                    "If played hand is a {C:attention}#1#{},",
                    "{C:attention}retrigger{} each card played",
                },
            },

            j_pm_spiketop = {

                name = "Spike Top",
                text = {
                    "If played hand contains a",
                    "{C:spades}Spade{}, {C:hearts}Heart{}, {C:diamonds}Diamond{}, and a {C:clubs}Club{} card,",
                    "it counts as a {C:attention}#1#{} and gives {X:mult,C:white}X#2#{} Mult",
                },
            },

            j_pm_wrench = {

                name = "Rocky Wrench",
                text = {
                    "Played {C:attention}#2#{} cards give {X:mult,C:white}X#1#{} Mult",
                    "when played. The first card played will", 
                    "become {C:attention}#2#{}",
                },
            },

            j_pm_pokey = {

                name = "Pokey",
                text = {
                    "{C:green}#1# in #2#{} chance to make each card {C:attention}#3#{}",
                    "{C:attention}Wild Cards{} give {C:mult}+#4#{} Mult",
                },
            },

            j_pm_greenpokey = {

                name = "Green Pokey",
                text = {
                    "If any Joker has a {C:green}chance{} to {C:attention}trigger{},",
                    "guarantee the Joker {C:attention}triggers{} if played hand",
                    "contains a {C:attention}#1#{}",
                },
            }, 

            j_pm_bomb = {
              
                name = "Bob-Omb",
                text = { 
                    "{C:mult}+#1#{} Mult.",
                    "Debuffs itself until end of round.",
                },
            },

            j_pm_podoboo = {
              
                name = "Lava Bubble",
                text = { 
                    "If {C:attention}first hand{} is {C:attention}one card{},",
                    "{C:mult}destroy{} it and gain {C:mult}+#2#{} Mult",
                    "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult){}",
                },
            },

            j_pm_fpirplant = {
              
                name = "Fire Pirahna Plant",
                text = { 
                    "If {C:attention}first hand{} is {C:attention}one card{},",
                    "give it a {C:attention}random enhancement{}.",
                    "{C:green}#1# in #2#{} chance to {C:mult}destroy{} it instead",
                },
            },

            j_pm_ptooie = {
              
                name = "Ptooie",
                text = { 
                    "If {C:attention}first hand{} is {C:attention}one card{},",
                    "give it a {C:attention}random seal{}.",
                    "{C:green}#1# in #2#{} chance to {C:mult}destroy{} it instead",
                },
            },
            
            j_pm_dino = {
              
                name = "Dino Rhino",
                text = { 
                    "If {C:attention}first hand{} is {C:attention}one card{},",
                    "give it a {C:attention}random edition{}",
                    "{C:inactive}(Not including {C:dark_edition}Negative{C:inactive}){}.",
                    "{C:green}#1# in #2#{} chance to {C:mult}destroy{} it instead",
                },
            },

            j_pm_hammerbro = {
              
                name = "Hammer Bro",
                text = { 
                    "Played {C:clubs}#1#{} cards become {C:attention}Steel{} cards",
                    "and give {C:mult}+#2#{} Mult"
                },
            },

            j_pm_boomerbro = {
              
                name = "Boomerang Bro",
                text = { 
                    "Played {C:spades}#1#{} cards", 
                    "retrigger {C:attention}once{}",
                },
            },

            j_pm_firebro = {
              
                name = "Fire Bro",
                text = { 
                    "Played {C:hearts}#2#{} cards give {X:mult,C:white}X#1#{} Mult",
                    "Playing other suits destroys all {C:hearts}#2#{} cards played",
                },
            },

            j_pm_icebro = {
              
                name = "Ice Bro",
                text = { 
                    "Played {C:diamonds}#1#{} cards become {C:attention}Frozen{}",
                    "Gain {C:mult}+#2#{} for each {C:attention}Frozen Card{} in full deck",
                    "{C:inactive}(Currently {C:mult}+#3#{C:inactive} Mult)",
                    
                },
            },

            j_pm_jugglerbro = {
              
                name = "Juggler Bro",
                text = { 
                    "{C:attention}#1#{} hand size,",
                    "Gain {C:attention}#2#{} hand size each round",
                    "{C:inactive}(Max #3# hand size gain){}",
                },
            },

            j_pm_circusbro = {
              
                name = "Circus Bro",
                text = { 
                    "If played hand contains a {C:attention}#1#{},",
                    "gain {C:mult}+#2#{} Mult per card of matching {C:attention}rank{}",
                    "{C:inactive}(Only one rank per hand){}",
                },
            },

            j_pm_sledgebro = {
              
                name = "Sledge Bro",
                text = { 
                    "{C:attention}Stone Cards{} can be",
                    "used as {C:attention}any rank{}",
                },
            },

            j_pm_magikoopa = {
              
                name = "Magikoopa",
                text = { 
                    "If {C:attention}first discard{} is {C:attention}one card{},",
                    "{C:mult}destroy{} it and gain a {C:red}Battle Card{}",
                },
            },

            -- Misc Jokers

            j_pm_starpoints = {
              
                name = "Star Points",
                text = { 
                    "At the end of the {C:attention}Boss Blind{},",
                    "Choose from {C:attention}3{} different bonuses",
                },
            },
            
            j_pm_battlejimbo = {

                name = "Battlemancer",
                text = { 
                    "At the {C:attention}start of the round{},",
                    "create a random {C:mult}Battle Card{}",
                    "{C:inactive}(Must have room){}",
                },
            },

            -- Koopalings

            j_pm_kamek = {
              
                name = "Kamek",
                text = { 
                    "If {C:attention}first discard{} is {C:attention}one card{},",
                    "{C:mult}destroy{} it and gain a {C:purple}Spectral{} card",
                    "{C:mult}+#1#{} Discard",
                },
                unlock = {
                    "Beat a particularly",
                    "{C:dark_edition}magical{} Boss Blind",
                },
            },

            j_pm_morton = {
              
                name = "Morton",
                text = { 
                    "If hand consists of 5 {C:attention}Stone Cards{},",
                    "it counts as a {C:attention}#1#{} and gives {X:mult,C:white}X#2#{} Mult",
                    "At {C:attention}start of round{}, gain a {C:chips}Tower{}",
                },
                unlock = {
                    "Beat a particularly",
                    "{C:dark_edition}blockheaded{} Boss Blind",
                },
            },

            j_pm_iggy = {
              
                name = "Iggy",
                text = { 
                    "On {C:attention}first hand{} of round, {C:mult}destroy{} a",
                    "random card held in hand and gain {X:mult,C:white}+XMult{}",
                    "equal to {C:attention}1/10th{} the card's value",
                    "{C:inactive}(Currently {X:mult,C:white}X#1#{C:inactive}){}",
                },
                unlock = {
                    "Beat a particularly",
                    "{C:green}lanky{} Boss Blind",
                },
            },

            j_pm_ludwig = {
              
                name = "Ludwig",
                text = { 
                    "At the end of the {C:attention}Boss Blind{}", 
                    "gain a {C:dark_edition}Negative {C:attention}Ludwig Copy{}",
                    "Gain {X:mult,C:white}+X#2#{} per {C:attention}Joker copy{} you have.",
                    "{C:inactive}(Currently {X:mult,C:white}X#1#{C:inactive} Mult){}",
                },
                unlock = {
                    "Beat a {C:blue}clone-styled{}",
                    "Boss Blind",
                },
            },

            j_pm_ludwigcopy = {
              
                name = "Ludwig Copy",
                text = { 
                    "{C:inactive}#1#{}",
                },
                unlock = {
                    "Beat a {C:blue}clone-styled{}",
                    "Boss Blind",
                },
            },

            j_pm_wendy = {
              
                name = "Wendy",
                text = { 
                    "Create a {C:dark_edition}Negative {C:purple}Saturn{}", 
                    "{C:attention}at the start of round",
                    "Straights give {X:mult,C:white}+X#2#{} Mult",
                    "{C:inactive}(Currently {X:mult,C:white}X#1#{C:inactive} Mult){}",
                },
                unlock = {
                    "Beat a {C:red}ring-centric{}",
                    "Boss Blind",
                },
            },

            j_pm_larry = {
              
                name = "Larry",
                text = { 
                    "Create a {C:dark_edition}Negative {C:purple}Jupiter{}", 
                    "{C:attention}at the start of round",
                    "Flushes give {X:mult,C:white}+X#2#{} Mult",
                    "{C:inactive}(Currently {X:mult,C:white}X#1#{C:inactive} Mult){}",
                },
                unlock = {
                    "Beat a {C:blue}blue-haired{}",
                    "Boss Blind",
                },
            },

            j_pm_lemmy = {
              
                name = "Lemmy",
                text = { 
                    "{C:attention}Wild Cards{} cannot be {C:attention}debuffed{}",
                    "Scored enhanced cards become {C:attention}Wild Cards{}",
                    "and gain {C:mult}+#1#{} Mult when held in hand",
                },
                unlock = {
                    "Beat a {C:pm_rgbled}wild{}",
                    "Boss Blind",
                },
            },
            
            j_pm_roy = {
              
                name = "Roy",
                text = { 
                    "Triggering the {C:attention}Boss Blind{} #3# times",
                    "will {C:mult}disable{} it and give {X:mult,C:white}X#1#{} Mult",
                    "for the rest of the round",
                    "{C:inactive}(Triggered {C:attention}#2#{C:inactive} times){}",
                },
                unlock = {
                    "Beat a {C:red}strong{}",
                    "Boss Blind",
                },
            },

            -- Things
            j_pm_fire_extinguisher = {
              
                name = "Fire Extinguisher",
                text = { 
                    "{C:red}Disable{} this if it's the leftmost {C:attention}Joker",
                    "If a card is {C:red}destroyed{}, make a {C:attention}copy{}", 
                    "of it in your hand",
                },
            },

            j_pm_fan = {
              
                name = "Fan",
                text = { 
                    "Randomize the {C:attention}enhancements{} of {C:attention}played cards{}",
                    "Gains {C:chips}+#1#{} Chips and {C:mult}+#2#{} Mult for each {C:attention}enhanced{}",
                    "card in your full deck",
                    "{C:inactive}(Currently {C:chips}+#3#{C:inactive} Chips and {C:mult}+#4#{C:inactive{} Mult){}",
                },
            },

            j_pm_plunger = {
              
                name = "Plunger",
                text = {
                    "{C:attention}Flushes{} can be played with 3 cards",
                    "This gains {C:mult}+#1#{} Mult per card",
                    "not of the same suit in a played {C:attention}Flush{}",
                    "{C:inactive}(Currently {C:mult}+#2#{C:inactive} Mult){}",
                },
            },

            j_pm_lemon = {
              
                name = "Lemon",
                text = { 
                    "If {C:attention}played hand{} contains a {C:money}Gold Card{},",
                    "convert all non-{C:money}Gold Cards{} into {C:money}Gold{}",
                    "Gain {C:money}$#1#{} per card {C:attention}converted",
                },
            },

            j_pm_catoluck = {
              
                name = "Cat-O-Luck",
                text = { 
                    "{C:attention}Lucky Cards{} always give {C:mult}+20{} Mult",
                    "{C:green}#1# in #2#{} chance to make each",
                    "played card {C:attention}Lucky{}",
                },
            },

            j_pm_piggybank = {
              
                name = "Piggy Bank",
                text = { 
                    "Using money increases the {C:attention}sell value{}",
                    "of this Joker by {C:money}$#1#{}",
                },
            },

            j_pm_bone = {
              
                name = "Bone",
                text = { 
                    "Played face cards become {C:attention}Stone{}",
                    "Each {C:attention}Stone Card{} held in hand give",
                    "{C:chips}+#1#{} Chips",
                },
            },

            j_pm_bottle = {
              
                name = "Bottle Opener",
                text = { 
                    "Booster Packs contain {C:attention}#1#{} extra card",
                    "and give {C:attention}#1#{} extra choice",
                },
            },

            j_pm_icepick = {
              
                name = "Ice Pick",
                text = { 
                    "If {C:attention}first played hand{} contains {C:attention}Frozen Cards{},",
                    "this gains {C:mult}+#1#{} Mult per {C:attention}Frozen Card{}",
                    "and {C:red}shatter{} each {C:attention}Frozen Card{}",
                    "{C:inactive}(Currently {C:mult}+#2#{C:inactive{} Mult){}",
                },
            },

            j_pm_balloons = {
              
                name = "Balloons",
                text = { 
                    "This gains a {C:attention}new ability{} at the end of",
                    "{C:attention}#1#{} rounds, up to {C:attention}3{} abilities",
                    "{C:inactive}(Abilities stack){}",
                },
            },

            j_pm_teapot = {
              
                name = "Teapot",
                text = { 
                    "If played hand contains a {C:attention}Flush{},",
                    "{C:green}#1# in #2#{} chance to gain {C:mult}+#3#{} Mult",
                    "and {C:red}shatter{} this card"
                },
            },

            j_pm_turnip = {
              
                name = "Turnip",
                text = { 
                    "At the end of {C:attention}each round{}, randomize",
                    "the {C:money}sell value{} of this card",
                    "{C:inactive}(Between {C:money}$#1#{C:inactive} and {C:money}$#2#{C:inactive}){}",
                },
            },

            j_pm_instantcamera = {
              
                name = "Instant Camera",
                text = { 
                    "Played {C:attention}Glass Cards{} no longer shatter",
                    "{C:attention}Glass Cards{} held in hand now have a",
                    "{C:green}#1# in #2#{} chance to {C:red}shatter{} and",
                    "give {X:red,C:white}#3#X{} Mult",
                },
            },

            j_pm_basin = {
              
                name = "Basin",
                text = { 
                    "When you play a {C:attention}Flush{}, {C:green}#1# in #2#{}",
                    "chance to make any card {C:money}Gold{}.",
                    "{X:mult,C:white}+X#3#{} Mult per {C:money}Gold{} card in full deck",
                    "{C:inactive}(Currently {X:mult,C:white}X#4#{C:inactive} Mult)",
                },
            },

            j_pm_battery = {
              
                name = "Battery",
                text = { 
                    "{X:mult,C:white}+X#1#{} Mult per played {C:attention}Steel Card{}.", 
                    "Resets if no {C:attention}Steel Card{} is played",
                    "{C:inactive}(Currently {X:mult,C:white}X#2#{C:inactive} Mult)",
                },
            },

            j_pm_compass = {
              
                name = "Compass",
                text = { 
                    "If {C:attention}played hand{} contains a {C:attention}Steel Card{},",
                    "Convert the {C:attention}rank{} of all {C:attention}played cards{}",
                    "to that of the leftmost {C:attention}Steel Card{}",
                },
            },

            j_pm_cork = {
              
                name = "Cork",
                text = { 
                    "If hand consists of 5 {C:attention}Stone Cards{},",
                    "it counts as a {C:attention}Straight{}.",
                    "Played {C:attention}numbered cards{} become {C:attention}Stone{}",
                },
            },

            j_pm_washing = {
              
                name = "Washing Machine",
                text = { 
                    "If {C:attention}played hand{} contains a {C:attention}Flush{},",
                    "convert the {C:attention}rank{} of all {C:attention}played cards{} to {C:attention}#1#{}",
                    "{C:inactive}(Rank chosen upon creation){}",
                },
            },

            j_pm_lightbulb = {
              
                name = "Lightbulb",
                text = { 
                    "{C:attention}Steel Cards{} become {C:attention}Gold Cards{} when played",
                    "{C:attention}Gold Cards{} become {C:attention}Steel Cards{} when played",
                    "{C:attention}Steel and Gold Cards{} give their effects when played",
                },
            },

            j_pm_sapp = {
              
                name = "Salt and Pepper",
                text = { 
                    "Played {C:spades}#1#{} cards give this Joker {C:mult}+#5#{} Mult",
                    "Played {C:attention}Stone Cards{} give this Joker {C:chips}+#4#{} Chips",
                    "{C:inactive}(Currently {C:chips}+#2#{C:inactive} Chips and {C:mult}+#3#{C:inactive} Mult){}",
                },
            },

            j_pm_grill = {
              
                name = "Charcoal Grill",
                text = { 
                    "If played hand contains up to {C:attention}#1#{} cards,",
                    "increase the {C:attention}ranks{} of each played card.", 
                    "If a card is an {C:attention}Ace{},",
                    "make it a {C:attention}Stone Card{} instead",
                },
            },

            j_pm_megaphone = {
              
                name = "Megaphone",
                text = { 
                    "Retrigger the Joker to the",
                    "{C:attention}right #1#{} times",
                    "{s:0.9,C:inactive}(Stacks with other Megaphones)",
                },
            },

            j_pm_hairdryer = {
              
                name = "Hair Dryer",
                text = { 
                    "Destroying cards gives {C:money}$#1#{}. If {C:attention}first discard{}",
                    "has only {C:attention}one card{}, {C:red}destroy{} it and this",
                    "gains {X:mult,C:white}+X#2#{} Mult",
                    "{C:inactive}(Currently {X:mult,C:white}X#3#{C:inactive} Mult)",
                },
            },

            j_pm_magnify = {
              
                name = "Magnifying Glass",
                text = { 
                    "{C:attention}Glass Cards{} now give {X:mult,C:white}X#1#{} Mult",
                    "but have a {C:green}#2# in #3#{} chance to break",
                },
            },

            j_pm_hammer = {
              
                name = "Claw Hammer",
                text = { 
                    "{C:attention}Stone Cards{} become {C:attention}Steel{} after scoring",
                    "Gain {X:mult,C:white}+X#2#{} Mult per {C:attention}Steel Card{} in full deck",
                    "{C:inactive}(Currently {X:mult,C:white}X#1#{C:inactive} Mult)",
                },
            },

            j_pm_recorder = {
              
                name = "Recorder",
                text = { 
                    "Sell this card to make a copy of the",
                    "leftmost Joker with {C:dark_edition}Replica{}",
                },
            },

            j_pm_discoball = {
              
                name = "Disco Ball",
                text = { 
                    "{C:attention}Glass Cards{} have a {C:green}#1# in #2#{}",
                    "chance to become {C:dark_edition}Polychrome{}.", 
                    "At the start of the round, gain a {C:attention}Justice{} card",
                },
            },

            j_pm_huey = {
              
                name = "Huey",
                text = { 
                    "{V:1}#1#{} give {X:mult,C:white}X#2#{} and cannot be {C:red}debuffed{}.",
                    "At the start of the round, gain {C:attention}#3#{}.",
                    "{C:inactive}(Suit changes to suit with most cards in full deck){}",
                },
            },

            -- Boss Jokers
        
            j_pm_booking = {
                name = "King Boo",
                text = { 
                    "{C:green}1 in #1#{} chance to give every Joker",
                    "{C:dark_edition}Negative{} at end of round",
                    "{C:red}self-destructs{}",
                    "{s:0.9,C:inactive}(chance cannot be modified)",
                },
                unlock = {
                    "Beat a {C:dark_edition}Negative{}",
                    "Boss Blind",
                },
            },

            j_pm_bombking = {
                name = "King Bob-Omb",
                text = { 
                    "{X:mult,C:white}X#1#{} Mult.",
                    "Debuffs itself after first hand",
                    "until end of round",
                },
                unlock = {
                    "Beat an {C:red}explosive{}",
                    "Boss Blind",
                },
            },

            j_pm_pirahnaking = {
                name = "Petey Pirahna",
                text = { 
                    "Cards cannot be {C:red}debuffed{}. Any time",
                    "a card would be debuffed, gain {C:money}$#1#{}",
                },
                unlock = {
                    "Beat an {C:green}earthy{}",
                    "Boss Blind",
                },
            },

            j_pm_pokeyking = {
                name = "King Pokey",
                text = { 
                    "Every {C:attention}#1#{} hands playing {C:attention}most played hand{},",
                    "level up your most played hand {C:attention}3{} times.",
                    "Gain {X:mult,C:white}+X#3#{} Mult per extra hand level of {C:attention}most played hand{}",
                    "{C:inactive}(Currently #2# hands played and {X:mult,C:white}X#4#{C:inactive} Mult){}",
                },
                unlock = {
                    "Beat a {C:green}spikey{}",
                    "Boss Blind",
                },
            },

            j_pm_wigglerking = {
                name = "King Wiggler",
                text = { 
                    "If hand contains a {C:attention}Straight{}, increase the ranks",
                    "of all played cards until it becomes a {C:attention}Royal Straight{}",
                    "{C:attention}Royal Straights{} give this card {X:mult,C:white}+X#2#{} Mult",
                    "{C:inactive}(Currently {X:mult,C:white}X#1#{C:inactive} Mult){}",
                },
                unlock = {
                    "Beat a {C:green}caterpillar{}",
                    "Boss Blind",
                },
            },

            j_pm_goombaking = {
                name = "King Goomba",
                text = { 
                    "Using a non-{C:dark_edition}Negative{} consumable",
                    "creates a {C:dark_edition}Negative{} copy",
                },
                unlock = {
                    "Beat a {C:purple}basic king{}",
                    "Boss Blind",
                },
            },

            j_pm_bloopking = {
                name = "Gooper Blooper",
                text = { 
                    "Any combo of {C:attention}numbered cards{} counts as a {C:attention}Straight{}",
                    "{C:attention}Enhanced Cards{} count as {C:attention}any suit{}",
                },
                unlock = {
                    "Beat an {C:purple}inky{}",
                    "Boss Blind",
                },
            },

            j_pm_lakituking = {
                name = "King Lakitu",
                text = { 
                    "Gains {X:mult,C:white}+X#2#{} Mult per {C:attention}consecutive{} hand",
                    "played that is your {C:attention}most played{} hand",
                    "{C:inactive}(Currently {X:mult,C:white}X#1#{C:inactive} Mult){}",
                },
                unlock = {
                    "Beat a {X:blue,C:white}Cloud-Driving{}",
                    "Boss Blind",
                },
            },

            j_pm_whompking = {
                name = "King Whomp",
                text = { 
                    "{C:attention}Stone Cards{} count as {C:attention}any suit{}",
                    "Played {C:attention}Stone Cards{} give {X:mult,C:white}X#1#{} Mult",
                },
                unlock = {
                    "Beat a Stone",
                    "Boss Blind",
                },
            },

            j_pm_billking = {
                name = "Banzai Bill",
                text = { 
                    "Gain {X:mult,C:white}X#2#{} Mult when your {C:attention}last score{}",
                    "is greater than {C:attention}2x{} the",
                    "{C:attention}current score requirement{}",
                    "{C:inactive}(Last Score: #1#){}"
                },
                unlock = {
                    "Beat a Bullet",
                    "Boss Blind",
                },
            },

            j_pm_cheepking = {
              
                name = "Cheep Chomp",
                text = { 
                    "This Joker gains {X:chips,C:white}+X#2#{} Chips",
                    "per {C:attention}non-scoring{} card",
                    "{C:inactive}(Currently {X:chips,C:white}X#1#{C:inactive} Chips){}",
                },
                unlock = {
                    "Beat a {C:blue}fishy{}",
                    "Boss Blind",
                },
            },

            j_pm_junior = {
              
                name = "Bowser Jr.",
                text = { 
                    "Randomly grants played cards a random",
                    "{C:attention}enhancement, edition, or seal{}",
                    "{s:0.8,C:inactive}(chances for each are independent and cannot be modified){}",
                },
                unlock = {
                    "Beat a {C:pm_rgbled}child{}",
                    "Boss Blind",
                },
            },

            j_pm_bowser = {
              
                name = "Bowser",
                text = { 
                    "Cards with {C:attention}enhancements, editions, or seals{}",
                    "act like they have every",
                    "{C:attention}enhancement, edition, or seal{} respectively",
                    "{s:0.8,C:inactive}(only applies Vanilla enhancements, editions, and seals){}",
                },
                unlock = {
                    "Beat the {C:red}King of Koopas{}",
                },
            },

            j_pm_drybowser = {
              
                name = "Dry Bowser",
                text = { 
                    "{C:attention}Stone Cards{} give {V:1}#2##1#{} Mult",
                    "when scored. Prevents {C:red}death{} if chips scored",
                    "are at least {C:attention}50%{} of required chips",
                    "{C:inactive}(#3#){}",
                },
                unlock = {
                    "Beat a {C:blue}skeleton{}",
                    "Boss Blind",
                },
            },

            j_pm_boomboom = {
              
                name = "Boom Boom",
                text = { 
                    "Retriggers all Jokers and cards",
                    "{C:attention}#1#{} time in the {C:attention}first hand",
                },
                unlock = {
                    "Beat a Boss Blind",
                    "{C:money}throwing a tantrum{}",
                },
            },

            j_pm_pompom = {
              
                name = "Pom Pom",
                text = { 
                    "Increases score by {X:dark_edition,C:white}^#1#{}",
                },
                unlock = {
                    "Beat a {C:pink}ninja{}",
                    "Boss Blind",
                },
            },
        },
        Other={
            -- STICKERS
            pm_drained = {
                name = "Drained",
                text = {
                    "{C:mult}Disabled{} for {C:attention}#1#{} rounds",
                    "{C:inactive}(What happens when a creature loses its colo(u)r){}",
                },
            },

            pm_monochrome = {
                name = "Drained",
                text = {
                    "{C:mult}Disabled{}. Playing {C:attention}#1# {V:1}#2#{}",
                    "will remove this sticker", 
                    "{s:0.9,C:inactive}(number of cards random upon application){}",
                },
            },

            pm_coloredin = {
                name = "Painted",
                text = {
                    "Becomes {C:attention}Drained{} after", 
                    "{C:attention}#1#{} rounds",
                    "{s:0.9,C:inactive}(number of rounds is random upon application){}",
                },
            },

            -- INFO CENTERS
            pm_wip = {
                name = "WIP",
                text = {
                    "This Joker {C:red}does not work{}", 
                    "or is {C:red}not currently implemented!{}",
                },
            },

            pm_slurpforone = {
                name = "All for One",
                text = {
                    "This Joker gets {C:red}debuffed{} with",
                    "other {C:attention}Slurping{} cards",
                },
            },

            pm_slurp = {
                name = "Slurping Card",
                text = {
                    "Jokers that have {C:attention}\'Slurp\'{}",
                    "in their name, or have {C:attention}\'slurping\'{} effects",
                },
            },

            pm_low = {
                name = "Low Enhanced Card",
                text = {
                    "{C:attention}Stone, Bonus, Mult, Lucky{}",
                }
            },

            pm_high = {
                name = "High Enhanced Card",
                text = {
                    "{C:attention}Steel, Gold, Glass, Wild{}",
                    "and modded {C:attention}enhanced cards{}",
                }
            },

            pm_red = {
                name = "Red Balloon",
                text = {
                    "Retrigger each played {C:hearts}Heart{} card",
                }
            },

            pm_blue = {
                name = "Blue Balloon",
                text = {
                    "Gain a {C:green}random {C:purple}Planet{} card",
                    "at the end of the round",
                    "{C:inactive}(Prioritizes the last played hand){}",
                }
            },

            pm_yellow = {
                name = "Yellow Balloon",
                text = {
                    "Played {C:diamonds}Diamond{} cards",
                    "give {C:money}$2{} and have a {C:green}chance{}",
                    "to get {C:money}Gold Seals{}",
                }
            },

            pm_monochrome_sticker = {
                name = "Drained",
                text = {
                    "{C:mult}Disabled{}. Playing {C:attention}a specific suit{}",
                    "will remove this sticker", 
                },
            },

            pm_royal_straight = {
                name = "Royal Straight",
                text = {
                    "{C:attention}A, K, Q, J, 10{}",
                    "of any suit",
                },
            },

            pm_goombella_green = {
                name = "Super Rank Ability",
                text = {
                    "{C:green}Multibonk:{} {C:green}1 in 1{}",
                    "chance to retrigger the first scored card.",
                    "{C:green}1 in 2{} chance to retrigger again,",
                    "with increasingly low odds",
                    "each time this effect occurs."
                }
            },

            pm_goombella_red = {
                name = "Ultra Rank Ability",
                text = {
                    "{C:red}Rally Wink:{} {C:blue}+1{} Hand"
                }
            },

            pm_koops_green = {
                name = "Super Rank Ability",
                text = {
                    "{C:green}Shell Shield:{} You cannot die",
                    "in the first hand."
                }
            },

            pm_koops_red = {
                name = "Ultra Rank Ability",
                text = {
                    "{C:red}Shell Slam:{} Straights give",
                    "{X:mult,C:white}x2.5{} Mult. {C:red}Disable{}",
                    "all Boss Blind effects that",
                    "affect your score."
                }
            },

            pm_yoshi_green = {
                name = "Super Rank Ability",
                text = {
                    "{C:green}Mini-Egg:{} Reduce the score",
                    "requirement of the current {C:attention}Blind{}",
                    "when playing a Flush.",
                    "{C:inactive}(cannot activate for {C:attention}3{C:inactive} rounds when used){}",
                }
            },

            pm_yoshi_red = {
                name = "Ultra Rank Ability",
                text = {
                    "{C:red}Stampede:{} {X:mult,C:white}x1.5{} Mult",
                    "to all cards played and scored."
                }
            },

            pm_flurrie_green = {
                name = "Super Rank Ability",
                text = {
                    "{C:green}Lip Lock:{} {C:green}1 in 3{}",
                    "chance to gain {C:attention}250{} score",
                    "and {C:blue}1{} Hand every played hand."
                }
            },

            pm_flurrie_red = {
                name = "Ultra Rank Ability",
                text = {
                    "{C:red}Dodgy Fog:{} {C:green}1 in 7{}",
                    "chance to save you from {C:red}death{}",
                }
            },

            pm_vivian_green = {
                name = "Super Rank Ability",
                text = {
                    "{C:green}Fiery Jinx:{} Straights give",
                    "{C:attention}5%{} of required score.",
                    "Straight Flushes give {C:attention}25%{} instead.",
                }
            },

            pm_vivian_red = {
                name = "Ultra Rank Ability",
                text = {
                    "{C:red}Infatuate:{} {C:green}1 in 7{}",
                    "chance to score {C:attention}50%{} of",
                    "required score when playing a",
                    "{C:attention}High Card{}.",
                }
            },

            --Booster Packs
            p_pm_bc_basic_1 = {
                name = "Basic Pack",
                text = {
                    "Choose {C:attention}#1#{} of up to",
					"{C:attention}#2#{C:red} Battle{} Cards",
                }
            },
            p_pm_bc_basic_2 = {
                name = "Basic Pack",
                text = {
                    "Choose {C:attention}#1#{} of up to",
					"{C:attention}#2#{C:red} Battle{} Cards",
                }
            },
            p_pm_bc_big_1 = {
                name = "Big Pack",
                text = {
                    "Choose {C:attention}#1#{} of up to",
					"{C:attention}#2#{C:red} Battle{} Cards",
                }
            },
            p_pm_bc_big_2 = {
                name = "Big Pack",
                text = {
                    "Choose {C:attention}#1#{} of up to",
					"{C:attention}#2#{C:red} Battle{} Cards",
                }
            },
            p_pm_bc_huge_1 = {
                name = "Huge Pack",
                text = {
                    "Choose {C:attention}#1#{} of up to",
					"{C:attention}#2#{C:red} Battle{} Cards",
                }
            },
            p_pm_bc_huge_2 = {
                name = "Huge Pack",
                text = {
                    "Choose {C:attention}#1#{} of up to",
					"{C:attention}#2#{C:red} Battle{} Cards",
                }
            },
            
            -- Seals
            pm_seal_quantum_seal = {
                name = "Quantum Seal",
                text = {
                    "Retriggers this card {C:attention}#1#{} time",
                    "Gain {C:money}$#2#{} when played",
                    "Create a {C:blue}Planet{} card for final played {C:attention}poker hand{}",
                    "of round if {C:attention}held{} in hand {C:inactive}(Must have room){}",
                    "Create a {C:purple}Tarot{} when discarded {C:inactive}(Must have room){}",
                }
            },
        },
        Planet={},
        Spectral={
            c_pm_colorizer = {
                name = "Colorizer",
                text = {
                    "Instantly {C:attention}Colorizes{} all Jokers,",
                    "removing the {C:attention}Drained{} status",
                }
            },

            c_pm_replicator = {
                name = "Replicator",
                text = {
                    "Create a copy of a {C:attention}random{}",
                    "Joker with {C:dark_edition}Replica{}",
                }
            },

            c_pm_soulreverse = {
                name = "Reverse Soul",
                text = {
                    "Create a {C:dark_edition}Boss{} Joker",
                    "{C:inactive}(Must have room){}",
                }
            },
        },
        Stake={
            stake_pm_rainbow = {
                name = "Rainbow Stake",
                colour = "Rainbow",
                text = {
                    "{C:attention}Drained{} Jokers become",
                    "{C:attention}Painted{} when {C:attention}Drained{} is removed.",
                    "{s:0.8}Applies all previous Stakes{}",
                } 
            }
        },
        Tag={
            tag_pm_battlepass = {
                name = "Battle Card Tag",
                text = {
                    "Immediately open a",
                    "{C:attention}Huge Pack{}",
                }
            },

            tag_pm_thingtag = {
                name = "Thing Tag",
                text = {
                    "Shop has a free",
                    "{C:attention}Thing Joker{}",
                }
            },

            tag_pm_painter = {
                name = "Painting Tag",
                text = {
                    "Shop has a free {C:dark_edition}Colorizer{}",
                }
            },

            tag_pm_duplicater = {
                name = "Duplication Tag",
                text = {
                    "Shop has a {C:attention}Replica",
                    "of one of your Jokers",
                }
            },
        },
        Tarot={
            c_pm_blackpaint = {
                name = "Black Paint",
                text = {
                    "{C:attention}Colorizes{} all {C:attention}Drained{} Jokers",
                    "that require {C:spades}#1#{}",
                }
            },

            c_pm_bluepaint = {
                name = "Blue Paint",
                text = {
                    "{C:attention}Colorizes{} all {C:attention}Drained{} Jokers",
                    "that require {C:clubs}#1#{}",
                }
            },

            c_pm_yellowpaint = {
                name = "Yellow Paint",
                text = {
                    "{C:attention}Colorizes{} all {C:attention}Drained{} Jokers",
                    "that require {C:diamonds}#1#{}",
                }
            },

            c_pm_redpaint = {
                name = "Red Paint",
                text = {
                    "{C:attention}Colorizes{} all {C:attention}Drained{} Jokers",
                    "that require {C:hearts}#1#{}",
                }
            },

            c_pm_orangepaint = {
                name = "Orange Paint",
                text = {
                    "{C:attention}Colorizes{} all {C:attention}Drained{} Jokers",
                    "that require {C:diamonds}#1#{} or {C:hearts}#2#{}",
                }
            },

            c_pm_greenpaint = {
                name = "Green Paint",
                text = {
                    "{C:attention}Colorizes{} all {C:attention}Drained{} Jokers",
                    "that require {C:diamonds}#1#{} or {C:clubs}#2#{}",
                }
            },

            c_pm_purplepaint = {
                name = "Purple Paint",
                text = {
                    "{C:attention}Colorizes{} all {C:attention}Drained{} Jokers",
                    "that require {C:clubs}#1#{} or {C:hearts}#2#{}",
                }
            },

            c_pm_pinkpaint = {
                name = "Pink Paint",
                text = {
                    "{C:attention}Colorizes{} all {C:attention}Drained{} Jokers",
                    "that require {C:spades}#1#{} or {C:hearts}#2#{}",
                }
            },

            c_pm_navypaint = {
                name = "Navy Paint",
                text = {
                    "{C:attention}Colorizes{} all {C:attention}Drained{} Jokers",
                    "that require {C:spades}#1#{} or {C:clubs}#2#{}",
                }
            },

            c_pm_lemonpaint = {
                name = "Lemon Paint",
                text = {
                    "{C:attention}Colorizes{} all {C:attention}Drained{} Jokers",
                    "that require {C:spades}#1#{} or {C:diamonds}#2#{}",
                    "{s:0.9,C:inactive}(A faint lemony scent wafts...){}",
                }
            },

            -- level up bonuses
            c_pm_hpbonus = {
                name = "HP Up",
                text = {
                    "{C:blue}+#1#{} Hand"
                }
            },

            c_pm_fpbonus = {
                name = "FP Up",
                text = {
                    "{C:red}+#1#{} Discard"
                }
            },

            c_pm_bpbonus = {
                name = "BP Up",
                text = {
                    "{C:dark_edition}+#1#{} Joker Slot"
                }
            },
        },
        Voucher={
            v_pm_copycat = {
                name = "Copycat",
                text = {
                    "{C:attention}Battle Cards{} may appear",
                    "multiple times",
                }
            },
            
            v_pm_autopaint = {
                name = "Auto-Paint Coupon",
                text = {
                    "Jokers do not spawn with",
                    "{C:attention}Drained{} anymore",
                    "{s:0.8,C:inactive}(Applies Painted when at {s:0.8,C:pm_rgbled}Rainbow Stake{s:0.8,C:inactive} or higher){}",
                }
            },

            v_pm_saturation = {
                name = "Over-Saturated",
                text = {
                    "No longer applies {C:attention}Painted{}",
                    "when at {C:pm_rgbled}Rainbow Stake{} or higher",
                }
            },

            v_pm_ghostblessing = {
                name = "Boo's Blessing",
                text = {
                    "{C:spectral}Spectral{} cards may",
                    "appear in any of",
                    "the {C:attention}Battle Card Packs{}",
                }
            },

            v_pm_thingshopper = {
                name = "Thing Shopper",
                text = {
                    "Copies of {C:attention}Thing Jokers{} can be",
                    "found in shop with {C:dark_edition}Replica{}",
                }
            },

            v_pm_replicahaver = {
                name = "Joker Fan",
                text = {
                    "Copies of any {C:attention}Joker{} can be",
                    "found in shop with {C:dark_edition}Replica{}",
                }
            },

            v_pm_smalltoride = {
                name = "Too Small to Ride",
                text = {
                    "Replica Jokers are no longer",
                    "disabled during {C:mult}Boss Blinds{}",
                }
            },

            v_pm_replicaenjoyer = {
                name = "Replica Enjoyer",
                text = {
                    "Replica Jokers give",
                    "{X:mult,C:white}X#1#{} Mult",
                }
            },
        },
        pm_BattleCard={
            c_pm_one_up = {
                name = "1-UP Mushroom",
                text = {
                    "Gain {C:blue}+#1#{} hands on {C:red}death{},",
                    "{C:red}self-destructs{}",
                }
            },

            c_pm_mushroom = {
                name = "Mushroom",
                text = {
                    "{C:blue}+#1#{} hand",
                }
            },

            c_pm_bigmushroom = {
                name = "Big Mushroom",
                text = {
                    "{C:blue}+#1#{} hands",
                }
            },

            c_pm_megamushroom = {
                name = "Mega Mushroom",
                text = {
                    "{C:blue}+#1#{} hands",
                }
            },

            c_pm_fireflower = {
                name = "Fire Flower",
                text = {
                    "{C:red}+#1#{} discard",
                }
            },

            c_pm_bigfireflower = {
                name = "Big Fire Flower",
                text = {
                    "{C:red}+#1#{} discards",
                }
            },

            c_pm_iceflower = {
                name = "Ice Flower",
                text = {
                    "Enhances {C:attention}#1#{} selected cards",
                    "to {C:attention}Frozen{}",
                }
            },

            c_pm_bigiceflower = {
                name = "Big Ice Flower",
                text = {
                    "Enhances {C:attention}#1#{} selected cards",
                    "to {C:attention}Frozen{}",
                }
            },

            c_pm_powblock = {
                name = "POW Block",
                text = {
                    "Select up to {C:attention}#1#{} cards.",
                    "Removes {C:attention}card enhancements{}",
                    "and gives {C:money}$#2#{} per enhancement removed",
                    "{C:red}Destroys{} non-enhanced cards",
                }
            },

            c_pm_tail = {
                name = "Tail",
                text = {
                    "Switches the {C:attention}rank{} of",
                    "two selected cards",
                }
            },

            c_pm_spikehat = {
                name = "Spike Helmet",
                text = {
                    "{C:red}Disables{} the current Boss Blind",
                }
            },

            c_pm_frogsuit = {
                name = "Frog Suit",
                text = {
                    "Switches the {C:attention}suit{} of",
                    "two selected cards",
                }
            },

            c_pm_wojump = {
                name = "Worn-Out Jump",
                text = {
                    "{C:green}#2# in #3#{} chance to {C:attention}increase",
                    "{C:attention}#1#{} selected card's rank by {C:attention}#4#{}",
                }
            },

            c_pm_wojump3 = {
                name = "Worn-Out Jump x3",
                text = {
                    "Gain {C:attention}#1#{C:dark_edition} Negative{} copies",
                    "of {C:attention}#2#{}",
                }
            },

            c_pm_wojump5 = {
                name = "Worn-Out Jump x5",
                text = {
                    "Gain {C:attention}#1#{C:dark_edition} Negative{} copies",
                    "of {C:attention}#2#{}",
                }
            },

            c_pm_jump = {
                name = "Jump",
                text = {
                    "{C:attention}Increases #1#{} selected card's rank by {C:attention}#4#{}",
                    "{C:green}#2# in #3#{} chance to be able to {C:attention}use again{}",
                }
            },

            c_pm_jump2 = {
                name = "Jump x2",
                text = {
                    "Gain {C:attention}#1#{C:dark_edition} Negative{} copies",
                    "of {C:attention}#2#{}",
                }
            },

            c_pm_jump3 = {
                name = "Jump x3",
                text = {
                    "Gain {C:attention}#1#{C:dark_edition} Negative{} copies",
                    "of {C:attention}#2#{}",
                }
            },

            c_pm_bigjump = {
                name = "Big Jump",
                text = {
                    "{C:attention}Increases #1#{} selected card's rank by {C:attention}#4#{}",
                    "{C:green}#2# in #3#{} chance to be able to {C:attention}use again{}",
                }
            },

            c_pm_bigjump2 = {
                name = "Big Jump x2",
                text = {
                    "Gain {C:attention}#1#{C:dark_edition} Negative{} copies",
                    "of {C:attention}#2#{}",
                }
            },

            c_pm_hugejump = {
                name = "Huge Jump",
                text = {
                    "{C:attention}Increases #1#{} selected card's rank by {C:attention}#2#{}",
                }
            },

            c_pm_linejump = {
                name = "Line Jump",
                text = {
                    "Creates a mini-{C:attention}Straight{} out of {C:attention}#1#{}",
                    "selected cards",
                    "{C:inactive}(Prioritizes descending Straights){}",
                }
            },

            c_pm_biglinejump = {
                name = "Big Line Jump",
                text = {
                    "Creates a mini-{C:attention}Straight{} out of {C:attention}#1#{}",
                    "selected cards",
                    "{C:inactive}(Prioritizes descending Straights){}",
                }
            },

            c_pm_hugelinejump = {
                name = "Huge Line Jump",
                text = {
                    "Creates a {C:attention}Straight{} out of {C:attention}#1#{}",
                    "selected cards",
                    "{C:inactive}(Prioritizes descending Straights){}",
                }
            },

            c_pm_hopslipper = {
                name = "Hopslipper",
                text = {
                    "{C:chips}+#2#{} Bonus Chips on", 
                    "{C:attention}#1#{} selected card",
                    "{C:inactive}(Has {C:attention}#3#{C:inactive} uses left){}",
                }
            },

            c_pm_hopslipper2 = {
                name = "Hopslipper x2",
                text = {
                    "Gain {C:attention}#1#{C:dark_edition} Negative{} copies",
                    "of {C:attention}#2#{}",
                }
            },

            c_pm_hopslipper3 = {
                name = "Hopslipper x3",
                text = {
                    "Gain {C:attention}#1#{C:dark_edition} Negative{} copies",
                    "of {C:attention}#2#{}",
                }
            },

            c_pm_bighopslipper = {
                name = "Big Hopslipper",
                text = {
                    "{C:chips}+#2#{} Bonus Chips on", 
                    "{C:attention}#1#{} selected card",
                    "{C:inactive}(Has {C:attention}#3#{C:inactive} uses left){}",
                }
            },

            c_pm_hugehopslipper = {
                name = "Huge Hopslipper",
                text = {
                    "{C:chips}+#2#{} Bonus Chips on", 
                    "{C:attention}#1#{} selected card",
                    "{C:inactive}(Has {C:attention}#3#{C:inactive} uses left){}",
                }
            },

            c_pm_ironjump = {
                name = "Iron Jump",
                text = {
                    "Changes the {C:attention}suit{} of the {C:attention}#1#{}",
                    "selected cards to that of the {C:attention}leftmost{} card",
                }
            },

            c_pm_ironjump2 = {
                name = "Iron Jump x2",
                text = {
                    "Gain {C:attention}#1#{C:dark_edition} Negative{} copies",
                    "of {C:attention}#2#{}",
                }
            },

            c_pm_ironjump3 = {
                name = "Iron Jump x3",
                text = {
                    "Gain {C:attention}#1#{C:dark_edition} Negative{} copies",
                    "of {C:attention}#2#{}",
                }
            },

            c_pm_bigironjump = {
                name = "Big Iron Jump",
                text = {
                    "Changes the {C:attention}suit{} of the {C:attention}#1#{}",
                    "selected cards to that of the {C:attention}leftmost{} card",
                }
            },

            c_pm_hugeironjump = {
                name = "Huge Iron Jump",
                text = {
                    "Changes the {C:attention}suit{} of all cards held in",
                    "hand to that of the {C:attention}leftmost{} card",
                }
            },

            c_pm_spinjump = {
                name = "Spin Jump",
                text = {
                    "Changes the {C:attention}rank{} of the {C:attention}#1#{}",
                    "selected cards to that of the {C:attention}leftmost{} card",
                }
            },

            c_pm_bigspinjump = {
                name = "Big Spin Jump",
                text = {
                    "Changes the {C:attention}rank{} of all cards held in",
                    "hand to that of the {C:attention}leftmost{} card",
                }
            },

            c_pm_wohammer = {
                name = "Worn-Out Hammer",
                text = {
                    "{C:green}#2# in #3#{} chance to {C:attention}decrease{}",
                    "{C:attention}#1#{} selected card's rank by {C:attention}#4#{}",
                }
            },

            c_pm_wohammer3 = {
                name = "Worn-Out Hammer x3",
                text = {
                    "Gain {C:attention}#1#{C:dark_edition} Negative{} copies",
                    "of {C:attention}#2#{}",
                }
            },

            c_pm_wohammer5 = {
                name = "Worn-Out Hammer x5",
                text = {
                    "Gain {C:attention}#1#{C:dark_edition} Negative{} copies",
                    "of {C:attention}#2#{}",
                }
            },

            c_pm_hammer = {
                name = "Hammer",
                text = {
                    "{C:attention}Decreases #1#{} selected card's rank by {C:attention}#4#{}",
                    "{C:green}#2# in #3#{} chance to be able to {C:attention}use again{}",
                }
            },

            c_pm_hammer2 = {
                name = "Hammer x2",
                text = {
                    "Gain {C:attention}#1#{C:dark_edition} Negative{} copies",
                    "of {C:attention}#2#{}",
                }
            },

            c_pm_hammer3 = {
                name = "Hammer x3",
                text = {
                    "Gain {C:attention}#1#{C:dark_edition} Negative{} copies",
                    "of {C:attention}#2#{}",
                }
            },

            c_pm_bighammer = {
                name = "Big Hammer",
                text = {
                    "{C:attention}Decreases #1#{} selected card's rank by {C:attention}#4#{}",
                    "{C:green}#2# in #3#{} chance to be able to {C:attention}use again{}",
                }
            },

            c_pm_bighammer2 = {
                name = "Big Hammer x2",
                text = {
                    "Gain {C:attention}#1#{C:dark_edition} Negative{} copies",
                    "of {C:attention}#2#{}",
                }
            },

            c_pm_hugehammer = {
                name = "Huge Hammer",
                text = {
                    "{C:attention}Decreases #1#{} selected card's rank by {C:attention}#2#{}",
                }
            },

            c_pm_kohammer = {
                name = "KO Hammer",
                text = {
                    "{C:green}#1# in #2#{} chance to win the Blind.",
                }
            },

            c_pm_bigkohammer = {
                name = "Big KO Hammer",
                text = {
                    "{C:green}#1# in #2#{} chance to win the Blind.",
                }
            },

            c_pm_hugekohammer = {
                name = "Huge KO Hammer",
                text = {
                    "{C:green}#1# in #2#{} chance to win the Blind.",
                }
            },

            c_pm_eekhammer = {
                name = "Eekhammer",
                text = {
                    "{C:mult}+#2#{} Bonus Mult on", 
                    "{C:attention}#1#{} selected card",
                    "{C:inactive}(Has {C:attention}#3#{C:inactive} uses left){}",
                }
            },

            c_pm_eekhammer2 = {
                name = "Eekhammer x2",
                text = {
                    "Gain {C:attention}#1#{C:dark_edition} Negative{} copies",
                    "of {C:attention}#2#{}",
                }
            },

            c_pm_eekhammer3 = {
                name = "Eekhammer x3",
                text = {
                    "Gain {C:attention}#1#{C:dark_edition} Negative{} copies",
                    "of {C:attention}#2#{}",
                }
            },

            c_pm_bigeekhammer = {
                name = "Big Eekhammer",
                text = {
                    "{C:mult}+#2#{} Bonus Mult on", 
                    "{C:attention}#1#{} selected card",
                    "{C:inactive}(Has {C:attention}#3#{C:inactive} uses left){}",
                }
            },

            c_pm_bigeekhammer2 = {
                name = "Big Eekhammer x2",
                text = {
                    "Gain {C:attention}#1#{C:dark_edition} Negative{} copies",
                    "of {C:attention}#2#{}",
                }
            },

            c_pm_hugeeekhammer = {
                name = "Huge Eekhammer",
                text = {
                    "{X:mult,C:white}+X#2#{} Bonus {X:mult,C:white}XMult{} on", 
                    "{C:attention}#1#{} selected card",
                    "{C:inactive}(Has {C:attention}#3#{C:inactive} uses left){}",
                }
            },

            c_pm_hurlhammer = {
                name = "Hurlhammer",
                text = {
                    "{C:green}#2# in #3#{} chance to make up to {C:attention}#1#{}",
                    "selected cards {C:attention}Aces{}",
                }
            },

            c_pm_hurlhammer2 = {
                name = "Hurlhammer x2",
                text = {
                    "Gain {C:attention}#1#{C:dark_edition} Negative{} copies",
                    "of {C:attention}#2#{}",
                }
            },

            c_pm_hurlhammer3 = {
                name = "Hurlhammer x3",
                text = {
                    "Gain {C:attention}#1#{C:dark_edition} Negative{} copies",
                    "of {C:attention}#2#{}",
                }
            },

            c_pm_bighurlhammer = {
                name = "Big Hurlhammer",
                text = {
                    "{C:green}#2# in #3#{} chance to make up to {C:attention}#1#{}",
                    "selected cards {C:attention}Aces{}",
                }
            },

            c_pm_hugehurlhammer = {
                name = "Huge Hurlhammer",
                text = {
                    "Makes up to {C:attention}#1#{} selected cards {C:attention}Aces{}",
                }
            },
            c_pm_blazehammer = {
                name = "Blazehammer",
                text = {
                    "{C:red}Destroys{} up to {C:attention}#1#{} selected cards",
                    "If you select {C:attention}#1#{} cards, gain {C:money}$#2#{}",
                }
            },
        },
        Partner={
            pnr_pm_goombella = {
                name = "Goombella",
                text = {
                    "{C:money}Headbonk:{} {C:blue}+#1#{} Chips, {C:green}#2# in #3#{}",
                    "chance to give {C:blue}+#4#{} Chips instead",
                    "{C:blue}Tattle:{} Click to show a message!"
                }
            },
            pnr_pm_koops = {
                name = "Koops",
                text = {
                    "{C:money}Shell Toss:{} Straights give {C:red}+#1#{} Mult.",
                    "{C:blue}Power Shell:{} When you play a Straight,",
                    "each card gives {C:chips}+#2#{} Chips",
                }
            },
            pnr_pm_yoshi = {
                name = "Yoshi",
                text = {
                    "{C:money}Ground Pound:{} Each card gives {C:blue}+#1#{} Chips.",
                    "{C:blue}Gulp:{} Instantly score {C:attention}#2#%{} of",
                    "the required score for the current {C:attention}Blind{} when",
                    "playing a High Card.",
                    "{C:inactive}(cannot activate for {C:attention}3{C:inactive} rounds when used){}",
                    "{C:inactive}({C:attention}#3#{} Rounds until usable){}",
                }
            },
            pnr_pm_flurrie = {
                name = "Flurrie",
                text = {
                    "{C:money}Body Slam:{} {C:green}#1# in #2#{}",
                    "chance to gain {C:blue}+#3#{} Chips.",
                    "{C:blue}Gale Force:{} Gain {C:money}$#4#{}",
                    "when skipping {C:attention}Blinds{}.",
                }
            },
            pnr_pm_vivian = {
                name = "Vivian",
                text = {
                    "{C:money}Shade Fist:{} Click to spend {C:red}#2#{}",
                    "discards, and for the rest of the blind,",
                    "all played hands score",
                    "{C:attention}#1#%{} of the required score.",
                    "{C:blue}Veil:{} {C:red}-1{} discard when entering a",
                    "{C:attention}Boss Blind{}, but {C:red}disables {C:attention}Boss Blinds{}.",
                }
            },
        },
    },
    misc = {
        achievement_descriptions={
            ach_pm_booking_won = "Win against The Boo",
            ach_pm_bombking_won = "Win against The Bomb",
            ach_pm_pirahnaking_won = "Win against The Pirahna Plant",
            ach_pm_pokeyking_won = "Win against The Cactus",
            ach_pm_wigglerking_won = "Win against The Wiggler",
            ach_pm_goombaking_won = "Win against The Goomba",
            ach_pm_bloopking_won = "Win against The Blooper",
            ach_pm_lakituking_won = "Win against The Lakitu",
            ach_pm_thwompking_won = "Win against The Thwomp",
            ach_pm_billking_won = "Win against The Bullet",
            ach_pm_cheepking_won = "Win against The Cheep Cheep",
            ach_pm_junior_won = "Win against The Junior",
            ach_pm_bowser_won = "Win against The Koopa King",
            ach_pm_drybowser_won = "Win against The Skeleton King",
            ach_pm_lemmy_won = "Win against The Wild Card",
            ach_pm_larry_won = "Win against The Blue",
            ach_pm_iggy_won = "Win against The Lanky",
            ach_pm_wendy_won = "Win against The Ring",
            ach_pm_morton_won = "Win against The Moron",
            ach_pm_roy_won = "Win against The Strongarm",
            ach_pm_ludwig_won = "Win against The Clone",
            ach_pm_boomboom_won = "Win against The Tantrum",
            ach_pm_pompom_won = "Win against Ninja",
            ach_pm_kamek_won = "Win against The Wizard",
            ach_pm_color_splash = "Win against every Paper Mario Boss Blind",
        },
        achievement_names={
            ach_pm_booking_won = 'King of Boos',
            ach_pm_bombking_won = 'King of Bombs',
            ach_pm_pirahnaking_won = 'Plant Gang',
            ach_pm_pokeyking_won = 'Cactus Pruned!',
            ach_pm_wigglerking_won = 'Metamorphosis',
            ach_pm_goombaking_won = 'King of Goombas',
            ach_pm_bloopking_won = 'Turf War',
            ach_pm_lakituking_won = 'Cloud Ten',
            ach_pm_thwompking_won = 'Crushed Spirit',
            ach_pm_billking_won = 'Mach Five',
            ach_pm_cheepking_won = "Fish Fear Me",
            ach_pm_junior_won = 'Not My Mama!',
            ach_pm_bowser_won = 'King of Koopas',
            ach_pm_drybowser_won = 'Second Phase',
            ach_pm_lemmy_won = "Balls Gaming",
            ach_pm_larry_won = "Livin' Like Larry",
            ach_pm_iggy_won = "Night Light Fright",
            ach_pm_wendy_won = "Wednesday",
            ach_pm_morton_won = "Blockheaded",
            ach_pm_roy_won = "Parry This!",
            ach_pm_ludwig_won = "Clone Wars",
            ach_pm_boomboom_won = "Mad Lad",
            ach_pm_pompom_won = "Anime Woman",
            ach_pm_kamek_won = "Now!",
            ach_pm_color_splash = "Color Splash",
        },
        blind_states={},
        challenge_names={
            c_pm_burntsteak = 'Burnt Steak',
            c_pm_solucky = 'SO LUCKY',
            c_pm_goldshower = 'Pining for Gold',
            c_pm_burningdeck = 'Burning Deck',
        },
        collabs={},
        dictionary={
            pm_drained = "Drained!",
            pm_drained_ex = "Slurped!",
            pm_upgraded = "Upgraded!",
            pm_again_ex = "Sombrero!",
            pm_bandit = "Stolen!",
            pm_again = "Again!",
            pm_spiked = "Spike!",
            pm_haunt = "Boo!",
            pm_active = "Active!",
            pm_pokeyed = "Bloom!",
            pm_burned = "Burned!",
            pm_magic = "Abracadabra!",
            pm_wild = "Wild!",
            pm_zapped = "Shocked!",
            pm_lost = "Streak Lost!",
            pm_lemony = "Squeezed!",
            pm_cooked = "Seared!",
            pm_burnt = "Burnt!",
            pm_magnified = "Magnified!",
            pm_colorized = "Colorized!",
            pm_painted = "Painted!",
            pm_ice_spear = "Shattered!",
            pm_KO = "OHKO!",
            pm_easter_egg = "Lucky!",
            pm_exponential = "^1.25 Mult",
            pm_levelup = "+1 Level",
            pm_levelup_ex = "Bonus Redeemed!",
            pm_battle_plus = "+1 Battle Card",
            pm_activated = "Activated!",
            pm_shade = "Burned!",
            pm_fiery_jinx = "Extra Burn!",
            pm_infatuate = "Infatuated!",

            -- Dry Bones
            pm_chips = "Chips",
            pm_mult = "Mult",
            pm_dmult = "+",
            pm_xmult = "X",
            pm_dry = "1-UP Active!",
            pm_dead = "Death Prevented!",

            -- Ludwig Copy Secret Effect
            pm_nothing = "Does... nothing?",
            pm_ludwigsecret = "Sell this to gain a copy of Ludwig, destroying 2 other Ludwig Copies",

            -- Rarities
            k_pm_thing = "Thing",
            k_pm_bosses = "Boss",

            -- Booster Pack Label
            pm_battle_card_booster = "Battle Card Pack",
            pm_battle_card = "Battle Card",

            -- Placeholders
            pm_placeholderhand = "most played hand",
            pm_placeholdersuit = "(random suit)",

            -- Mod Config Settings
            pm_settings_papermario_only = "Only PM Jokers?",
            pm_settings_custom_splash = "Custom Splash/Title Screen",
            pm_settings_things_rarity = "Thing Weight?",
            pm_settings_bc_rarity = "Battle Card Weight?",
            pm_settings_drained_rarity = "Drained Status Weight?",
            pm_settings_battle_track = "Music While in Blind:",
            pm_settings_header_norequired = "Config Options:",
            pm_settings_header_required = "Config Options (Requires Restart):",
            pm_settings_header_music = "Music Options:",

            -- Buttons
            pm_music_box = "Music",
            pm_credits_fullcredits = "Credits",

            -- Credits
            pm_credits_thanks = "Credits to the following people/mods:",
            pm_credits_lead = "Solo Developer and Artist:",
            pm_credits_mod = "Mods Credited:",
            pm_credits_game = "Additional Credits to:",

            -- Partners
            pm_lucky = "Lucky Bonk!",
        },
        high_scores={},
        labels={
            -- Rarities
            k_pm_thing = "Thing",

            -- Editions
            pm_replica = "Replica",
            pm_quantum = "Quantum",

            -- Seals
            pm_seal_quantum_seal = "Quantum Seal",
            
            -- Stickers
            pm_drained = "Drained",
            pm_monochrome = "Drained",
            pm_coloredin = "Painted",
        },
        poker_hand_descriptions={},
        poker_hands={},
        quips={ 
            pm_goombella_normal_1 = {
                "I'm a big fan of flushes!",
                "Maybe try a flush this round?"
            },
            pm_goombella_hook = {
                "Did you know the Hook can",
                "trigger Purple Seals?"
            },
            pm_goombella_money = {
                "Don't worry too much about losing money,",
                "Go all in on defeating the Boss!"
            },
            pm_goombella_hidden = {
                "You can switch sorting modes",
                "to see where cards might end up!"
            },
            pm_goombella_none = {
                "No tips here! Give it",
                "all you got, Mario!"
            },
            pm_goombella_arm = {
                "Don't play a hand you've leveled up",
                "a lot if you can help it!"
            },
            pm_goombella_suit = {
                "Ooh, not being able to play a suit",
                "stings! Try switching up your",
                "strategy, Mario!",
            },
            pm_goombella_water = {
                "Hands can be pseudo-discards",
                "in a pinch!"
            },
            pm_goombella_psychic = {
                "Not all cards need to score",
                "to meet the boss's requirement!"
            },
            pm_goombella_hand = {
                "Losing hands sucks! Be careful",
                "with what you play, Mario!"
            },
            pm_goombella_speedrun = {
                "Try to win this in one hand",
                "to avoid losing your best one!"
            },
            pm_goombella_mouth = {
                "If you've centered your strategy",
                "around one type of hand, this",
                "boss shouldn't be an issue!"
            },
            pm_goombella_disabled = {
                "Ooh, not being able to play",
                "some cards stings! Try switching",
                "up your strategy, Mario!",
            },
            pm_goombella_flint = {
                "Levelling up hands is a good way",
                "to combat this Boss's ability!"
            },
            pm_goombella_amber = {
                "Woah! Hopefully we don't have a",
                "Blueprint or Brainstorm!"
            },
            pm_goombella_verdant = {
                "Ouch! Which Joker do we not need",
                "to win?"
            },
            pm_goombella_bell = {
                "High Card strategies won't get",
                "affected by this!"
            },
            pm_goombella_snake = {
                "Try discarding multiple singular",
                "cards to get a surplus of cards!"
            }
        },
        ranks={},
        suits_plural={},
        suits_singular={},
        tutorial={},
        v_dictionary={
            a_xchips = {"X#1# Chips"},
        },
        v_text={},
    },
}