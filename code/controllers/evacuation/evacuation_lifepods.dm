#define EVAC_OPT_ABANDON_SHIP "abandon_ship"
#define EVAC_OPT_BLUESPACE_JUMP "bluespace_jump"
#define EVAC_OPT_CANCEL_ABANDON_SHIP "cancel_abandon_ship"
#define EVAC_OPT_CANCEL_BLUESPACE_JUMP "cancel_bluespace_jump"

/datum/evacuation_controller/lifepods
	name = "escape pod controller"

	evac_prep_delay    = 7 MINUTES
	evac_launch_delay  = 0
	evac_transit_delay = 2 MINUTES

	evacuation_options = list(
		EVAC_OPT_ABANDON_SHIP = new /datum/evacuation_option/abandon_ship(),
		EVAC_OPT_BLUESPACE_JUMP = new /datum/evacuation_option/bluespace_jump(),
		EVAC_OPT_CANCEL_ABANDON_SHIP = new /datum/evacuation_option/cancel_abandon_ship(),
		EVAC_OPT_CANCEL_BLUESPACE_JUMP = new /datum/evacuation_option/cancel_bluespace_jump()
	)

/datum/evacuation_controller/lifepods/launch_evacuation()
	priority_announcement.Announce(replacetext(replacetext(GLOB.using_map.emergency_shuttle_leaving_dock, "%dock_name%", "[GLOB.using_map.dock_name]"),  "%ETA%", "[round(get_eta()/60,1)] minute\s"))

/datum/evacuation_controller/lifepods/available_evac_options()
	if (is_on_cooldown())
		return list()
	if (is_idle())
		return list(evacuation_options[EVAC_OPT_ABANDON_SHIP])
	if (emergency_evacuation)
		return list(evacuation_options[EVAC_OPT_CANCEL_ABANDON_SHIP])
	else
		// Bluespace Jump
		priority_announcement.Announce(replacetext(replacetext(GLOB.using_map.shuttle_leaving_dock, "%dock_name%", "[GLOB.using_map.dock_name]"),  "%ETA%", "[round(get_eta()/60,1)] minute\s"))
		SetUniversalState(/datum/universal_state/bluespace_jump, arguments=list(GLOB.using_map.station_levels))

/datum/evacuation_controller/lifepods/finish_evacuation()
	..()
	if(!emergency_evacuation) //bluespace jump
		SetUniversalState(/datum/universal_state) //clear jump state

/datum/evacuation_option/bluespace_jump
	option_text = "Initiate crew transfer"
	option_desc = "initiate a crew transfer"
	option_target = EVAC_OPT_BLUESPACE_JUMP
	needs_syscontrol = TRUE
	silicon_allowed = TRUE

/datum/evacuation_option/bluespace_jump/execute(mob/user)
	if (!evacuation_controller)
		return
	if (evacuation_controller.deny)
		to_chat(user, "Unable to initiate jump preparation.")
		return
	if (evacuation_controller.is_on_cooldown())
		to_chat(user, evacuation_controller.get_cooldown_message())
		return
	if (evacuation_controller.is_evacuating())
		to_chat(user, "Transfer preparation already in progress.")
		return
	if (evacuation_controller.call_evacuation(user, 0))
		log_and_message_admins("[user? key_name(user) : "Autotransfer"] has initiated crew transfer preparation.")

/datum/evacuation_option/cancel_bluespace_jump
	option_text = "Cancel crew transfer"
	option_desc = "cancel the transfer preparation"
	option_target = EVAC_OPT_CANCEL_BLUESPACE_JUMP
	needs_syscontrol = TRUE
	silicon_allowed = FALSE

/datum/evacuation_option/cancel_bluespace_jump/execute(mob/user)
	if (evacuation_controller && evacuation_controller.cancel_evacuation())
		log_and_message_admins("[key_name(user)] has cancelled the crew transfer.")

#undef EVAC_OPT_ABANDON_SHIP
#undef EVAC_OPT_BLUESPACE_JUMP
#undef EVAC_OPT_CANCEL_ABANDON_SHIP
#undef EVAC_OPT_CANCEL_BLUESPACE_JUMP