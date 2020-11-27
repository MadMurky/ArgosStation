/datum/map/bearcat
	allowed_jobs = list(/datum/job/captain, /datum/job/chief_engineer, /datum/job/doctor,/datum/job/chemist, /datum/job/hop, /datum/job/cyborg, /datum/job/assistant, /datum/job/engineer, /datum/job/hos,/datum/job/officer, /datum/job/roboticist)
	species_to_job_whitelist = list(
		/datum/species/vox = list(/datum/job/cyborg),
		/datum/species/vox/armalis = list(/datum/job/cyborg),
		/datum/species/nabber = list(/datum/job/assistant, /datum/job/engineer, /datum/job/chemist, /datum/job/roboticist),
		)
	species_to_job_blacklist = list(
		/datum/species/adherent = list(/datum/job/hos),
		/datum/species/diona = list(/datum/job/hos),
		/datum/species/throom = list(/datum/job/hos,/datum/job/hop, /datum/job/doctor, /datum/job/captain, /datum/job/chief_engineer)
		)

// Some jobs for nabber grades defined here due to map-specific job datums.
/decl/cultural_info/culture/nabber/New()
	LAZYADD(valid_jobs, /datum/job/assistant)
	..()

/decl/cultural_info/culture/nabber/b/New()
	LAZYADD(valid_jobs, /datum/job/engineer)
	..()

/decl/cultural_info/culture/nabber/a/New()
	LAZYADD(valid_jobs, /datum/job/roboticist)
	..()

/decl/cultural_info/culture/nabber/a/plus/New()
	LAZYADD(valid_jobs, /datum/job/chemist)
	..()


/datum/job/captain
	supervisors = "the Merchant Code and your conscience"
	outfit_type = /decl/hierarchy/outfit/job/bearcat/captain
	hud_icon = "hudcommandingofficer"
	required_language = LANGUAGE_SPACER
	min_skill = list(   SKILL_WEAPONS = SKILL_ADEPT,
	                    SKILL_SCIENCE     = SKILL_ADEPT,
	                    SKILL_PILOT       = SKILL_ADEPT)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX,
	                    SKILL_WEAPONS     = SKILL_MAX)
	skill_points = 30

/datum/job/captain/equip(var/mob/living/carbon/human/H)
	. = ..()
	if(H.client)
		H.client.verbs += /client/proc/rename_ship
		H.client.verbs += /client/proc/rename_company

/client/proc/rename_ship()
	set name = "Rename Ship"
	set category = "Captain's Powers"

	var/ship = sanitize(input(src, "What is your ship called? Don't add the vessel prefix, the FTV one will be attached automatically.", "Ship name", GLOB.using_map.station_short), MAX_NAME_LEN)
	if(!ship)
		return
	GLOB.using_map.station_short = ship
	GLOB.using_map.station_name = "FTV [ship]"
	var/obj/effect/overmap/visitable/ship/bearcat/B = locate() in world
	if(B)
		B.SetName(GLOB.using_map.station_name)
	command_announcement.Announce("Attention all hands on [GLOB.using_map.station_name]! Thank you for your attention.", "Ship re-christened")
	verbs -= /client/proc/rename_ship

/client/proc/rename_company()
	set name = "Rename Company"
	set category = "Captain's Powers"
	var/company = sanitize(input(src, "What should your enterprise be called?", "Company name", GLOB.using_map.company_name), MAX_NAME_LEN)
	if(!company)
		return
	var/company_s = sanitize(input(src, "What's the short name for it?", "Company name", GLOB.using_map.company_short), MAX_NAME_LEN)
	if(company != GLOB.using_map.company_name)
		if (company)
			GLOB.using_map.company_name = company
		if(company_s)
			GLOB.using_map.company_short = company_s
		command_announcement.Announce("Congratulations to all employees of [capitalize(GLOB.using_map.company_name)] on the new name. Their rebranding has changed the [GLOB.using_map.company_short] market value by [0.01*rand(-10,10)]%.", "Company name change approved")
	verbs -= /client/proc/rename_company

