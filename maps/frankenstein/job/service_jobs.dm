/datum/job/chaplain
	title = "Chaplain"
	department = "Service"
	department_flag = SRV
	total_positions = 1
	spawn_positions = 1
	minimum_character_age = list(SPECIES_HUMAN = 24)
	ideal_character_age = 40
	economic_power = 5
	minimal_player_age = 0
	supervisors = "the Civilian Administrator"
	outfit_type = /decl/hierarchy/outfit/job/argos/crew/service/chaplain
	allowed_branches = list(/datum/mil_branch/argos)
	allowed_ranks = list (/datum/mil_rank/argos/crew)
	min_skill = list(SKILL_BUREAUCRACY = SKILL_BASIC)
	access = list(access_morgue, access_chapel_office, access_crematorium)
	minimal_access = list()

/datum/job/chaplain/get_description_blurb()
	return "You are the Chaplain. You are responsible for religous matters aboard the Argos, as well as the spiritual wellbeing of her crew."

/datum/job/janitor
	title = "Sanitation Technician"
	department = "Service"
	department_flag = SRV
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Civilian Administrator"
	minimum_character_age = list(SPECIES_HUMAN = 18)
	ideal_character_age = 20
	alt_titles = list(
		"Janitor")
	outfit_type = /decl/hierarchy/outfit/job/argos/crew/service/janitor
	allowed_branches = list(/datum/mil_branch/argos)
	allowed_ranks = list (/datum/mil_rank/argos/crew)
	min_skill = list(   SKILL_HAULING = SKILL_BASIC)

	access = list(access_maint_tunnels, access_emergency_storage, access_janitor)
	minimal_access = list()

/datum/job/janitor/get_description_blurb()
	return "You are the Janitor. Your job is to clean any messes on the Argos, as well as performing basic maintenance such as replacing lights and unclogging sinks."

/datum/job/chef
	title = "Cook"
	department = "Service"
	department_flag = SRV
	total_positions = 1
	spawn_positions = 1
	minimum_character_age = list(SPECIES_HUMAN = 18)
	supervisors = "the Civilian Administrator"
	alt_titles = list(
		"Chef",
		"Culinary Specialist"
		)
	allowed_branches = list(/datum/mil_branch/argos)
	allowed_ranks = list (/datum/mil_rank/argos/crew)
	outfit_type = /decl/hierarchy/outfit/job/argos/crew/service/cook
	min_skill = list(   SKILL_COOKING   = SKILL_ADEPT,
	                    SKILL_BOTANY    = SKILL_BASIC,
	                    SKILL_CHEMISTRY = SKILL_BASIC)
	access = list(access_hydroponics, access_kitchen, access_bar)
	minimal_access = list()

/datum/job/bartender
	department = "Service"
	department_flag = SRV
	supervisors = "the Civilian Administrator"
	minimum_character_age = list(SPECIES_HUMAN = 18)
	ideal_character_age = 30
	outfit_type = /decl/hierarchy/outfit/job/argos/crew/service/bartender
	allowed_branches = list(/datum/mil_branch/argos)
	allowed_ranks = list (/datum/mil_rank/argos/crew)
	alt_titles = list(
		"Barista"
		)
	access = list(access_hydroponics, access_bar, access_kitchen)
	minimal_access = list()
	min_skill = list(   SKILL_COOKING   = SKILL_BASIC,
	                    SKILL_BOTANY    = SKILL_BASIC,
	                    SKILL_CHEMISTRY = SKILL_BASIC)

