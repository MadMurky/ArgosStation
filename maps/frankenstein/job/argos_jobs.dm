/datum/map/argos
	species_to_job_whitelist = list(
		/datum/species/adherent = list(/datum/job/cyborg, /datum/job/assistant, /datum/job/janitor, /datum/job/chef, /datum/job/bartender, /datum/job/cargo_tech,
										/datum/job/engineer, /datum/job/roboticist, /datum/job/chemist, /datum/job/scientist_assistant, /datum/job/scientist, /datum/job/scipilot,
										/datum/job/mining),
		/datum/species/nabber = list(/datum/job/cyborg, /datum/job/janitor, /datum/job/scientist_assistant, /datum/job/chemist,
									 /datum/job/roboticist, /datum/job/cargo_tech, /datum/job/chef, /datum/job/engineer, /datum/job/doctor, /datum/job/bartender),
		/datum/species/vox = list(/datum/job/cyborg)
		)

	species_to_job_blacklist = list(
		/datum/species/diona = list(/datum/job/officer, /datum/job/warden, /datum/job/hos),
		/datum/species/machine = list(/datum/job/psychiatrist, /datum/job/psiadv)
	)

	allowed_jobs = list(/datum/job/captain, /datum/job/hop, /datum/job/rd, /datum/job/cmo, /datum/job/chief_engineer, /datum/job/hos,
						/datum/job/civadmin, /datum/job/psiadv, /datum/job/bridgeofficer, /datum/job/chiefexplorer, /datum/job/scipilot, /datum/job/explorer,
						/datum/job/senioreng, /datum/job/engineer, /datum/job/roboticist, /datum/job/engineer_trainee,
						/datum/job/officer, /datum/job/warden, /datum/job/detective,
						/datum/job/seniordoctor, /datum/job/doctor, /datum/job/junior_doctor, /datum/job/chemist, /datum/job/medical_trainee,
						/datum/job/psychiatrist, /datum/job/chaplain,
						/datum/job/qm, /datum/job/cargo_tech, /datum/job/mining,
						/datum/job/janitor, /datum/job/chef, /datum/job/bartender,
						/datum/job/scientist, /datum/job/scientist_assistant,
						/datum/job/cyborg,
						/datum/job/assistant,
						/datum/job/merchant
						)

	access_modify_region = list(
		ACCESS_REGION_SECURITY = list(access_change_ids),
		ACCESS_REGION_MEDBAY = list(access_change_ids),
		ACCESS_REGION_RESEARCH = list(access_change_ids),
		ACCESS_REGION_ENGINEERING = list(access_change_ids),
		ACCESS_REGION_COMMAND = list(access_change_ids),
		ACCESS_REGION_GENERAL = list(access_change_ids),
		ACCESS_REGION_SUPPLY = list(access_change_ids),
		ACCESS_REGION_NT = list(access_change_ids)
	)

// Some jobs for nabber grades defined here due to map-specific job datums.
/decl/cultural_info/culture/nabber/New()
	LAZYADD(valid_jobs, /datum/job/scientist_assistant)
	..()

/decl/cultural_info/culture/nabber/b/New()
	LAZYADD(valid_jobs, /datum/job/cargo_tech)
	..()

/decl/cultural_info/culture/nabber/a/New()
	LAZYADD(valid_jobs, /datum/job/engineer)
	..()

/decl/cultural_info/culture/nabber/a/plus/New()
	LAZYADD(valid_jobs, /datum/job/doctor)
	..()

/datum/job
	allowed_branches = list(
		/datum/mil_rank/misc/civilian
	)
	allowed_ranks = list(
		/datum/mil_rank/misc/civilian
	)

/datum/map/argos
	default_assistant_title = "Passenger"