/datum/job/captain/get_access()
	return get_all_station_access()

/datum/job/chief_engineer
	title = "Chief Engineer"
	supervisors = "the Captain"
	hud_icon = "hudchiefengineer"
	head_position = 1
	required_language = LANGUAGE_SPACER
	outfit_type = /decl/hierarchy/outfit/job/bearcat/chief_engineer
	min_skill = list(   SKILL_BUREAUCRACY  = SKILL_BASIC,
	                    SKILL_COMPUTER     = SKILL_ADEPT,
	                    SKILL_EVA          = SKILL_ADEPT,
	                    SKILL_CONSTRUCTION = SKILL_ADEPT,
	                    SKILL_ELECTRICAL   = SKILL_ADEPT,
	                    SKILL_ATMOS        = SKILL_ADEPT,
	                    SKILL_ENGINES      = SKILL_EXPERT)

	max_skill = list(   SKILL_CONSTRUCTION = SKILL_MAX,
	                    SKILL_ELECTRICAL   = SKILL_MAX,
	                    SKILL_ATMOS        = SKILL_MAX,
	                    SKILL_ENGINES      = SKILL_MAX)
	skill_points = 30

/datum/job/doctor
	title = "Doc"
	supervisors = "the Captain and your idea of Hippocratic Oath"
	outfit_type = /decl/hierarchy/outfit/job/bearcat/doc
	alt_titles = list(
		"Surgeon"
		)
	total_positions = 2
	spawn_positions = 2
	hud_icon = "hudphysician"
	required_language = LANGUAGE_SPACER
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_MEDICAL     = SKILL_EXPERT,
	                    SKILL_ANATOMY     = SKILL_EXPERT,
	                    SKILL_CHEMISTRY   = SKILL_BASIC)

	max_skill = list(   SKILL_MEDICAL     = SKILL_MAX,
	                    SKILL_ANATOMY     = SKILL_MAX,
	                    SKILL_CHEMISTRY   = SKILL_MAX)
	skill_points = 20

/datum/job/chemist
	title = "Chemist"
	supervisors = "the Captain"
	outfit_type = /decl/hierarchy/outfit/job/bearcat/doc/chemist
	total_positions = 1
	spawn_positions = 1
	alt_titles = list(
		"Pharmacist"
		)
	hud_icon = "hudlaboratorytechnician"
	required_language = LANGUAGE_SPACER
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_MEDICAL     = SKILL_BASIC,
	                    SKILL_ANATOMY     = SKILL_BASIC,
	                    SKILL_CHEMISTRY   = SKILL_ADEPT)

	max_skill = list(   SKILL_MEDICAL     = SKILL_MAX,
	                    SKILL_ANATOMY     = SKILL_MAX,
	                    SKILL_CHEMISTRY   = SKILL_MAX)
	skill_points = 20

/datum/job/hop
	title = "First Mate"
	supervisors = "the Captain and the Merchant Code"
	outfit_type = /decl/hierarchy/outfit/job/bearcat/mate
	hud_icon = "hudcentcom"
	required_language = LANGUAGE_SPACER
	min_skill = list(   SKILL_WEAPONS     = SKILL_BASIC,
	                    SKILL_FINANCE     = SKILL_EXPERT,
	                    SKILL_BUREAUCRACY = SKILL_ADEPT,
	                    SKILL_PILOT       = SKILL_ADEPT)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX,
	                    SKILL_FINANCE     = SKILL_MAX,
	                    SKILL_BUREAUCRACY = SKILL_ADEPT)
	skill_points = 30

