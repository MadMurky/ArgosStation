/datum/job/qm
	title = "Quartermaster"
	department = "Supply"
	department_flag = SUP
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Executive Officer and the Civilian Administrator"
	economic_power = 5
	minimal_player_age = 0
	minimum_character_age = list(SPECIES_HUMAN = 27)
	ideal_character_age = 35
	alt_titles = list(
		"Deck Chief")
	outfit_type = /decl/hierarchy/outfit/job/argos/crew/supply/qm
	allowed_branches = list(/datum/mil_branch/argos)
	allowed_ranks = list (/datum/mil_rank/argos/crew)

	min_skill = list(   SKILL_BUREAUCRACY = SKILL_ADEPT,
	                    SKILL_FINANCE     = SKILL_BASIC,
	                    SKILL_HAULING     = SKILL_BASIC,
	                    SKILL_EVA         = SKILL_BASIC,
	                    SKILL_PILOT       = SKILL_BASIC)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX)
	skill_points = 18

	access = list(access_maint_tunnels, access_bridge, access_emergency_storage, access_tech_storage,  access_cargo, access_brummbaer, access_brummbaer_helm, access_cargo_bot,
			 access_qm, access_mailsorting, access_mining, access_mining_office, access_mining_station, access_teleporter, access_eva)
	minimal_access = list()

	software_on_spawn = list(/datum/computer_file/program/supply,
							 /datum/computer_file/program/deck_management,
							 /datum/computer_file/program/reports)

/datum/job/qm/get_description_blurb()
	return "You are the Quartermaster. You are responsible for cargo orders processed through the Argos's automated supply drone system, as well as the maintenance and refuelling of all shuttles aboard the vessel. You answer directly to the Executive Officer, but are considered under the domain of the Civilian Administrator as well."

/datum/job/cargo_tech
	title = "Cargo Technician"
	department = "Supply"
	department_flag = SUP
	total_positions = 3
	spawn_positions = 3
	supervisors = "the Quartermaster and Civilian Administrator"
	minimum_character_age = list(SPECIES_HUMAN = 18)
	ideal_character_age = 24
	outfit_type = /decl/hierarchy/outfit/job/argos/crew/supply/cargotech
	allowed_branches = list(/datum/mil_branch/argos)
	allowed_ranks = list (/datum/mil_rank/argos/crew)

	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_FINANCE     = SKILL_BASIC,
	                    SKILL_HAULING     = SKILL_BASIC)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX)

	access = list(access_maint_tunnels, access_emergency_storage, access_cargo, access_brummbaer, access_cargo_bot, access_mailsorting, access_medea)
	minimal_access = list()

	software_on_spawn = list(/datum/computer_file/program/supply,
							 /datum/computer_file/program/deck_management,
							 /datum/computer_file/program/reports)

/datum/job/cargo_tech/get_description_blurb()
	return "You are a Cargo Technician. Your job is the processing and delivery of cargo orders, as well as the maintenance and refuelling of shuttles. You answer to the Quartermaster."


/datum/job/mining
	title = "Prospector"
	department = "Supply"
	department_flag = SUP
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Quartermaster and the Civilian Administrator"
	economic_power = 7
	minimum_character_age = list(SPECIES_HUMAN = 18)
	ideal_character_age = 25
	outfit_type = /decl/hierarchy/outfit/job/argos/crew/supply/prospector
	alt_titles = list(
		"Drill Technician",
		"Shaft Miner",
		"Salvage Technician")
	allowed_branches = list(/datum/mil_branch/argos)
	allowed_ranks = list (/datum/mil_rank/argos/crew)
	min_skill = list(   SKILL_HAULING = SKILL_ADEPT,
	                    SKILL_EVA     = SKILL_BASIC)

	max_skill = list(   SKILL_PILOT   = SKILL_MAX)
	access = list(access_mining, access_mining_office, access_mining_station, access_brummbaer, access_brummbaer_helm, access_cargo, access_eva)
	minimal_access = list()

/datum/job/mining/get_description_blurb()
	return "You are a Prospector. Your job is mining and salvage to gain more raw materials and items that are useful to the Argos. You answer to the Quartermaster."


