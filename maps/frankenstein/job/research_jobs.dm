/datum/job/scientist
	title = "Scientist"
	total_positions = 6
	spawn_positions = 6
	supervisors = "the Research Director"
	selection_color = "#633d63"
	economic_power = 10
	minimum_character_age = list(SPECIES_HUMAN = 25)
	ideal_character_age = 45
	minimal_player_age = 0
	outfit_type = /decl/hierarchy/outfit/job/argos/crew/research/scientist
	alt_titles = list(
		"Xenoarcheologist",
		"Anomalist",
		"Researcher",
		"Xenobiologist",
		"Xenobotanist"
	)
	allowed_branches = list(/datum/mil_branch/argos)
	allowed_ranks = list (/datum/mil_rank/argos/crew)

	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_COMPUTER    = SKILL_BASIC,
	                    SKILL_DEVICES     = SKILL_BASIC,
	                    SKILL_CHEMISTRY   = SKILL_BASIC,
	                    SKILL_SCIENCE     = SKILL_ADEPT)

	max_skill = list(   SKILL_ANATOMY     = SKILL_MAX,
	                    SKILL_DEVICES     = SKILL_MAX,
	                    SKILL_SCIENCE     = SKILL_MAX)

	access = list(access_tox, access_tox_storage, access_research, access_mining_office, access_mining_station, access_xenobiology,
						access_xenoarch, access_medea, access_medea_helm)
	minimal_access = list()
	skill_points = 20

/datum/job/scientist/get_description_blurb()
	return "You are a Scientist. You work in the Research Department aboard the Argos, working on developing new technologies to work to the benefit of the vessel and her crew. You are likely highly specialised in a certain field. You answer to the Research Director."


/datum/job/roboticist
	department = "Science"
	department_flag = SCI
	total_positions = 2
	spawn_positions = 2
	minimal_player_age = 0
	minimum_character_age = list(SPECIES_HUMAN = 25)
	supervisors = "the Research Director"
	selection_color = "#633d63"
	economic_power = 6
	outfit_type = /decl/hierarchy/outfit/job/argos/crew/research/roboticist
	alt_titles = list(
		"Mechsuit Technician",
		"Biomechanical Engineer")
	allowed_branches = list(/datum/mil_branch/argos)
	allowed_ranks = list (/datum/mil_rank/argos/crew)
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
	skill_points = 20

	access = list(access_research, access_robotics, access_maint_tunnels, access_medical)
	minimal_access = list()

/datum/job/roboticist/get_description_blurb()
	return "You are the Roboticist. You are responsible for the development of new robots and exosuits, as well as the repair of cybernetics, robots and IPCs aboard the Argos."

/datum/job/scientist_assistant
	title = "Research Assistant"
	department = "Science"
	department_flag = SCI
	total_positions = 4
	spawn_positions = 4
	supervisors = "the Research Director and science personnel"
	selection_color = "#633d63"
	economic_power = 3
	minimum_character_age = list(SPECIES_HUMAN = 18)
	ideal_character_age = 30
	allowed_branches = list(/datum/mil_branch/argos)
	allowed_ranks = list (/datum/mil_rank/argos/crew)
	outfit_type = /decl/hierarchy/outfit/job/argos/crew/research
	alt_titles = list(
		"Custodian" = /decl/hierarchy/outfit/job/argos/crew/research/janitor,
		"Testing Assistant" = /decl/hierarchy/outfit/job/argos/crew/research/testsubject,
		"Clerk",
		"Field Assistant")

	max_skill = list(   SKILL_ANATOMY     = SKILL_MAX,
	                    SKILL_DEVICES     = SKILL_MAX,
	                    SKILL_SCIENCE     = SKILL_MAX)

	access = list(access_tox, access_tox_storage, access_research, access_mining_office, access_mining_station, access_xenobiology,
						access_xenoarch, access_medea, access_medea_helm)

/datum/job/scientist_assistant/get_description_blurb()
	return "You are a Research Assistant. Your job is to assist the Explorers, Research Director and Scientists in their experiments."

