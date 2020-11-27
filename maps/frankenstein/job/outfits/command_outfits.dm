/decl/hierarchy/outfit/job/argos/crew/command
	name = OUTFIT_JOB_NAME("Command Outfit - Argos")
	hierarchy_type = /decl/hierarchy/outfit/job/argos/crew/command
	l_ear = /obj/item/device/radio/headset/headset_com
	pda_slot = slot_l_store

/decl/hierarchy/outfit/job/argos/crew/command/captain
	name = OUTFIT_JOB_NAME("Argos Captain Outfit")
	glasses = /obj/item/clothing/glasses/sunglasses
	l_ear = /obj/item/device/radio/headset/heads/argosexec
	shoes = /obj/item/clothing/shoes/dutyboots
	uniform = /obj/item/clothing/under/rank/captain
	suit = /obj/item/clothing/suit/captunic/capjacket
	id_type = /obj/item/weapon/card/id/argos/gold
	pda_type = /obj/item/modular_computer/pda/captain

/decl/hierarchy/outfit/job/argos/crew/command/captain/New()
	..()
	backpack_overrides[/decl/backpack_outfit/backpack] = /obj/item/weapon/storage/backpack/captain
	backpack_overrides[/decl/backpack_outfit/satchel] = /obj/item/weapon/storage/backpack/satchel/cap
	backpack_overrides[/decl/backpack_outfit/messenger_bag] = /obj/item/weapon/storage/backpack/messenger/com

/decl/hierarchy/outfit/job/argos/crew/command/hop
	name = OUTFIT_JOB_NAME("Executive Officer - Argos")
	uniform = /obj/item/clothing/under/rank/head_of_personnel
	l_ear = /obj/item/device/radio/headset/heads/argosexec
	shoes = /obj/item/clothing/shoes/dutyboots
	id_type = /obj/item/weapon/card/id/argos/silver
	pda_type = /obj/item/modular_computer/pda/heads/hop

/decl/hierarchy/outfit/job/argos/crew/command/rd
	name = OUTFIT_JOB_NAME("Research Director - Argos")
	uniform = /obj/item/clothing/under/rank/research_director
	l_ear = /obj/item/device/radio/headset/heads/argosexec
	shoes = /obj/item/clothing/shoes/laceup
	id_type = /obj/item/weapon/card/id/argos/silver/research
	pda_type = /obj/item/modular_computer/pda/heads/rd

/decl/hierarchy/outfit/job/argos/crew/command/cmo
	name = OUTFIT_JOB_NAME("Argos - Chief Medical Officer")
	l_ear  =/obj/item/device/radio/headset/heads/cmo
	uniform = /obj/item/clothing/under/rank/chief_medical_officer
	shoes = /obj/item/clothing/shoes/dutyboots
	id_type = /obj/item/weapon/card/id/argos/silver/medical
	pda_type = /obj/item/modular_computer/pda/heads/cmo


/decl/hierarchy/outfit/job/argos/crew/command/cmo/New()
	..()
	BACKPACK_OVERRIDE_MEDICAL


/decl/hierarchy/outfit/job/argos/crew/command/chief_engineer
	name = OUTFIT_JOB_NAME("Chief Engineer - Argos")
	uniform = /obj/item/clothing/under/rank/chief_engineer
	shoes = /obj/item/clothing/shoes/dutyboots
	l_ear = /obj/item/device/radio/headset/heads/ce
	id_type = /obj/item/weapon/card/id/argos/silver/engineering
	pda_type = /obj/item/modular_computer/pda/heads/ce
	pda_slot = slot_l_store
	flags = OUTFIT_HAS_BACKPACK|OUTFIT_EXTENDED_SURVIVAL

/decl/hierarchy/outfit/job/argos/crew/command/chief_engineer/New()
	..()
	BACKPACK_OVERRIDE_ENGINEERING

/decl/hierarchy/outfit/job/argos/crew/command/hos
	name = OUTFIT_JOB_NAME("Head of Security - Argos")
	l_ear = /obj/item/device/radio/headset/heads/hos
	uniform = /obj/item/clothing/under/rank/head_of_security/corp
	head = /obj/item/clothing/head/HoS
	shoes = /obj/item/clothing/shoes/dutyboots
	id_type = /obj/item/weapon/card/id/argos/silver/security
	pda_type = /obj/item/modular_computer/pda/heads/hos

/decl/hierarchy/outfit/job/argos/crew/command/hos/New()
	..()
	BACKPACK_OVERRIDE_SECURITY

/decl/hierarchy/outfit/job/argos/passenger/civadmin
	name = OUTFIT_JOB_NAME("Civilian Administrator")
	l_ear = /obj/item/device/radio/headset/civadmin
	uniform = /obj/item/clothing/under/rank/internalaffairs/plain
	suit = /obj/item/clothing/suit/storage/toggle/suit/black
	shoes = /obj/item/clothing/shoes/laceup
	id_type = /obj/item/weapon/card/id/argos/passenger/civadmin
	pda_type = /obj/item/modular_computer/pda/heads/paperpusher

/decl/hierarchy/outfit/job/argos/crew/psiadv
	name = OUTFIT_JOB_NAME("Psionic Advisor")
	l_ear = /obj/item/device/radio/headset/psiadv
	uniform = /obj/item/clothing/under/rank/internalaffairs/plain
	suit = /obj/item/clothing/suit/storage/toggle/suit/black
	shoes = /obj/item/clothing/shoes/laceup
	id_type = /obj/item/weapon/card/id/argos/crew/psiadv
	pda_type = /obj/item/modular_computer/pda/heads/paperpusher

/decl/hierarchy/outfit/job/argos/crew/psiadv/equip_id(var/mob/living/carbon/human/H, var/rank, var/assignment, var/equip_adjustments)
	. = ..()
	var/obj/item/weapon/card/id/foundation_civilian/regis_card = new
	if(rank)
		regis_card.rank = rank
	if(assignment)
		regis_card.assignment = assignment
	H.set_id_info(regis_card)
	H.equip_to_slot_or_store_or_drop(regis_card)


/decl/hierarchy/outfit/job/argos/crew/command/bridgeofficer
	name = OUTFIT_JOB_NAME("Bridge Officer - Argos")
	uniform = /obj/item/clothing/under/rank/bridgeofficer
	shoes = /obj/item/clothing/shoes/dutyboots
	id_type = /obj/item/weapon/card/id/argos/crew/bridgeofficer
	pda_type = /obj/item/modular_computer/pda/heads
	l_ear = /obj/item/device/radio/headset/bridgeofficer