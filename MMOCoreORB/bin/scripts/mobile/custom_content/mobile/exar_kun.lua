exar_kun = Creature:new {
	customName = "Exar Kun",
	randomNameTag = true,
	socialGroup = "kun",
	faction = "kun",
	level = 200,
	chanceHit = 4.75,
	damageMin = 770,
	damageMax = 1250,
	baseXp = 12424,
	baseHAM = 610000,
	baseHAMmax = 610000,
	armor = 2,
	resists = {55,55,15,25,15,25,15,25,15},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	scale = 1.3,
	pvpBitmask = ATTACKABLE + ENEMY,
	creatureBitmask = HERD,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/exar_kun.iff"},
	lootGroups = {
    {
      groups = {
        {group = "crystal_kuns_blood", chance = 2000000},
        {group = "nge_jedi_cloaks", chance = 2000000},
        {group = "massassi_sith_weapons", chance = 2000000},
        {group = "clothing_attachments", chance = 2000000},
        {group = "armor_attachments", chance = 2000000},
      },
      lootChance = 10000000,
    },
    {
      groups = {
        {group = "crystal_kuns_blood", chance = 2000000},
        {group = "nge_jedi_cloaks", chance = 2000000},
        {group = "massassi_sith_weapons", chance = 2000000},
        {group = "clothing_attachments", chance = 2000000},
        {group = "armor_attachments", chance = 2000000},
      },
      lootChance = 10000000,
    },
    {
      groups = {
        {group = "crystal_kuns_blood", chance = 2000000},
        {group = "nge_jedi_cloaks", chance = 2000000},
        {group = "massassi_sith_weapons", chance = 2000000},
        {group = "clothing_attachments", chance = 2000000},
        {group = "armor_attachments", chance = 2000000},
      },
      lootChance = 10000000,
    },
    {
      groups = {
        {group = "crystal_kuns_blood", chance = 2000000},
        {group = "nge_jedi_cloaks", chance = 2000000},
        {group = "massassi_sith_weapons", chance = 2000000},
        {group = "clothing_attachments", chance = 2000000},
        {group = "armor_attachments", chance = 2000000},
      },
      lootChance = 10000000,
    },
    {
      groups = {
        {group = "crystal_kuns_blood", chance = 2000000},
        {group = "nge_jedi_cloaks", chance = 2000000},
        {group = "massassi_sith_weapons", chance = 2000000},
        {group = "clothing_attachments", chance = 2000000},
        {group = "armor_attachments", chance = 2000000},
      },
      lootChance = 10000000,
    },       
  },
	weapons = {"dark_jedi_weapons_gen4"},
	conversationTemplate = "",
	attacks = merge(lightsabermaster,forcewielder)
}

CreatureTemplates:addCreatureTemplate(exar_kun, "exar_kun")
