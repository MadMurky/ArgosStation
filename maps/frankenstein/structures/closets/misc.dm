/decl/closet_appearance/secure_closet/argos/civadmin
	color = COLOR_BOTTLE_GREEN
	extra_decals = list(
		"stripe_vertical_mid_full" = COLOR_OFF_WHITE
	)

/obj/structure/closet/secure_closet/argos/civadmin
	name = "\improper civilian administrator's locker"
	req_access = list(access_civadmin)
	closet_appearance = /decl/closet_appearance/secure_closet/argos/civadmin

/obj/structure/closet/secure_closet/argos/civadmin/WillContain()
	return list(
		/obj/item/device/flash,
		/obj/item/device/camera_film = 2,
		/obj/item/weapon/material/clipboard,
		/obj/item/weapon/folder,
		/obj/item/device/tape/random = 3,
		/obj/item/weapon/storage/secure/briefcase,
		/obj/item/device/radio/headset/civadmin,
		/obj/item/clothing/shoes/laceup,
		/obj/item/clothing/suit/storage/toggle/suit/black,
		/obj/item/clothing/glasses/sunglasses/big,
		/obj/item/weapon/storage/belt/general,
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack, /obj/item/weapon/storage/backpack/satchel)),
		new /datum/atom_creator/simple(/obj/item/weapon/storage/backpack/messenger, 50)
	)

/obj/structure/closet/secure_closet/guncabinet/sidearm
	name = "sidearm cabinet"
	req_access = list(list(access_armory,access_hos,access_hop,access_ce,access_cmo,access_rd))

/obj/structure/closet/secure_closet/guncabinet/sidearm/WillContain()
	return list(
			/obj/item/clothing/accessory/storage/holster/thigh = 2,
			/obj/item/weapon/gun/energy/gun/secure = 3,
	)

/obj/structure/closet/secure_closet/guncabinet/sidearm/small
	name = "personal sidearm cabinet"

/obj/structure/closet/secure_closet/guncabinet/sidearm/small/WillContain()
	return list(/obj/item/weapon/gun/energy/gun/small/secure = 4)

/obj/structure/closet/secure_closet/guncabinet/sidearm/combined
	name = "combined sidearm cabinet"

/obj/structure/closet/secure_closet/guncabinet/sidearm/combined/WillContain()
	return list(
		/obj/item/weapon/storage/belt/holster/general = 3,
		/obj/item/weapon/gun/energy/gun/secure = 3,
		/obj/item/weapon/gun/energy/gun/small/secure = 1,
	)

/obj/structure/closet/secure_closet/guncabinet/PPE
	name = "Bridge PPE cabinet"
	req_access = list(list(access_armory,access_hos,access_hop,access_ce,access_cmo,access_rd))

/obj/structure/closet/secure_closet/guncabinet/PPE/WillContain()
	return list(
		/obj/item/weapon/gun/energy/gun/small/secure = 3,
		/obj/item/clothing/suit/armor/pcarrier/medium/command = 3,
		/obj/item/clothing/head/helmet/solgov/command = 3
	)