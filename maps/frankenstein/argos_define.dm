/datum/map/argos
	name = "Argos"
	path = "argos"

	flags = MAP_HAS_BRANCH | MAP_HAS_RANK
	config_path = "config/torch_config.txt"

	admin_levels = list(6, 7)
	empty_levels = list(8)
	accessible_z_levels = list("1"=1,"2"=3,"3"=1,"4"=1,"5"=1, "9"=30)

	overmap_size = 35
	overmap_event_areas = 34
	usable_email_tlds = list("argos.net")

	allowed_spawns = list("Cryogenic Storage", "Cyborg Storage", "Dormitory")
	default_spawn = "Cryogenic Storage"

	station_name  = "Argos"
	station_short = "Argos"
	dock_name     = "Moghes Beacon"
	boss_name     = "Argos Command"
	boss_short    = "Command"
	company_name  = "Argos Automated Alert"
	company_short = "Argos"

	map_admin_faxes = list(
		"Moghes Beacon Administration",
		"OSI Territory Support",
		"OSI Special Investigations",
		"OSI Fugitive Recovery",
		"Sol-Ceti Fleet Mars Commmand",
		"Emergency Management Bureau",
		"Secure Routing Service"
	)

	shuttle_docked_message = "Attention all hands: Jump preparation complete. The bluespace drive is now spooling up, secure all stations for departure. Time to jump: approximately %ETD%."
	shuttle_leaving_dock = "Attention all hands: Jump initiated, exiting bluespace in %ETA%."
	shuttle_called_message = "Attention all hands: Jump sequence initiated. Transit procedures are now in effect. Jump in %ETA%."
	shuttle_recall_message = "Attention all hands: Jump sequence aborted, return to normal operating conditions."

	evac_controller_type = /datum/evacuation_controller/starship

	use_overmap = 1
	num_exoplanets = 1

	away_site_budget = 3
	id_hud_icons = 'maps/torch/icons/assignment_hud.dmi'