/decl/hierarchy/outfit/job/argos/passenger/
	name = OUTFIT_JOB_NAME("Passenger - Argos")
	uniform = /obj/item/clothing/under/color/grey
	l_ear = /obj/item/device/radio/headset
	shoes = /obj/item/clothing/shoes/black
	pda_type = /obj/item/modular_computer/pda
	id_type = /obj/item/weapon/card/id/argos/passenger

/decl/hierarchy/outfit/job/argos/passenger/psychologist
	name = OUTFIT_JOB_NAME("Psychologist - Argos")
	uniform = /obj/item/clothing/under/rank/psych/turtleneck
	shoes = /obj/item/clothing/shoes/laceup

/decl/hierarchy/outfit/job/argos/passenger/journalist
	name = OUTFIT_JOB_NAME("Journalist - Argos")
	backpack_contents = list(/obj/item/device/camera/tvcamera = 1,
	/obj/item/clothing/accessory/badge/press = 1)

/decl/hierarchy/outfit/job/argos/merchant
	name = OUTFIT_JOB_NAME("Merchant - Argos")
	uniform = /obj/item/clothing/under/color/black
	l_ear = null
	shoes = /obj/item/clothing/shoes/black
	pda_type = /obj/item/modular_computer/pda
	id_type = /obj/item/weapon/card/id/argos/merchant

/decl/hierarchy/outfit/job/argos/ert
	name = OUTFIT_JOB_NAME("ERT - Argos")
	uniform = /obj/item/clothing/under/solgov/utility/fleet/combat
	head = /obj/item/clothing/head/beret/solgov/fleet
	gloves = /obj/item/clothing/gloves/thick
	id_type = /obj/item/weapon/card/id/centcom/ERT
	pda_type = /obj/item/modular_computer/pda/ert
	l_ear = /obj/item/device/radio/headset/ert
	shoes = /obj/item/clothing/shoes/dutyboots

/decl/hierarchy/outfit/job/argos/ert/leader
	name = OUTFIT_JOB_NAME("ERT Leader - Argos")
	uniform = /obj/item/clothing/under/solgov/utility/fleet/combat/command
	head = /obj/item/clothing/head/beret/solgov/fleet/command