/datum/job/chiefexplorer
	title = "Chief Explorer"
	department = "Science"
	department_flag = SCI
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Research Director"
	selection_color = "#68099e"
	minimal_player_age = 1
	economic_power = 7
	minimum_character_age = list(SPECIES_HUMAN = 25)
	ideal_character_age = 35
	outfit_type = /decl/hierarchy/outfit/job/argos/crew/research/explo/chief
	allowed_branches = list(/datum/mil_branch/argos)
	allowed_ranks = list (/datum/mil_rank/argos/crew)

	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_EVA         = SKILL_ADEPT,
	                    SKILL_SCIENCE     = SKILL_ADEPT,
	                    SKILL_PILOT       = SKILL_BASIC)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX,
	                    SKILL_SCIENCE     = SKILL_MAX,
	                    SKILL_COMBAT      = SKILL_EXPERT,
	                    SKILL_WEAPONS     = SKILL_EXPERT)
	skill_points = 22

	access = list(access_tox, access_tox_storage, access_research, access_mining_office, access_mining_station, access_xenobiology,
						access_xenoarch, access_medea, access_medea_helm, access_explo)

	software_on_spawn = list(/datum/computer_file/program/deck_management,
							 /datum/computer_file/program/reports)

/datum/job/chiefexplorer/get_description_blurb()
	return "You are the Chief Explorer. Your duty is to organize and lead the expeditions to away sites for anything of scientific interest to the research team aboard the Argos. You command Explorers. You make sure that expedition has the supplies and personnel it needs. You can pilot the Medea if nobody else provides a pilot."

/datum/job/explorer
	title = "Explorer"
	department = "Science"
	department_flag = SCI
	total_positions = 5
	spawn_positions = 5
	supervisors = "the Chief Explorer, Research Director and Scientists"
	selection_color = "#68099e"
	minimum_character_age = list(SPECIES_HUMAN = 18)
	ideal_character_age = 20
	outfit_type = /decl/hierarchy/outfit/job/argos/crew/research/explo
	allowed_branches = list(/datum/mil_branch/argos)
	allowed_ranks = list (/datum/mil_rank/argos/crew)

	min_skill = list(   SKILL_EVA = SKILL_BASIC,
						SKILL_SCIENCE = SKILL_BASIC,
						SKILL_COMBAT = SKILL_BASIC)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX,
	                    SKILL_SCIENCE     = SKILL_MAX,
	                    SKILL_COMBAT      = SKILL_EXPERT,
	                    SKILL_WEAPONS     = SKILL_EXPERT)

	access = list(access_explo, access_maint_tunnels, access_eva, access_emergency_storage, access_research, access_medea, access_xenoarch)

/datum/job/explorer/get_description_blurb()
	return "You are an Explorer - a field researcher for the Argos. Your duty is to embark on expeditions to away sites and retrieve anything of scientific value to the vessel. You will also likely encounter hazardous environments, aggressive wildlife or malfunctioning defense systems, so tread carefully."

/datum/job/scipilot
	title = "Research Pilot"
	department = "Science"
	department_flag = SCI
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Chief Explorer and Research Director"
	selection_color = "#68099e"
	economic_power = 10
	minimal_player_age = 0
	minimum_character_age = list(SPECIES_HUMAN = 24)
	ideal_character_age = 25
	outfit_type = /decl/hierarchy/outfit/job/argos/crew/research/pilot
	allowed_branches = list(/datum/mil_branch/argos)
	allowed_ranks = list (/datum/mil_rank/argos/crew)

	min_skill = list(	SKILL_EVA   = SKILL_BASIC,
						SKILL_PILOT = SKILL_ADEPT)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX,
	                    SKILL_SCIENCE     = SKILL_MAX)

	access = list(access_research, access_explo, access_eva, access_emergency_storage, access_medea, access_maint_tunnels)

/datum/job/scipilot/get_description_blurb()
	return "You are the Research Pilot. Your job is to pilot the NTRV Medea to away sites and provide assistance and support to the Chief Explorer and Explorers on the mission."