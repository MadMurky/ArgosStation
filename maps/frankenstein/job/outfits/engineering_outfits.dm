/decl/hierarchy/outfit/job/argos/crew/engineering
	hierarchy_type = /decl/hierarchy/outfit/job/argos/crew/engineering
	l_ear = /obj/item/device/radio/headset/headset_eng
	pda_slot = slot_l_store
	flags = OUTFIT_HAS_BACKPACK|OUTFIT_EXTENDED_SURVIVAL

/decl/hierarchy/outfit/job/argos/crew/engineering/New()
	..()
	BACKPACK_OVERRIDE_ENGINEERING

/decl/hierarchy/outfit/job/argos/crew/engineering/senior_engineer
	name = OUTFIT_JOB_NAME("Senior Engineer - Argos")
	uniform = /obj/item/clothing/under/rank/engineer
	shoes = /obj/item/clothing/shoes/dutyboots
	id_type = /obj/item/weapon/card/id/argos/crew/engineering/senior
	pda_type = /obj/item/modular_computer/pda/heads/ce

/decl/hierarchy/outfit/job/argos/crew/engineering/engineer
	name = OUTFIT_JOB_NAME("Engineer - Argos")
	uniform = /obj/item/clothing/under/rank/engineer
	shoes = /obj/item/clothing/shoes/workboots
	id_type = /obj/item/weapon/card/id/argos/crew/engineering
	pda_type = /obj/item/modular_computer/pda/engineering

