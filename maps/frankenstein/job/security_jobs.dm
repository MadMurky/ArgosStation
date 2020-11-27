/datum/job/warden
	title = "Warden"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Head of Security"
	economic_power = 5
	minimal_player_age = 7
	ideal_character_age = 35
	alt_titles = list(
		"Brig Chief")
	outfit_type = /decl/hierarchy/outfit/job/argos/crew/security/warden
	minimum_character_age = list(SPECIES_HUMAN = 27)
	allowed_branches = list(/datum/mil_branch/argos)
	allowed_ranks = list (/datum/mil_rank/argos/crew)

	min_skill = list(   SKILL_BUREAUCRACY = SKILL_ADEPT,
	                    SKILL_EVA         = SKILL_BASIC,
	                    SKILL_COMBAT      = SKILL_BASIC,
	                    SKILL_WEAPONS     = SKILL_ADEPT,
	                    SKILL_FORENSICS   = SKILL_BASIC)

	max_skill = list(   SKILL_COMBAT      = SKILL_MAX,
	                    SKILL_WEAPONS     = SKILL_MAX,
	                    SKILL_FORENSICS   = SKILL_MAX)
	skill_points = 20

	access = list(access_security, access_brig, access_armory, access_forensics_lockers,
			            access_maint_tunnels, access_external_airlocks, access_emergency_storage,
			            access_eva, access_sec_doors, access_bfg)
	minimal_access = list()

	software_on_spawn = list(/datum/computer_file/program/digitalwarrant,
							 /datum/computer_file/program/camera_monitor)

/datum/job/warden/get_description_blurb()
	return "You are the Warden. Your primary responsibility is the maintenance and security of the Brig and any prisoners, as well as the Security Armory. You should also act as the Head of Security's right hand, helping to coordinate Security Officers in the field."

/datum/job/detective
	title = "Forensic Technician"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Chief of Security"
	economic_power = 5
	minimal_player_age = 7
	minimum_character_age = list(SPECIES_HUMAN = 25)
	ideal_character_age = 35
	skill_points = 14
	alt_titles = list(
		"Criminal Investigator",
		"Psionic Investigator"
	)
	outfit_type = /decl/hierarchy/outfit/job/argos/crew/security/forensic_tech
	allowed_branches = list(/datum/mil_branch/argos)
	allowed_ranks = list (/datum/mil_rank/argos/crew)

	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_COMPUTER    = SKILL_BASIC,
	                    SKILL_EVA         = SKILL_BASIC,
	                    SKILL_COMBAT      = SKILL_BASIC,
	                    SKILL_WEAPONS     = SKILL_BASIC,
	                    SKILL_FORENSICS   = SKILL_ADEPT)

	max_skill = list(   SKILL_COMBAT      = SKILL_MAX,
	                    SKILL_WEAPONS     = SKILL_MAX,
	                    SKILL_FORENSICS   = SKILL_MAX)
	skill_points = 20

	access = list(access_security, access_brig, access_forensics_lockers,
			            access_maint_tunnels, access_emergency_storage,
			            access_sec_doors, access_morgue)
	minimal_access = list()
	software_on_spawn = list(/datum/computer_file/program/digitalwarrant,
							 /datum/computer_file/program/camera_monitor)

/datum/job/detective/equip(var/mob/living/carbon/human/H)
	if(H.mind.role_alt_title == "Psionic Investigator")
		psi_faculties = list("[PSI_COERCION]" = PSI_RANK_OPERANT)

/datum/job/detective/get_description_blurb()
	return "You are the Forensic Technician. Your job is to investigate breaches of the Argos Charter, and ensure that the guilty parties are brought to justice."

/datum/job/officer
	title = "Security Officer"
	total_positions = 4
	spawn_positions = 4
	supervisors = "the Head of Security and the Warden"
	economic_power = 4
	minimal_player_age = 7
	minimum_character_age = list(SPECIES_HUMAN = 18)
	ideal_character_age = 25
	outfit_type = /decl/hierarchy/outfit/job/argos/crew/security/officer
	allowed_branches = list(/datum/mil_branch/argos)
	allowed_ranks = list (/datum/mil_rank/argos/crew)

	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_EVA         = SKILL_BASIC,
	                    SKILL_COMBAT      = SKILL_BASIC,
	                    SKILL_WEAPONS     = SKILL_ADEPT,
	                    SKILL_FORENSICS   = SKILL_BASIC)

	max_skill = list(   SKILL_COMBAT      = SKILL_MAX,
	                    SKILL_WEAPONS     = SKILL_MAX,
	                    SKILL_FORENSICS   = SKILL_MAX)

	access = list(access_security, access_brig, access_maint_tunnels,
						access_external_airlocks, access_emergency_storage,
			            access_eva, access_sec_doors)
	minimal_access = list()

	software_on_spawn = list(/datum/computer_file/program/digitalwarrant,
							 /datum/computer_file/program/camera_monitor)

/datum/job/officer/get_description_blurb()
	return "You are a Security Officer. Your job is to arrest and process violators of the Argos Charter, as well as defending the vessel from any external threats."