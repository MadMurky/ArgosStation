/decl/hierarchy/outfit/job/argos/crew/security
	hierarchy_type = /decl/hierarchy/outfit/job/argos/crew/security
	l_ear = /obj/item/device/radio/headset/headset_sec
	pda_slot = slot_l_store

decl/hierarchy/outfit/job/argos/crew/security/New()
	..()
	BACKPACK_OVERRIDE_SECURITY

/decl/hierarchy/outfit/job/argos/crew/security/warden
	name = OUTFIT_JOB_NAME("Warden - Argos")
	uniform = /obj/item/clothing/under/rank/warden/corp
	shoes = /obj/item/clothing/shoes/dutyboots
	id_type = /obj/item/weapon/card/id/argos/crew/security/warden
	pda_type = /obj/item/modular_computer/pda/security

/decl/hierarchy/outfit/job/argos/crew/security/forensic_tech
	name = OUTFIT_JOB_NAME("Forensic Technician - Argos")
	head = /obj/item/clothing/head/det
	uniform = /obj/item/clothing/under/det
	suit = /obj/item/clothing/suit/storage/det_trench/ft
	shoes = /obj/item/clothing/shoes/laceup
	backpack_contents = list(/obj/item/clothing/accessory/badge/PI = 1)
	id_type = /obj/item/weapon/card/id/argos/crew/security/forensic

/decl/hierarchy/outfit/job/argos/crew/security/officer
	name = OUTFIT_JOB_NAME("Security Officer - Argos")
	uniform = /obj/item/clothing/under/rank/security/corp
	shoes = /obj/item/clothing/shoes/dutyboots
	id_type = /obj/item/weapon/card/id/argos/crew/security
	pda_type = /obj/item/modular_computer/pda/security