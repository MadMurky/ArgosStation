/datum/job/captain
	title = "Captain"
	supervisors = "The good will of your Heads of Staff"
	minimal_player_age = 14
	economic_power = 15
	minimum_character_age = list(SPECIES_HUMAN = 40)
	ideal_character_age = 50
	outfit_type = /decl/hierarchy/outfit/job/argos/crew/command/captain
	allowed_branches = list(/datum/mil_branch/argos)
	allowed_ranks = list (/datum/mil_rank/argos/cap)

	min_skill = list(SKILL_BUREAUCRACY = SKILL_ADEPT,
	                 SKILL_PILOT       = SKILL_ADEPT,
	                 SKILL_SCIENCE     = SKILL_ADEPT)

	skill_points = 30

	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/card_mod,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/reports)

/datum/job/captain/get_description_blurb()
	return "You are the Captain. You are the top dog. You are an experienced professional officer who has managed to win the confidence of their crew, and ultimately responsible for all that happens onboard. Your job is to make sure [GLOB.using_map.full_name] fulfils its space exploration mission. Delegate to your Executive Officer and your Heads of Staffto effectively manage the ship, and listen to and trust their expertise."

/datum/job/captain/post_equip_rank(var/mob/person, var/alt_title)
	var/sound/announce_sound = (GAME_STATE <= RUNLEVEL_SETUP)? null : sound('sound/misc/boatswain.ogg', volume=20)
	captain_announcement.Announce("All hands, [alt_title || title] [person.real_name] on deck!", new_sound = announce_sound)
	..()

/datum/job/hop
	title = "Executive Officer"
	supervisors = "the Captain"
	department = "Command"
	department_flag = COM
	minimal_player_age = 14
	economic_power = 10
	minimum_character_age = list(SPECIES_HUMAN = 35)
	ideal_character_age = 45
	outfit_type = /decl/hierarchy/outfit/job/argos/crew/command/hop
	allowed_branches = list(/datum/mil_branch/argos)
	allowed_ranks = list (/datum/mil_rank/argos/head)

	min_skill = list(SKILL_BUREAUCRACY = SKILL_ADEPT,
	                  SKILL_COMPUTER    = SKILL_BASIC,
	                  SKILL_PILOT       = SKILL_BASIC)

	max_skill = list(SKILL_PILOT       = SKILL_MAX,
					 SKILL_SCIENCE     = SKILL_MAX)
	skill_points = 30

	access = list(access_security, access_brig, access_armory, access_forensics_lockers, access_heads, access_medical, access_morgue, access_tox, access_tox_storage,
					access_engine, access_engine_equip, access_maint_tunnels, access_external_airlocks, access_emergency_storage, access_change_ids,
					access_ai_upload, access_teleporter, access_eva, access_bridge, access_all_personal_lockers, access_chapel_office, access_tech_storage,
					access_atmospherics, access_bar, access_janitor, access_crematorium, access_kitchen, access_robotics, access_cargo, access_construction,
					access_chemistry, access_cargo_bot, access_hydroponics, access_manufacturing, access_library, access_lawyer, access_virology, access_cmo,
					access_qm, access_network, access_surgery, access_research, access_mining, access_mining_office, access_mailsorting, access_heads_vault,
					access_mining_station, access_xenobiology, access_ce, access_hop, access_hos, access_RC_announce, access_keycard_auth, access_tcomsat,
					access_gateway, access_sec_doors, access_psychiatrist, access_xenoarch, access_medical_equip, access_heads, access_brummbaer, access_brummbaer_helm,
					access_medea, access_medea_helm, access_civadmin, access_psiadv, access_bfg, access_explo, access_scipilot)

	minimal_access = list(access_security, access_brig, access_armory, access_forensics_lockers, access_heads, access_medical, access_morgue, access_tox, access_tox_storage,
					access_engine, access_engine_equip, access_maint_tunnels, access_external_airlocks, access_emergency_storage, access_change_ids,
					access_ai_upload, access_teleporter, access_eva, access_bridge, access_all_personal_lockers, access_chapel_office, access_tech_storage,
					access_atmospherics, access_bar, access_janitor, access_crematorium, access_kitchen, access_robotics, access_cargo, access_construction,
					access_chemistry, access_cargo_bot, access_hydroponics, access_manufacturing, access_library, access_lawyer, access_virology, access_cmo,
					access_qm, access_network, access_surgery, access_research, access_mining, access_mining_office, access_mailsorting, access_heads_vault,
					access_mining_station, access_xenobiology, access_ce, access_hop, access_hos, access_RC_announce, access_keycard_auth, access_tcomsat,
					access_gateway, access_sec_doors, access_psychiatrist, access_xenoarch, access_medical_equip, access_heads, access_brummbaer, access_brummbaer_helm,
					access_medea, access_medea_helm, access_civadmin, access_psiadv, access_bfg, access_explo, access_scipilot)


	software_on_spawn = list(/datum/computer_file/program/comm,
						 /datum/computer_file/program/card_mod,
						 /datum/computer_file/program/camera_monitor,
						 /datum/computer_file/program/reports)



