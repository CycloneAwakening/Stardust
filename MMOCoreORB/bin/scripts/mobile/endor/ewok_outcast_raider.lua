ewok_outcast_raider = Creature:new {
	objectName = "@mob/creature_names:ewok_outcast_raider",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "self",
	faction = "gondula_tribe",
	level = 31,
	chanceHit = 0.39,
	damageMin = 310,
	damageMax = 330,
	baseXp = 3097,
	baseHAM = 8100,
	baseHAMmax = 9900,
	armor = 0,
	resists = {25,0,0,60,60,0,0,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 2 * 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_ewok_m_04.iff"},
	lootGroups = {
    {
      groups = {
        {group = "ewok", chance = 9100000},
        {group = "armor_attachments", chance = 450000},
        {group = "clothing_attachments", chance = 450000}
      },
      lootChance = 1600000
    },
    {
      groups = {
        {group = "ewok", chance = 9100000},
        {group = "ewok", chance = 450000},
        {group = "ewok", chance = 450000}
      },
      lootChance = 10000000
    }
  },
	weapons = {"ewok_weapons"},
	conversationTemplate = "",
	attacks = merge(riflemanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(ewok_outcast_raider, "ewok_outcast_raider")
