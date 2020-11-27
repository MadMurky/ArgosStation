/*
 * Argos Science
 */

/decl/closet_appearance/secure_closet/argos/science
	extra_decals = list(
		"stripe_vertical_left_full" =  COLOR_PURPLE_GRAY,
		"stripe_vertical_right_full" = COLOR_PURPLE_GRAY,
		"research" = COLOR_PURPLE_GRAY
	)

/decl/closet_appearance/secure_closet/argos/science/rd
	color = COLOR_BOTTLE_GREEN
	decals = list(
		"lower_holes"
	)
	extra_decals = list(
		"stripe_vertical_mid_full" = COLOR_GOLD,
		"stripe_vertical_left_full" = COLOR_PURPLE,
		"stripe_vertical_right_full" = COLOR_PURPLE,
		"research" = COLOR_GOLD
	)

/obj/structure/closet/secure_closet/argos/science/rd
	name = "research director's locker"
	req_access = list(access_rd)
	closet_appearance = /decl/closet_appearance/secure_closet/argos/science/rd

/obj/structure/closet/secure_closet/argos/science/rd/WillContain()
	return list(
		/obj/item/clothing/suit/storage/toggle/labcoat,
		/obj/item/clothing/suit/storage/toggle/labcoat/rd,
		/obj/item/clothing/gloves/latex,
		/obj/item/clothing/glasses/science,
		/obj/item/device/radio/headset/heads/argosrd,
		/obj/item/device/radio/headset/heads/argosrd/alt,
		/obj/item/weapon/tank/emergency/oxygen/engi,
		/obj/item/clothing/mask/gas,
		/obj/item/device/flash,
		/obj/item/weapon/gun/energy/confuseray,
		/obj/item/device/megaphone,
		/obj/item/device/taperecorder,
		/obj/item/device/tape/random = 3,
		/obj/item/device/camera,
		/obj/item/weapon/material/clipboard/steel,
		/obj/item/taperoll/research,
		/obj/item/clothing/glasses/welding/superior,
		/obj/item/weapon/storage/box/secret_project_disks/science,
		/obj/item/weapon/storage/belt/general,
		/obj/item/device/holowarrant,
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack/toxins, /obj/item/weapon/storage/backpack/satchel/tox)),
		new /datum/atom_creator/simple(/obj/item/weapon/storage/backpack/messenger/tox, 50)
	)

/obj/structure/closet/secure_closet/argos/science/xenoarchaeologist
	name = "xenoarchaeologist's locker"
	req_access = list(access_xenoarch)
	closet_appearance = /decl/closet_appearance/secure_closet/argos/science

/obj/structure/closet/secure_closet/argos/science/xenoarchaeologist/WillContain()
	return list(
		/obj/item/weapon/storage/belt/archaeology,
		/obj/item/weapon/storage/excavation,
		/obj/item/device/radio/headset/argossci,
		/obj/item/clothing/mask/gas,
		/obj/item/device/flashlight/lantern,
		/obj/item/device/ano_scanner,
		/obj/item/device/depth_scanner,
		/obj/item/device/core_sampler,
		/obj/item/device/gps,
		/obj/item/weapon/pinpointer/radio,
		/obj/item/device/radio/beacon,
		/obj/item/clothing/glasses/meson,
		/obj/item/clothing/glasses/science,
		/obj/item/weapon/pickaxe,
		/obj/item/device/measuring_tape,
		/obj/item/weapon/material/clipboard,
		/obj/item/weapon/folder,
		/obj/item/device/taperecorder,
		/obj/item/device/tape/random = 3,
		/obj/item/device/camera,
		/obj/item/device/scanner/gas,
		/obj/item/device/radio,
		/obj/item/weapon/pickaxe/xeno/hand,
		/obj/item/weapon/storage/bag/fossils,
		/obj/item/weapon/hand_labeler,
		/obj/item/taperoll/research,
		/obj/item/device/spaceflare,
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack/toxins, /obj/item/weapon/storage/backpack/satchel/tox)),
		new /datum/atom_creator/simple(/obj/item/weapon/storage/backpack/messenger/tox, 50)
	)

obj/structure/closet/secure_closet/argos/science
	name = "scientist's locker"
	req_access = list(access_research)
	closet_appearance = /decl/closet_appearance/secure_closet/argos/science

/obj/structure/closet/secure_closet/argos/science/WillContain()
	return list(
		/obj/item/clothing/under/rank/scientist,
		/obj/item/clothing/shoes/white,
		/obj/item/clothing/suit/storage/toggle/labcoat,
		/obj/item/device/radio/headset/argossci,
		/obj/item/clothing/mask/gas/half,
		/obj/item/weapon/tank/emergency/oxygen/engi,
		/obj/item/weapon/material/clipboard,
		/obj/item/weapon/folder,
		/obj/item/device/taperecorder,
		/obj/item/device/tape/random = 3,
		/obj/item/device/camera,
		/obj/item/device/scanner/gas,
		/obj/item/taperoll/research,
		/obj/item/clothing/gloves/latex,
		/obj/item/clothing/glasses/science,
		/obj/item/weapon/storage/belt/general,
		/obj/item/device/scanner/xenobio,
		/obj/item/device/scanner/plant,
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack/, /obj/item/weapon/storage/backpack/satchel/grey)),
		new /datum/atom_creator/simple(/obj/item/weapon/storage/backpack/messenger/, 50)
	)