/datum/job/hop/get_description_blurb()
	return "You are the Executive Officer. You are an experienced senior officer, second in command of the ship, and are responsible for the smooth operation of the ship under your Commanding Officer. In his absence, you are expected to take his place. Your primary duty is directly managing department heads and all those outside a department heading. Consider the Bridge Officers tools at your disposal."

/datum/job/rd
	title = "Research Director"
	supervisors = "the Captain"
	economic_power = 20
	minimal_player_age = 14
	minimum_character_age = list(SPECIES_HUMAN = 35)
	ideal_character_age = 60
	outfit_type = /decl/hierarchy/outfit/job/argos/crew/command/rd
	allowed_branches = list(/datum/mil_branch/argos)
	allowed_ranks = list (/datum/mil_rank/argos/head)

	min_skill = list(SKILL_BUREAUCRACY = SKILL_ADEPT,
	                SKILL_COMPUTER    = SKILL_BASIC,
	                SKILL_CHEMISTRY   = SKILL_ADEPT,
	                SKILL_FINANCE     = SKILL_ADEPT,
	                SKILL_BOTANY      = SKILL_BASIC,
	                SKILL_ANATOMY     = SKILL_BASIC,
	                SKILL_DEVICES     = SKILL_BASIC,
	                SKILL_SCIENCE     = SKILL_ADEPT)

	max_skill = list(SKILL_ANATOMY     = SKILL_MAX,
	                 SKILL_DEVICES     = SKILL_MAX,
	                 SKILL_SCIENCE     = SKILL_MAX)
	skill_points = 30

	access = list(
		access_tox, access_tox_storage, access_emergency_storage, access_teleporter, access_bridge, access_rd,
		access_research, access_mining, access_mining_office, access_mining_station, access_xenobiology,
		access_RC_announce, access_keycard_auth, access_xenoarch, access_heads, access_robotics,
		access_explo, access_scipilot, access_medea, access_medea_helm)

	minimal_access = list()

/datum/job/rd/get_description_blurb()
	return "You are the Research Director. You are in charge of the research department. Make sure science gets done, do some yourself, and get your scientists and explorers on away missions to find things of practical use to the Argos. Advise the CO on science matters."


/datum/job/cmo
	title = "Chief Medical Officer"
	supervisors = "the Captain and the Executive Officer"
	economic_power = 10
	minimal_player_age = 14
	minimum_character_age = list(SPECIES_HUMAN = 35)
	ideal_character_age = 48
	outfit_type = /decl/hierarchy/outfit/job/argos/crew/command/cmo
	allowed_branches = list(/datum/mil_branch/argos)
	allowed_ranks = list (/datum/mil_rank/argos/head)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_MEDICAL     = SKILL_EXPERT,
	                    SKILL_ANATOMY     = SKILL_EXPERT,
	                    SKILL_CHEMISTRY   = SKILL_BASIC,
						SKILL_DEVICES     = SKILL_ADEPT)

	max_skill = list(   SKILL_MEDICAL     = SKILL_MAX,
	                    SKILL_ANATOMY     = SKILL_MAX,
	                    SKILL_CHEMISTRY   = SKILL_MAX)
	skill_points = 26

	access = list(access_medical, access_morgue, access_maint_tunnels, access_external_airlocks, access_emergency_storage,
			            access_teleporter, access_eva, access_bridge, access_heads,
			            access_chapel_office, access_crematorium, access_chemistry, access_virology,
			            access_cmo, access_surgery, access_RC_announce, access_keycard_auth, access_psychiatrist,
			            access_medical_equip)
	minimal_access = list()

	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/suit_sensors,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/reports)

/datum/job/cmo/get_description_blurb()
	return "You are the Chief Medical Officer. You manage the medical department. You ensure all members of medical are skilled, tasked and handling their duties. Ensure your doctors are staffing your infirmary and your corpsman/paramedics are ready for response. Act as a second surgeon or backup pharmacist in the absence of either. You are expected to know medical very well, along with general regulations."


