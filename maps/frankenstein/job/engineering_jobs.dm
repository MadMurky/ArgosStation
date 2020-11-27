/datum/job/senioreng
	title = "Senior Engineer"
	department = "Engineering"
	department_flag = ENG
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Chief Engineer"
	selection_color = "#5b4d20"
	economic_power = 6
	minimal_player_age = 3
	minimum_character_age = list(SPECIES_HUMAN = 27)
	ideal_character_age = 40
	outfit_type = /decl/hierarchy/outfit/job/argos/crew/engineering/senior_engineer
	allowed_branches = list(/datum/mil_branch/argos)
	allowed_ranks = list (/datum/mil_rank/argos/crew)
	min_skill = list(   SKILL_COMPUTER     = SKILL_BASIC,
	                    SKILL_EVA          = SKILL_ADEPT,
	                    SKILL_CONSTRUCTION = SKILL_ADEPT,
	                    SKILL_ELECTRICAL   = SKILL_ADEPT,
	                    SKILL_ATMOS        = SKILL_BASIC,
	                    SKILL_ENGINES      = SKILL_ADEPT)

	max_skill = list(   SKILL_CONSTRUCTION = SKILL_MAX,
	                    SKILL_ELECTRICAL   = SKILL_MAX,
	                    SKILL_ATMOS        = SKILL_MAX,
	                    SKILL_ENGINES      = SKILL_MAX)
	skill_points = 24

	access = list(access_engine, access_engine_equip, access_maint_tunnels, access_external_airlocks, access_emergency_storage,
			            access_teleporter, access_eva, access_tech_storage, access_atmospherics, access_janitor, access_construction,
			            access_tcomsat)
	minimal_access = list()

	software_on_spawn = list(/datum/computer_file/program/comm,
						 /datum/computer_file/program/suit_sensors,
						 /datum/computer_file/program/power_monitor,
						 /datum/computer_file/program/supermatter_monitor,
						 /datum/computer_file/program/alarm_monitor,
						 /datum/computer_file/program/camera_monitor,
						 /datum/computer_file/program/shields_monitor,
						 /datum/computer_file/program/reports,
						 /datum/computer_file/program/deck_management)

/datum/job/senioreng/get_description_blurb()
	return "You are the Senior Engineer. You are a veteran engineer and second-in-command of the Engineering Department. You are subordinate to the Chief Engineer though you may have many years more experience than them and your subordinates are the rest of engineering. You should be an expert in practically every engineering area and familiar and possess leadership skills. Coordinate the team and ensure the smooth running of the department along with the Chief Engineer."

/datum/job/engineer
	title = "Engineer"
	total_positions = 6
	spawn_positions = 6
	supervisors = "the Chief Engineer and Senior Engineer"
	economic_power = 5
	minimal_player_age = 0
	minimum_character_age = list(SPECIES_HUMAN = 19)
	ideal_character_age = 30
	alt_titles = list(
		"Engine Technician",
		"Damage Control Technician",
		"Electrician",
		"Atmospheric Technician",
		)
	outfit_type = /decl/hierarchy/outfit/job/argos/crew/engineering/engineer
	allowed_branches = list(/datum/mil_branch/argos)
	allowed_ranks = list (/datum/mil_rank/argos/crew)

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

	access = list(access_engine, access_engine_equip, access_maint_tunnels, access_external_airlocks, access_emergency_storage,
			            access_teleporter, access_eva, access_tech_storage, access_atmospherics, access_janitor, access_construction)
	minimal_access = list()

	software_on_spawn = list(/datum/computer_file/program/power_monitor,
							 /datum/computer_file/program/supermatter_monitor,
							 /datum/computer_file/program/alarm_monitor,
							 /datum/computer_file/program/atmos_control,
							 /datum/computer_file/program/rcon_console,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/shields_monitor)

/datum/job/engineer/get_description_blurb()
	return "You are an Engineer. You operate under one of many titles and may be highly specialised in a specific area of engineering. You probably have at least a general familiarity with most other areas though this is not expected. You are subordinate to the Senior Engineer and the Chief Engineer and are expected to follow them."

/datum/job/engineer_trainee
	title = "Engineer Trainee"
	department = "Engineering"
	department_flag = ENG
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Chief Engineer and Engineering Personnel"
	selection_color = "#5b4d20"
	minimum_character_age = list(SPECIES_HUMAN = 18)
	ideal_character_age = 20
	outfit_type = /decl/hierarchy/outfit/job/argos/crew/engineering/engineer
	allowed_branches = list(/datum/mil_branch/argos)
	allowed_ranks = list (/datum/mil_rank/argos/crew)

	skill_points = 4
	no_skill_buffs = TRUE

	min_skill = list(   SKILL_COMPUTER     = SKILL_BASIC,
	                    SKILL_HAULING      = SKILL_ADEPT,
	                    SKILL_EVA          = SKILL_ADEPT,
	                    SKILL_CONSTRUCTION = SKILL_ADEPT,
	                    SKILL_ELECTRICAL   = SKILL_ADEPT,
	                    SKILL_ATMOS        = SKILL_ADEPT,
	                    SKILL_ENGINES      = SKILL_ADEPT)

	max_skill = list(   SKILL_CONSTRUCTION = SKILL_MAX,
	                    SKILL_ELECTRICAL   = SKILL_MAX,
	                    SKILL_ATMOS        = SKILL_MAX,
	                    SKILL_ENGINES      = SKILL_MAX)

	access = list(access_engine_equip, access_maint_tunnels, access_external_airlocks, access_emergency_storage,
		            access_eva, access_tech_storage, access_janitor, access_construction)

	software_on_spawn = list(/datum/computer_file/program/power_monitor,
							 /datum/computer_file/program/supermatter_monitor,
							 /datum/computer_file/program/alarm_monitor,
							 /datum/computer_file/program/atmos_control,
							 /datum/computer_file/program/rcon_console,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/shields_monitor)

/datum/job/engineer_trainee/get_description_blurb()
	return "You are an Engineer Trainee. You are learning how to operate the various onboard engineering systems from senior engineering staff. You are subordinate to all of the other engineers aboard."