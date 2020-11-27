/decl/hierarchy/outfit/job/argos/crew/supply
	l_ear = /obj/item/device/radio/headset/headset_cargo
	hierarchy_type = /decl/hierarchy/outfit/job/argos/crew/supply

/decl/hierarchy/outfit/job/argos/crew/supply/New()
	..()
	BACKPACK_OVERRIDE_ENGINEERING

/decl/hierarchy/outfit/job/argos/crew/supply/qm
	name = OUTFIT_JOB_NAME("Quartermaster - Argos")
	l_ear = /obj/item/device/radio/headset/headset_qm
	uniform = /obj/item/clothing/under/rank/cargo
	shoes = /obj/item/clothing/shoes/dutyboots
	id_type = /obj/item/weapon/card/id/argos/crew/supply/qm
	pda_type = /obj/item/modular_computer/pda/cargo

/decl/hierarchy/outfit/job/argos/crew/supply/cargotech
	name = OUTFIT_JOB_NAME("Cargo Technician - Argos")
	uniform = /obj/item/clothing/under/rank/cargotech
	shoes = /obj/item/clothing/shoes/brown
	id_type = /obj/item/weapon/card/id/argos/crew/supply
	pda_type = /obj/item/modular_computer/pda/cargo

/decl/hierarchy/outfit/job/argos/crew/supply/prospector
	name = OUTFIT_JOB_NAME("Prospecto - Argosr")
	uniform = /obj/item/clothing/under/rank/ntwork
	shoes = /obj/item/clothing/shoes/workboots
	id_type = /obj/item/weapon/card/id/argos/crew/supply/mining
	pda_type = /obj/item/modular_computer/pda/mining
	flags = OUTFIT_HAS_BACKPACK|OUTFIT_EXTENDED_SURVIVAL
	l_ear = /obj/item/device/radio/headset/headset_mining