/datum/job/hos
	title = "Enforcer"
	total_positions = 1
	spawn_positions = 1
	head_position = 0
	supervisors = "the Captain"
	required_language = LANGUAGE_SPACER
	outfit_type = /decl/hierarchy/outfit/job/bearcat/enforcer
	alt_titles = list(
		"Hired Goon",
		"Loss Prevention Associate" = /decl/hierarchy/outfit/job/bearcat/enforcer/lossprev,
		"Marshal" = /decl/hierarchy/outfit/job/bearcat/enforcer/marshal)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_EVA         = SKILL_BASIC,
	                    SKILL_COMBAT      = SKILL_BASIC,
	                    SKILL_WEAPONS     = SKILL_ADEPT,
	                    SKILL_FORENSICS   = SKILL_BASIC)

	max_skill = list(   SKILL_COMBAT      = SKILL_MAX,
	                    SKILL_WEAPONS     = SKILL_MAX,
	                    SKILL_FORENSICS   = SKILL_MAX)
	skill_points = 24
	hud_icon = "hudchiefofsecurity"

/datum/job/officer
	title = "Deputy"
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Captain and the Enforcer"
	required_language = LANGUAGE_SPACER
	outfit_type = /decl/hierarchy/outfit/job/bearcat/deputy
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_EVA         = SKILL_BASIC,
	                    SKILL_COMBAT      = SKILL_BASIC,
	                    SKILL_WEAPONS     = SKILL_ADEPT,
	                    SKILL_FORENSICS   = SKILL_BASIC)

	max_skill = list(   SKILL_COMBAT      = SKILL_MAX,
	                    SKILL_WEAPONS     = SKILL_MAX,
	                    SKILL_FORENSICS   = SKILL_MAX)
	skill_points = 20
	hud_icon = "hudmasteratarms"

/datum/job/hos/get_description_blurb()
	return "You are the ship's security. Your job is to deal with threats both inside and out of the ship."

/datum/job/assistant
	title = "Deck Hand"
	supervisors = "literally everyone, you bottom feeder"
	required_language = LANGUAGE_SPACER
	outfit_type = /decl/hierarchy/outfit/job/bearcat/hand
	alt_titles = list(
		"Cook" = /decl/hierarchy/outfit/job/bearcat/hand/cook,
		"Cargo Hand",
		"Musician" = /decl/hierarchy/outfit/job/bearcat/hand/musician,
		"Passenger")
	hud_icon = "huddecktechnician"

/datum/job/engineer
	title = "Junior Engineer"
	supervisors = "Chief Engineer"
	required_language = LANGUAGE_SPACER
	total_positions = 2
	spawn_positions = 2
	hud_icon = "hudengineer"
	min_skill = list(   SKILL_COMPUTER     = SKILL_BASIC,
	                    SKILL_EVA          = SKILL_BASIC,
	                    SKILL_CONSTRUCTION = SKILL_ADEPT,
	                    SKILL_ELECTRICAL   = SKILL_BASIC,
	                    SKILL_ATMOS        = SKILL_BASIC,
	                    SKILL_ENGINES      = SKILL_BASIC)

	max_skill = list(   SKILL_CONSTRUCTION = SKILL_MAX,
	                    SKILL_ELECTRICAL   = SKILL_MAX,
	                    SKILL_ATMOS        = SKILL_MAX,
	                    SKILL_ENGINES      = SKILL_MAX)
	skill_points = 20

/datum/job/roboticist
	title = "Roboticist"
	supervisors = "Chief Engineer"
	required_language = LANGUAGE_SPACER
	outfit_type = /decl/hierarchy/outfit/job/bearcat/roboticist
	total_positions = 1
	spawn_positions = 1
	hud_icon = "hudroboticist"
	alt_titles = list(
		"Exosuit Technician"
		)
	total_
	min_skill = list(   SKILL_COMPUTER		= SKILL_ADEPT,
	                    SKILL_DEVICES		= SKILL_ADEPT,
	                    SKILL_EVA           = SKILL_ADEPT,
	                    SKILL_ANATOMY       = SKILL_ADEPT,
	                    SKILL_MECH          = HAS_PERK)

	max_skill = list(   SKILL_CONSTRUCTION = SKILL_MAX,
	                    SKILL_ELECTRICAL   = SKILL_MAX,
	                    SKILL_ATMOS        = SKILL_EXPERT,
	                    SKILL_ENGINES      = SKILL_EXPERT,
	                    SKILL_DEVICES      = SKILL_MAX,
	                    SKILL_MEDICAL      = SKILL_EXPERT,
	                    SKILL_ANATOMY      = SKILL_EXPERT)
	skill_points = 24