/datum/job/chief_engineer
	title = "Chief Engineer"
	supervisors = "the Captain and the Executive Officer"
	economic_power = 9
	minimum_character_age = list(SPECIES_HUMAN = 27)
	ideal_character_age = 40
	minimal_player_age = 14
	outfit_type = /decl/hierarchy/outfit/job/argos/crew/command/chief_engineer
	allowed_branches = list(/datum/mil_branch/argos)
	allowed_ranks = list (/datum/mil_rank/argos/head)

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

	access = list(access_engine, access_engine_equip, access_maint_tunnels, access_external_airlocks, access_emergency_storage,
			            access_ai_upload, access_teleporter, access_eva, access_bridge, access_heads,
			            access_tech_storage, access_atmospherics, access_janitor, access_construction,
			            access_network, access_ce, access_RC_announce, access_keycard_auth, access_tcomsat, access_bfg)

	minimal_access = list(access_engine, access_engine_equip, access_maint_tunnels, access_external_airlocks, access_emergency_storage,
			            access_ai_upload, access_teleporter, access_eva, access_bridge, access_heads,
			            access_tech_storage, access_atmospherics, access_janitor, access_construction,
			            access_network, access_ce, access_RC_announce, access_keycard_auth, access_tcomsat, access_bfg)

	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/ntnetmonitor,
							 /datum/computer_file/program/power_monitor,
							 /datum/computer_file/program/supermatter_monitor,
							 /datum/computer_file/program/alarm_monitor,
							 /datum/computer_file/program/atmos_control,
							 /datum/computer_file/program/rcon_console,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/shields_monitor,
							 /datum/computer_file/program/reports)

/datum/job/chief_engineer/get_description_blurb()
	return "You are the Chief Engineer. You manage the Engineering Department. You are responsible for the Senior engineer, who is your right hand and (should be) an experienced, skilled engineer. Delegate to and listen to them. Manage your engineers, ensure vessel power stays on, breaches are patched and problems are fixed. Advise the Captain on engineering matters. You are an experienced engineer with a wealth of theoretical knowledge. You should also know vessel regulations to a reasonable degree."


/datum/job/hos
	title = "Head of Security"
	supervisors = "the Captain and the Executive Officer"
	economic_power = 8
	minimal_player_age = 14
	minimum_character_age = list(SPECIES_HUMAN = 25)
	ideal_character_age = 35
	outfit_type = /decl/hierarchy/outfit/job/argos/crew/command/hos
	allowed_branches = list(/datum/mil_branch/argos)
	allowed_ranks = list (/datum/mil_rank/argos/head)

	min_skill = list(   SKILL_BUREAUCRACY = SKILL_ADEPT,
	                    SKILL_EVA         = SKILL_BASIC,
	                    SKILL_COMBAT      = SKILL_BASIC,
	                    SKILL_WEAPONS     = SKILL_ADEPT,
	                    SKILL_FORENSICS   = SKILL_BASIC)

	max_skill = list(   SKILL_COMBAT      = SKILL_MAX,
	                    SKILL_WEAPONS     = SKILL_MAX,
	                    SKILL_FORENSICS   = SKILL_MAX)
	skill_points = 28

	access = list(access_security, access_brig, access_armory, access_forensics_lockers,
		            access_maint_tunnels, access_external_airlocks, access_emergency_storage,
		            access_teleporter, access_eva, access_bridge, access_heads,
		            access_hos, access_RC_announce, access_keycard_auth, access_sec_doors, access_bfg)

	minimal_access = list()

/datum/job/hos/get_description_blurb()
	return "You are the Head of Security. You manage ship security. The Security Officers, the Warden and the Forensic Technician report to you. You keep the vessel safe. You handle both internal and external security matters. You are the law. You are subordinate to the CO and the XO. You are expected to know the Argos Charter and Alert Procedure to a very high degree along with general regulations."


