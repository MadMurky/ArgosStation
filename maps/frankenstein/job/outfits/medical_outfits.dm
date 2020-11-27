/decl/hierarchy/outfit/job/argos/crew/medical
	hierarchy_type = /decl/hierarchy/outfit/job/argos/crew/medical
	l_ear = /obj/item/device/radio/headset/headset_med
	pda_type = /obj/item/modular_computer/pda/medical
	pda_slot = slot_l_store

/decl/hierarchy/outfit/job/argos/crew/medical/New()
	..()
	BACKPACK_OVERRIDE_MEDICAL

/decl/hierarchy/outfit/job/argos/crew/medical/senior
	name = OUTFIT_JOB_NAME("Physician - Argos")
	uniform = /obj/item/clothing/under/rank/medical
	shoes = /obj/item/clothing/shoes/dutyboots
	id_type = /obj/item/weapon/card/id/argos/crew/medical/senior

/decl/hierarchy/outfit/job/argos/crew/medical/junior
	name = OUTFIT_JOB_NAME("Medical Resident - Argos")
	uniform = /obj/item/clothing/under/rank/medical
	shoes = /obj/item/clothing/shoes/dutyboots
	id_type = /obj/item/weapon/card/id/argos/crew/medical/senior

/decl/hierarchy/outfit/job/argos/crew/medical/paramedic
	name = OUTFIT_JOB_NAME("Paramedic - Argos")
	uniform = /obj/item/clothing/under/rank/medical/paramedic
	suit = /obj/item/clothing/suit/storage/toggle/fr_jacket
	shoes = /obj/item/clothing/shoes/jackboots
	belt = /obj/item/weapon/storage/belt/medical/emt
	flags = OUTFIT_HAS_BACKPACK|OUTFIT_EXTENDED_SURVIVAL

/decl/hierarchy/outfit/job/argos/crew/medical/chemist
	name = OUTFIT_JOB_NAME("Chemist - Argos")
	uniform = /obj/item/clothing/under/rank/medical
	shoes = /obj/item/clothing/shoes/white
	pda_type = /obj/item/modular_computer/pda/medical
	id_type = /obj/item/weapon/card/id/argos/crew/chemist

/decl/hierarchy/outfit/job/argos/crew/medical/counselor
	name = OUTFIT_JOB_NAME("Counselor - Argos")
	uniform = /obj/item/clothing/under/rank/psych/turtleneck
	shoes = /obj/item/clothing/shoes/white
	id_type = /obj/item/weapon/card/id/argos/crew/medical/counselor

/decl/hierarchy/outfit/job/argos/crew/medical/counselor/mentalist
	name = OUTFIT_JOB_NAME("Mentalist - Argos")
	suit = /obj/item/clothing/suit/storage/toggle/labcoat
	shoes = /obj/item/clothing/shoes/laceup

/decl/hierarchy/outfit/job/argos/crew/medical/counselor/equip_id(var/mob/living/carbon/human/H, var/rank, var/assignment, var/equip_adjustments)
	. = ..()
	var/obj/item/weapon/card/id/foundation_civilian/regis_card = new
	if(rank)
		regis_card.rank = rank
	if(assignment)
		regis_card.assignment = assignment
	H.set_id_info(regis_card)
	H.equip_to_slot_or_store_or_drop(regis_card)