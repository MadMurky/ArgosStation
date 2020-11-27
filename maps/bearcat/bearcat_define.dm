/datum/map/bearcat
	name = "Bearcat"
	full_name = "Bearcat"
	path = "overmap_example"

	station_name  = "FTV Bearcat"
	station_short = "Bearcat"

	dock_name     = "FTS Capitalist's Rest"
	boss_name     = "FTU Merchant Navy"
	boss_short    = "Merchant Admiral"
	company_name  = "Legit Cargo Ltd."
	company_short = "LC"
	overmap_size = 30
	overmap_event_areas = 25

	default_law_type = /datum/ai_laws/corporate

	evac_controller_type = /datum/evacuation_controller/starship
	lobby_screens = list('maps/bearcat/lobby/bloodmoney.png','maps/bearcat/lobby/vapormoney.png')

	allowed_spawns = list("Cryogenic Storage")
	default_spawn = "Cryogenic Storage"
	use_overmap = 1
	num_exoplanets = 2
	welcome_sound = 'sound/effects/cowboysting.ogg'

	emergency_shuttle_leaving_dock = "Attention all hands: the escape pods have been launched, maintaining burn for %ETA%."
	emergency_shuttle_called_message = "Attention all hands: emergency evacuation procedures are now in effect. Escape pods will launch in %ETA%"
	emergency_shuttle_called_sound = sound('sound/AI/torch/abandonship.ogg', volume = 45)
	emergency_shuttle_recall_message = "Attention all hands: emergency evacuation sequence aborted. Return to normal operating conditions."

	starting_money = 5000
	department_money = 0
	salary_modifier = 0.2
	away_site_budget = 3
	id_hud_icons = 'maps/bearcat/icons/assignment_hud.dmi'

/datum/map/bearcat/get_map_info()
	return "You're aboard the <b>[station_name],</b> an independent vessel affiliated with Free Trade Union, on a SPACE FRONTIER. \
	It has been sixteen years since most bluespace drives have failed, leaving many sectors cut off and/or abandoned by major powers. \
	This is one such sector, so its exploitation is entirely up to you - mine, poach and deforest all you want."

/datum/map/bearcat/setup_map()
	..()
	SStrade.traders += new /datum/trader/xeno_shop
	SStrade.traders += new /datum/trader/medical
	SStrade.traders += new /datum/trader/mining