/datum/job/civadmin
	title = "Civilian Administrator"
	supervisors = "the Captain"
	department = "Command"
	department_flag = COM
	total_positions = 1
	spawn_positions = 1
	selection_color = "#2f2f7f"
	economic_power = 15
	minimal_player_age = 0
	minimum_character_age = list(SPECIES_HUMAN = 25)
	outfit_type = /decl/hierarchy/outfit/job/argos/passenger/civadmin
	allowed_branches = list(/datum/mil_branch/argos)
	allowed_ranks = list (/datum/mil_rank/argos/head)


	min_skill = list(   SKILL_BUREAUCRACY = SKILL_EXPERT,
	                    SKILL_FINANCE     = SKILL_BASIC)
	skill_points = 20
	minimum_character_age = list(SPECIES_HUMAN = 27)

	access = list(access_bridge, access_heads, access_emergency_storage, access_RC_announce, access_keycard_auth,
					access_civadmin, access_janitor, access_bar, access_kitchen, access_chapel_office)
	minimal_access = list()

/datum/job/civadmin/get_description_blurb()
	return "You are the Civilian Administrator. You are responsible for the various service department jobs aboard the Argos, as well as the various jobless passengers that the vessel has picked up. In addition, it is your responsibility to address any grievances that the citizens of the Argos have with Command. You should know the Argos Charter to a high standard."


/datum/job/psiadv
	title = "Psionic Advisor"
	supervisors = "the Captain and the Executive Officer"
	department = "Command"
	department_flag = COM
	total_positions = 1
	spawn_positions = 1
	minimal_player_age = 14
	economic_power = 8
	selection_color = "2f2f7f"
	minimum_character_age = list(SPECIES_HUMAN = 25)
	outfit_type = /decl/hierarchy/outfit/job/argos/crew/psiadv
	allowed_branches = list(/datum/mil_branch/argos)
	allowed_ranks = list(/datum/mil_rank/argos/crew)

	min_skill = list(
		SKILL_BUREAUCRACY = SKILL_EXPERT,
		SKILL_FINANCE = SKILL_ADEPT,
		SKILL_MEDICAL = SKILL_BASIC,
		SKILL_SCIENCE = SKILL_BASIC
	)
	max_skill = list(
		SKILL_COMBAT     = SKILL_EXPERT,
		SKILL_WEAPONS     = SKILL_EXPERT,
		SKILL_SCIENCE     = SKILL_EXPERT)

	skill_points = 30

	access = list(access_bridge, access_psiadv, access_maint_tunnels, access_external_airlocks, access_eva, access_RC_announce, access_research)
	minimal_access = list()

	software_on_spawn = list(
		/datum/computer_file/program/comm,
		/datum/computer_file/program/records
	)

/datum/job/psiadv/equip(var/mob/living/carbon/human/H)
	psi_faculties = list("[PSI_REDACTION]" = PSI_RANK_OPERANT, "[PSI_COERCION]" = PSI_RANK_OPERANT, "[PSI_PSYCHOKINESIS]" = PSI_RANK_OPERANT, "[PSI_ENERGISTICS]" = PSI_RANK_OPERANT)
	return ..()

/datum/job/psiadv/get_description_blurb()
	return "You are the Psionic Advisor, the Argos's foremost specialist on psionics and psionic phenomena. Work with the Captain and the XO to deal with psionic threats to the ship, and work with Research on the study of psionic anomalies. In addition, it is your job to deal with an crew possessing psionic abilities, and to ensure that their abilities are properly monitored and regulated."


/datum/job/bridgeofficer
	department = "Command"
	department_flag = COM
	total_positions = 3
	spawn_positions = 3
	supervisors = "the Captain and Heads of Staff"
	selection_color = "#2f2f7f"
	minimal_player_age = 0
	economic_power = 7
	minimum_character_age = list(SPECIES_HUMAN = 22)
	ideal_character_age = 24
	outfit_type = /decl/hierarchy/outfit/job/argos/crew/command/bridgeofficer
	allowed_branches = list(/datum/mil_branch/argos)
	allowed_ranks = list (/datum/mil_rank/argos/crew)
	alt_titles = list(
					"Helmsman",
					"Sensor Officer",
					"Tactical Officer")
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_PILOT       = SKILL_ADEPT)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX)
	skill_points = 20

	access = list(access_security, access_medical, access_engine, access_maint_tunnels, access_emergency_storage,
		            access_bridge, access_janitor, access_kitchen, access_cargo, access_mailsorting, access_RC_announce, access_keycard_auth,
		            access_bfg, access_teleporter, access_medea, access_medea_helm, access_brummbaer, access_brummbaer_helm)
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


/datum/job/bridgeofficer/get_description_blurb()
	return "You are a Bridge Officer. You are subordinate to all of Command. You do not give orders of your own. You handle matters on the bridge and report directly to the Captain and XO. You take the Argos's helm and pilot shuttles if needed. You monitor bridge computer programs and communications and report relevant information to command."
