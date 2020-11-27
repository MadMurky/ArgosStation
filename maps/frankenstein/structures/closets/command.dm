/*
 * Argos Command
 */
/decl/closet_appearance/secure_closet/argos/command
	extra_decals = list(
		"stripe_vertical_mid_full" = COLOR_CLOSET_GOLD
	)

/decl/closet_appearance/secure_closet/argos/command/bo
	extra_decals = list(
		"stripe_vertical_left_full" = COLOR_CLOSET_GOLD,
		"stripe_vertical_right_full" = COLOR_CLOSET_GOLD
	)

/decl/closet_appearance/secure_closet/argos/command/xo
	extra_decals = list(
		"stripe_vertical_left_full" = COLOR_CLOSET_GOLD,
		"stripe_vertical_right_full" = COLOR_CLOSET_GOLD,
		"command" = COLOR_CLOSET_GOLD
	)

/decl/closet_appearance/secure_closet/argos/command/co
	extra_decals = list(
		"stripe_vertical_left_full" = COLOR_CLOSET_GOLD,
		"stripe_vertical_mid_full" = COLOR_OFF_WHITE,
		"stripe_vertical_right_full" = COLOR_CLOSET_GOLD,
		"command" = COLOR_OFF_WHITE
	)

/obj/structure/closet/secure_closet/argoscaptain
	name = "captain's locker"
	req_access = list(access_captain)
	closet_appearance = /decl/closet_appearance/secure_closet/argos/command/co

/obj/structure/closet/secure_closet/CO/WillContain()
	return list(
		/obj/item/device/radio/headset/heads/argosexec,
		/obj/item/clothing/glasses/sunglasses,
		/obj/item/device/radio/headset/heads/argosexec/alt,
		/obj/item/weapon/storage/belt/general,
		/obj/item/weapon/melee/telebaton,
		/obj/item/device/flash,
		/obj/item/weapon/gun/energy/confuseray,
		/obj/item/device/megaphone,
		/obj/item/weapon/storage/box/ids,
		/obj/item/weapon/material/clipboard,
		/obj/item/device/holowarrant,
		/obj/item/weapon/folder/blue,
		/obj/item/weapon/material/knife/folding/swiss/officer,
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack/captain, /obj/item/weapon/storage/backpack/satchel/cap)),
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack/dufflebag/captain, /obj/item/weapon/storage/backpack/messenger/com))
	)

/obj/structure/closet/secure_closet/XO
	name = "executive officer's locker"
	req_access = list(access_hop)
	closet_appearance = /decl/closet_appearance/secure_closet/argos/command/xo

/obj/structure/closet/secure_closet/XO/WillContain()
	return list(
		/obj/item/clothing/glasses/sunglasses,
		/obj/item/device/radio/headset/heads/argosexec,
		/obj/item/weapon/storage/belt/general,
		/obj/item/weapon/melee/telebaton,
		/obj/item/device/flash,
		/obj/item/weapon/gun/energy/confuseray,
		/obj/item/device/megaphone,
		/obj/item/weapon/storage/box/headset,
		/obj/item/device/radio/headset/heads/argosexec/alt,
		/obj/item/weapon/storage/box/radiokeys,
		/obj/item/weapon/storage/box/large/ids,
		/obj/item/weapon/storage/box/PDAs,
		/obj/item/weapon/material/clipboard,
		/obj/item/device/holowarrant,
		/obj/item/weapon/folder/blue,
		/obj/item/weapon/material/knife/folding/swiss/officer,
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack/captain, /obj/item/weapon/storage/backpack/satchel/cap)),
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack/dufflebag/captain, /obj/item/weapon/storage/backpack/messenger/com))
	)

/obj/structure/closet/secure_closit/psiadv
	name = "psionic advisor's locker"
	req_access = list(access_psiadv)
	closet_appearance = /decl/closet_appearance/secure_closet/argos/command

/obj/structure/closet/secure_closet/psiadv/WillContain()
	return list(
		/obj/item/device/radio,
		/obj/item/weapon/pen,
		/obj/item/device/tape/random,
		/obj/item/device/taperecorder,
		/obj/item/device/flash,
		/obj/item/device/megaphone,
		/obj/item/weapon/material/clipboard,
		/obj/item/weapon/folder/blue,
		/obj/item/weapon/storage/belt/general,
		/obj/item/weapon/storage/box/psi,
		/obj/item/clothing/suit/storage/toggle/labcoat/foundation,
		/obj/item/clothing/under/det/grey,
		/obj/item/clothing/gloves/white,
		/obj/item/clothing/shoes/dress,
		/obj/item/device/radio/headset/psiadv,
		/obj/item/device/radio/headset/psiadv/alt,
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack, /obj/item/weapon/storage/backpack/satchel/grey)),
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack/dufflebag, /obj/item/weapon/storage/backpack/messenger))
	)

/obj/structure/closet/secure_closet/bridgeofficer
	name = "bridge officer's locker"
	req_access = list(access_bridge, access_keycard_auth)
	closet_appearance = /decl/closet_appearance/secure_closet/argos/command/bo

/obj/structure/closet/secure_closet/bridgeofficer/WillContain()
	return list(
		/obj/item/device/radio,
		/obj/item/weapon/pen,
		/obj/item/device/tape/random,
		/obj/item/device/taperecorder,
		/obj/item/device/flash,
		/obj/item/device/megaphone,
		/obj/item/weapon/material/clipboard,
		/obj/item/weapon/folder/blue,
		/obj/item/modular_computer/tablet/lease/preset/command,
		/obj/item/device/radio/headset/bridgeofficer,
		/obj/item/device/radio/headset/bridgeofficer/alt,
		/obj/item/weapon/storage/belt/general,
		/obj/item/weapon/material/knife/folding/swiss/officer,
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack, /obj/item/weapon/storage/backpack/satchel/grey)),
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack/dufflebag, /obj/item/weapon/storage/backpack/messenger)),
		new /datum/atom_creator/weighted(list(/obj/item/device/flashlight, /obj/item/device/flashlight/flare, /obj/item/device/flashlight/flare/glowstick/random))
	)