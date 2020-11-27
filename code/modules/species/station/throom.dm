/datum/species/throom
	name = SPECIES_THROOM
	name_plural = "Throom"
	description = "The Throom are an oddity, previously unknown to human-kind before the collapse,\
	these small mushroom-like humanoids have been appearing in and around human space in increasing frequency, \
	with some taking up residence aboard civilized vessels."

	icobase = 		  'icons/mob/human_races/species/throom/body.dmi'
	deform = 		  'icons/mob/human_races/species/throom/body.dmi'
	damage_overlays = 'icons/mob/human_races/species/throom/damage_overlays.dmi'
	damage_mask =     'icons/mob/human_races/species/throom/damage_mask.dmi'
	blood_mask =      'icons/mob/human_races/species/throom/blood_mask.dmi'
	preview_icon = 	  'icons/mob/human_races/species/throom/preview.dmi'
	hidden_from_codex = FALSE
	silent_steps = TRUE

	darksight_range = 8
	darksight_tint = DARKTINT_GOOD
	taste_sensitivity = TASTE_DULL
	speech_sounds = list('sound/voice/throom.ogg')
	speech_chance = 20
	antaghud_offset_y = -8
	brute_mod 	  = 1.35
	burn_mod 	  = 1.35
	radiation_mod = 0.25

	unarmed_types = list(/datum/unarmed_attack/stomp, /datum/unarmed_attack/kick, /datum/unarmed_attack/punch)
	species_flags = SPECIES_FLAG_NO_PAIN | SPECIES_FLAG_NO_POISON | SPECIES_FLAG_NO_MINOR_CUT
	appearance_flags = HAS_SKIN_COLOR | HAS_EYE_COLOR | HAS_HAIR_COLOR
	spawn_flags = SPECIES_CAN_JOIN | SPECIES_IS_WHITELISTED | SPECIES_NO_FBP_CONSTRUCTION | SPECIES_NO_FBP_CHARGEN

	descriptors = list(
		/datum/mob_descriptor/height = -2,
		/datum/mob_descriptor/build = -2
		)

	siemens_coefficient = 0.2
	show_ssd = "completely quiescent"
	assisted_langs = list(LANGUAGE_NABBER)
	spawns_with_stack = 0
	slowdown = -1
	hud_type = /datum/hud_data/throom
	thirst_factor = 0.01

	min_age = 0
	max_age = 6

	meat_type = /obj/item/weapon/reagent_containers/food/snacks/hugemushroomslice
	bone_material = null
	skin_material = null

	breath_type = null
	poison_types = null

	blood_color = "#41255c"
	flesh_color = "throom"
	base_color = "throom"

	warning_low_pressure = 50
	hazard_low_pressure = 0

	cold_level_1 = 80
	cold_level_2 = 50
	cold_level_3 = -1

	heat_level_1 = 410
	heat_level_2 = 440
	heat_level_3 = 800

	has_organ = list(
		BP_EYES =  /obj/item/organ/internal/eyes/throom,
		BP_STOMACH = /obj/item/organ/internal/stomach/insectoid
		)

	has_limbs = list(
		BP_CHEST =  list("path" = /obj/item/organ/external/throom/chest),
		BP_GROIN =  list("path" = /obj/item/organ/external/throom/groin),
		BP_HEAD =   list("path" = /obj/item/organ/external/head/throom),
		BP_L_ARM =  list("path" = /obj/item/organ/external/throom/arm),
		BP_R_ARM =  list("path" = /obj/item/organ/external/throom/arm/right),
		BP_L_LEG =  list("path" = /obj/item/organ/external/throom/leg),
		BP_R_LEG =  list("path" = /obj/item/organ/external/throom/leg/right),
		BP_L_HAND = list("path" = /obj/item/organ/external/throom/hand),
		BP_R_HAND = list("path" = /obj/item/organ/external/throom/hand/right),
		BP_L_FOOT = list("path" = /obj/item/organ/external/throom/foot),
		BP_R_FOOT = list("path" = /obj/item/organ/external/throom/foot/right)
		)

	death_message = "becomes completely motionless..."
	genders = list(NEUTER)

	available_cultural_info = list(
		TAG_CULTURE =   list(CULTURE_THROOM),
		TAG_HOMEWORLD = list(HOME_SYSTEM_STATELESS),
		TAG_FACTION =   list(FACTION_OTHER),
		TAG_RELIGION =  list(RELIGION_OTHER)
	)

	base_auras = list(
		/obj/aura/regenerating/human/throom
		)

	inherent_verbs = list(
		/mob/living/carbon/human/proc/diona_heal_toggle,
		)

/datum/species/throom/New()
	equip_adjust = list(
		slot_l_hand_str = list("[NORTH]" = list("x" = 2,  "y" = -8),
							   "[EAST]"  = list("x" = 0,  "y" = -10),
							   "[SOUTH]" = list("x" = 0,  "y" = -10),
							   "[WEST]"  = list("x" = -2, "y" = -8)
						  ),
		slot_r_hand_str = list("[NORTH]" = list("x" = -2,"y" =  -8),
							   "[EAST]"  = list("x" =  0, "y" = -10),
							   "[SOUTH]" = list("x" =  0, "y" = -10),
							   "[WEST]"  = list("x" =  2, "y" = -8)
						  ),
		slot_l_ear_str = list("[NORTH]" = list("x" = -1, "y" = -13),
							  "[EAST]"  = list("x" = 0,  "y" = -13),
							  "[SOUTH]" = list("x" = 1,  "y" = -13),
							  "[WEST]"  = list("x" = 0,  "y" = -13)
						 ),
		slot_belt_str =  list("[NORTH]" = list("x" = 0, "y" = -7),
							  "[EAST]"  = list("x" = 0, "y" = -7),
							  "[SOUTH]" = list("x" = 0, "y" = -7),
							  "[WEST]"  = list("x" = 0, "y" = -7)
						 ),
	)
	..()

/proc/spawn_new_throom(var/turf/target)
	if(!istype(target))
		return 0

	//This is a terrible hack and Loaf should be ashamed
	var/datum/seed/throom = SSplants.seeds["throom"]
	if(!throom)
		return 0

	spawn(1) // So it has time to be thrown about by the gib() proc.
		var/mob/living/carbon/human/throom/T = new(target)
		var/datum/ghosttrap/plant/P = get_ghost_trap("living plant")
		P.request_player(T, "A new throom is ready to awaken. ")
		spawn(60)
			if(T)
				if(!T.ckey || !T.client)
					T.gib()
		return 1

/datum/species/throom/handle_post_spawn(var/mob/living/carbon/human/H)
	H.gender = NEUTER
	. = ..()

/datum/species/throom/get_blood_name()
	return "juice"

/datum/species/throom/handle_environment_special(var/mob/living/carbon/human/H)
	if(H.InStasis() || H.stat == DEAD)
		return

	if(H.nutrition < 10)
		H.take_overall_damage(1,0)

	if(H.hydration < 550 && H.loc)
		var/is_in_water = FALSE
		if(H.loc.is_flooded(lying_mob = TRUE))
			is_in_water = TRUE
		else
			for(var/obj/structure/hygiene/shower/shower in H.loc)
				if(shower.on)
					is_in_water = TRUE
					break
		if(is_in_water)
			H.adjust_hydration(100)

/datum/species/throom/equip_survival_gear(var/mob/living/carbon/human/H)
	return

/datum/species/throom/handle_death(var/mob/living/carbon/human/H)
	..()
	var/obj/item/seeds/throom/N = new(get_turf(H))
	H.visible_message("<span class='danger'>\The [H] spews a small number of [N].</span>")
	return 1