/datum/job/cyborg
	supervisors = "your laws and the Captain"
	total_positions = 2
	spawn_positions = 2


// OUTFITS
#define BEARCAT_OUTFIT_JOB_NAME(job_name) ("Bearcat - Job - " + job_name)

/decl/hierarchy/outfit/job/bearcat
	hierarchy_type = /decl/hierarchy/outfit/job/bearcat
	pda_type = /obj/item/modular_computer/pda
	pda_slot = slot_l_store
	l_ear = /obj/item/device/radio/headset
	r_ear = null

/decl/hierarchy/outfit/job/bearcat/captain
	name = BEARCAT_OUTFIT_JOB_NAME("Captain")
	uniform = /obj/item/clothing/under/casual_pants/classicjeans
	suit = /obj/item/clothing/suit/pirate/bearcat
	head = /obj/item/clothing/head/cowboy_hat
	glasses = /obj/item/clothing/glasses/sunglasses
	shoes = /obj/item/clothing/shoes/black
	pda_type = /obj/item/modular_computer/pda/captain
	r_pocket = /obj/item/device/radio
	id_type = /obj/item/weapon/card/id/gold

/decl/hierarchy/outfit/job/bearcat/enforcer
	name = BEARCAT_OUTFIT_JOB_NAME("Enforcer")
	uniform = /obj/item/clothing/under/syndicate/tacticool
	suit = /obj/item/clothing/suit/armor/pcarrier/medium
	head = /obj/item/clothing/head/helmet
	mask = /obj/item/clothing/mask/gas/half
	gloves = /obj/item/clothing/gloves/thick/swat
	belt = /obj/item/weapon/melee/baton/loaded
	glasses = /obj/item/clothing/glasses/sunglasses/sechud
	shoes = /obj/item/clothing/shoes/dutyboots
	r_pocket = /obj/item/device/radio
	l_pocket = /obj/item/device/flash
	l_hand = /obj/item/weapon/handcuffs
	id_type = /obj/item/weapon/card/id/security/head
	pda_type = /obj/item/modular_computer/pda/security

/decl/hierarchy/outfit/job/bearcat/deputy
	name = BEARCAT_OUTFIT_JOB_NAME("Deputy")
	uniform = /obj/item/clothing/under/syndicate/tacticool
	suit = /obj/item/clothing/suit/armor/pcarrier/medium
	head = /obj/item/clothing/head/helmet
	mask = /obj/item/clothing/mask/gas/half
	gloves = /obj/item/clothing/gloves/thick/swat
	belt = /obj/item/weapon/melee/baton/loaded
	glasses = /obj/item/clothing/glasses/sunglasses/sechud
	shoes = /obj/item/clothing/shoes/dutyboots
	r_pocket = /obj/item/device/radio
	l_pocket = /obj/item/device/flash
	l_hand = /obj/item/weapon/handcuffs
	id_type = /obj/item/weapon/card/id/security
	pda_type = /obj/item/modular_computer/pda/security

/decl/hierarchy/outfit/job/bearcat/captain/post_equip(var/mob/living/carbon/human/H)
	..()
	var/obj/item/clothing/uniform = H.w_uniform
	if(uniform)
		var/obj/item/clothing/accessory/toggleable/hawaii/random/eyegore = new()
		if(uniform.can_attach_accessory(eyegore))
			uniform.attach_accessory(null, eyegore)
		else
			qdel(eyegore)

/decl/hierarchy/outfit/job/bearcat/chief_engineer
	id_type = /obj/item/weapon/card/id/engineering/head
	name = BEARCAT_OUTFIT_JOB_NAME("Chief Engineer")
	uniform = /obj/item/clothing/under/rank/chief_engineer
	glasses = /obj/item/clothing/glasses/welding/superior
	suit = /obj/item/clothing/suit/storage/hazardvest
	gloves = /obj/item/clothing/gloves/thick
	shoes = /obj/item/clothing/shoes/workboots
	pda_type = /obj/item/modular_computer/pda/heads/ce
	l_hand = /obj/item/weapon/wrench
	belt = /obj/item/weapon/storage/belt/utility/full
	id_type = /obj/item/weapon/card/id/engineering/head
	r_pocket = /obj/item/device/radio
	flags = OUTFIT_HAS_BACKPACK|OUTFIT_EXTENDED_SURVIVAL

