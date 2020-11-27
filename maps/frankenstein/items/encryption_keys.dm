/obj/item/device/encryptionkey/heads/argosexec
	name = "executive encryption key"
	icon_state = "cap_cypherkey"
	channels = list("Command" = 1, "Security" = 1, "Engineering" = 1, "Science" = 1, "Medical" = 1, "Supply" = 1, "Service" = 1)

/obj/item/device/encryptionkey/headset_argosrd
	name = "research director's radio encryption key"
	icon_state = "nt_cypherkey"
	channels = list("Science" = 1, "Command" = 1)

/obj/item/device/encryptionkey/headset_argosserv
	name = "service radio encryption key"
	icon_state = "nt_cypherkey"
	channels = list("Service" = 1)

/obj/item/device/encryptionkey/headset_argoscivadmin
	name = "civilian administrator radio encryption key"
	icon_state = "nt_cypherkey"
	channels = list("Service" = 1, "Command" = 1)

/obj/item/device/encryptionkey/headset_qm
	name = "quartermaster's encryption key"
	icon_state = "qm_cypherkey"
	channels = list("Supply" = 1, "Command" = 1)

/obj/item/device/encryptionkey/bridgeofficer
	name = "bridge officer's encryption key"
	icon_state = "com_cypherkey"
	channels = list("Command" = 1)

/obj/item/device/encryptionkey/heads/ai_integrated
	name = "ai integrated encryption key"
	desc = "Integrated encryption key."
	icon_state = "cap_cypherkey"
	channels = list("Command" = 1, "Security" = 1, "Engineering" = 1, "Science" = 1, "Medical" = 1, "Supply" = 1, "Service" = 1, "AI Private" = 1)


/obj/item/device/encryptionkey/headset_pilot
	name = "pilot radio encryption key"
	icon_state = "srv_cypherkey"
	channels = list("Supply" = 1, "Science" = 1)


/obj/item/weapon/storage/box/radiokeys
	name = "box of radio encryption keys"
	desc = "A box full of assorted encryption keys."
	startswith = list(/obj/item/device/encryptionkey/headset_sec = 3,
					  /obj/item/device/encryptionkey/headset_med = 3,
					  /obj/item/device/encryptionkey/headset_cargo = 3,
					  /obj/item/device/encryptionkey/headset_sci = 3)

/obj/item/weapon/storage/box/radiokeys/Initialize()
	. = ..()
	make_exact_fit()

/obj/item/device/encryptionkey/heads/psiadv
	name = "psionic advisor's encryption key"
	icon_state = "com_cypherkey"
	channels = list("Command" = 1, "Science" = 1, "Medical" = 1)