/*
 * Argos Exploration
 */

/decl/closet_appearance/secure_closet/argos/exploration
	extra_decals = list(
		"stripe_vertical_mid_full" = COLOR_PURPLE,
		"exped" = COLOR_PURPLE
	)

/decl/closet_appearance/secure_closet/argos/exploration/pilot
	extra_decals = list(
		"stripe_vertical_left_full" = COLOR_PURPLE,
		"stripe_vertical_right_full" = COLOR_PURPLE,
		"exped" = COLOR_PURPLE
	)

/decl/closet_appearance/secure_closet/argos/exploration/chief_explorer
	extra_decals = list(
		"stripe_vertical_left_full" = COLOR_PURPLE,
		"stripe_vertical_mid_full" = COLOR_CLOSET_GOLD,
		"stripe_vertical_right_full" = COLOR_PURPLE,
		"exped" = COLOR_CLOSET_GOLD
	)

/obj/structure/closet/secure_closet/chiefexplorer
	name = "chief explorer's locker"
	req_access = list(access_senexplo)
	closet_appearance = /decl/closet_appearance/secure_closet/argos/exploration/chief_explorer

/obj/structure/closet/secure_closet/chiefexplorer/WillContain()
	return list(
		/obj/item/device/radio,
		/obj/item/device/tape/random,
		/obj/item/device/gps,
		/obj/item/weapon/pinpointer/radio,
		/obj/item/device/radio/beacon,
		/obj/item/taperoll/research,
		/obj/item/weapon/material/hatchet/machete/deluxe,
		/obj/item/weapon/storage/belt/holster/machete,
		/obj/item/device/spaceflare,
		/obj/item/clothing/accessory/storage/webbing_large,
		/obj/item/device/taperecorder,
		/obj/item/device/scanner/gas,
		/obj/item/device/flash,
		/obj/item/device/radio/headset/explo,
		/obj/item/device/binoculars,
		/obj/item/weapon/material/knife/folding/swiss/explorer,
		/obj/item/clothing/accessory/buddytag,
		/obj/item/weapon/storage/firstaid/light,
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack, /obj/item/weapon/storage/backpack/satchel/grey)),
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack/dufflebag, /obj/item/weapon/storage/backpack/messenger)),
		new /datum/atom_creator/weighted(list(/obj/item/device/flashlight, /obj/item/device/flashlight/flare, /obj/item/device/flashlight/flare/glowstick/random))
	)

/obj/structure/closet/secure_closet/explorer
	name = "explorer's locker"
	req_access = list(access_explo)
	closet_appearance = /decl/closet_appearance/secure_closet/argos/exploration

/obj/structure/closet/secure_closet/explorer/WillContain()
	return list(
		/obj/item/device/radio,
		/obj/item/device/gps,
		/obj/item/taperoll/research,
		/obj/item/weapon/storage/belt/holster/machete,
		/obj/item/device/spaceflare,
		/obj/item/clothing/accessory/storage/webbing_large,
		/obj/item/device/scanner/gas,
		/obj/item/device/radio/headset/explo,
		/obj/item/device/binoculars,
		/obj/item/weapon/storage/firstaid/light,
		/obj/item/weapon/material/knife/folding/swiss/explorer,
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack, /obj/item/weapon/storage/backpack/satchel/grey)),
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack/dufflebag, /obj/item/weapon/storage/backpack/messenger)),
		new /datum/atom_creator/weighted(list(/obj/item/device/flashlight, /obj/item/device/flashlight/flare, /obj/item/device/flashlight/flare/glowstick/random))
	)

/obj/structure/closet/secure_closet/pilot
	name = "pilot's locker"
	req_access = list(access_scipilot)
	closet_appearance = /decl/closet_appearance/secure_closet/argos/exploration/pilot

/obj/structure/closet/secure_closet/pilot/WillContain()
	return list(
		/obj/item/device/radio,
		/obj/item/device/gps,
		/obj/item/weapon/storage/belt/utility/full,
		/obj/item/device/spaceflare,
		/obj/item/clothing/accessory/storage/webbing_large,
		/obj/item/device/scanner/gas,
		/obj/item/device/radio/headset/scipilot,
		/obj/item/device/radio/headset/scipilot/alt,
		/obj/item/device/binoculars,
		/obj/item/clothing/gloves/thick,
		/obj/item/clothing/suit/storage/hazardvest/blue,
		/obj/item/clothing/head/helmet/solgov/pilot,
		/obj/item/weapon/storage/firstaid/light,
		/obj/item/weapon/material/knife/folding/swiss/explorer,
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack, /obj/item/weapon/storage/backpack/satchel/grey)),
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack/dufflebag, /obj/item/weapon/storage/backpack/messenger)),
		new /datum/atom_creator/weighted(list(/obj/item/device/flashlight, /obj/item/device/flashlight/flare, /obj/item/device/flashlight/flare/glowstick/random))
	)