/decl/hierarchy/outfit/job/bearcat/doc
	name = BEARCAT_OUTFIT_JOB_NAME("Ship's Doc")
	id_type = /obj/item/weapon/card/id/medical
	uniform = /obj/item/clothing/under/det/black
	suit = /obj/item/clothing/suit/storage/toggle/labcoat
	shoes = /obj/item/clothing/shoes/laceup
	pda_type = /obj/item/modular_computer/pda/medical

/decl/hierarchy/outfit/job/bearcat/doc/chemist
	name = BEARCAT_OUTFIT_JOB_NAME("Chemist")
	id_type = /obj/item/weapon/card/id/medical
	suit = /obj/item/clothing/suit/storage/toggle/labcoat/chemist

/decl/hierarchy/outfit/job/bearcat/mate
	name = BEARCAT_OUTFIT_JOB_NAME("First Mate")
	uniform = /obj/item/clothing/under/suit_jacket/checkered
	shoes = /obj/item/clothing/shoes/laceup
	glasses = /obj/item/clothing/glasses/sunglasses/big
	pda_type = /obj/item/modular_computer/pda/cargo
	l_hand = /obj/item/weapon/material/clipboard
	id_type = /obj/item/weapon/card/id/silver

/decl/hierarchy/outfit/job/bearcat/hand
	name = BEARCAT_OUTFIT_JOB_NAME("Deck Hand")

/decl/hierarchy/outfit/job/bearcat/hand/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pick(list(/obj/item/clothing/under/overalls,/obj/item/clothing/under/focal,/obj/item/clothing/under/hazard,/obj/item/clothing/under/rank/cargotech,/obj/item/clothing/under/color/black,/obj/item/clothing/under/color/grey))

/decl/hierarchy/outfit/job/bearcat/hand/cook
	name = BEARCAT_OUTFIT_JOB_NAME("Cook")
	head = /obj/item/clothing/head/chefhat
	suit = /obj/item/clothing/suit/chef/classic

/decl/hierarchy/outfit/job/bearcat/hand/musician
	name = BEARCAT_OUTFIT_JOB_NAME("Musician")
	l_hand = /obj/item/device/synthesized_instrument/guitar

/decl/hierarchy/outfit/job/bearcat/enforcer/marshal
	suit = /obj/item/clothing/suit/armor/hos/jensen
	belt = /obj/item/weapon/gun/energy/gun/secure/preauthorized

/decl/hierarchy/outfit/job/bearcat/enforcer/lossprev
	suit = /obj/item/clothing/suit/armor/pcarrier/medium/nt
	head = /obj/item/clothing/head/helmet/nt

/decl/hierarchy/outfit/job/bearcat/hand/engine
	name = BEARCAT_OUTFIT_JOB_NAME("Junior Engineer")
	id_type = /obj/item/weapon/card/id/engineering
	head = /obj/item/clothing/head/hardhat
	flags = OUTFIT_HAS_BACKPACK|OUTFIT_EXTENDED_SURVIVAL

/decl/hierarchy/outfit/job/bearcat/roboticist
	name = BEARCAT_OUTFIT_JOB_NAME("Roboticist")
	id_type = /obj/item/weapon/card/id/science/roboticist
	uniform = /obj/item/clothing/under/rank/psych/turtleneck
	suit = /obj/item/clothing/suit/storage/toggle/labcoat
	shoes = /obj/item/clothing/shoes/laceup
	glasses = /obj/item/clothing/glasses/welding

/decl/hierarchy/outfit/job/bearcat/hand/engine/pre_equip(mob/living/carbon/human/H)
	..()
	if(prob(50))
		suit = /obj/item/clothing/suit/storage/hazardvest