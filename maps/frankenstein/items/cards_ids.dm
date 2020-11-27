//Argos ID cards (They have to be here to make the outfits work, no way around it)

/obj/item/weapon/card/id/argos
	name = "identification card"
	desc = "An identification card issued to personnel aboard the Argos."
	job_access_type = DEFAULT_JOB_TYPE

/obj/item/weapon/card/id/argos/silver
	desc = "A silver identification card belonging to heads of staff aboard the Argos."
	item_state = "silver_id"
	job_access_type = /datum/job/hop
	extra_details = list("goldstripe")
	color = "#ccecff"

/obj/item/weapon/card/id/argos/gold
	desc = "A golden identification card belonging to the Commanding Officer."
	item_state = "gold_id"
	job_access_type = /datum/job/captain
	color = "#d4c780"
	extra_details = list("goldstripe")

/obj/item/weapon/card/id/argos/crew
	desc = "An identification card issued to crewmembers aboard the Argos."
	job_access_type = DEFAULT_JOB_TYPE
	color = COLOR_GRAY80

/obj/item/weapon/card/id/argos/silver/medical
	job_access_type = /datum/job/cmo
	detail_color = COLOR_PALE_BLUE_GRAY

/obj/item/weapon/card/id/argos/crew/medical
	job_access_type = /datum/job/doctor
	detail_color = COLOR_PALE_BLUE_GRAY

/obj/item/weapon/card/id/argos/crew/medical/senior
	job_access_type = /datum/job/seniordoctor

/obj/item/weapon/card/id/argos/crew/chemist
	job_access_type = /datum/job/chemist
	detail_color = COLOR_PALE_BLUE_GRAY

/obj/item/weapon/card/id/argos/crew/medical/counselor
	job_access_type = /datum/job/psychiatrist

/obj/item/weapon/card/id/argos/silver/security
	job_access_type = /datum/job/hos
	detail_color = "#e00000"

/obj/item/weapon/card/id/argos/crew/security
	job_access_type = /datum/job/officer
	detail_color = "#e00000"

/obj/item/weapon/card/id/argos/crew/security/warden
	job_access_type = /datum/job/warden
	extra_details = list("onegoldstripe")

/obj/item/weapon/card/id/argos/crew/security/forensic
	job_access_type = /datum/job/detective

/obj/item/weapon/card/id/argos/silver/engineering
	job_access_type = /datum/job/chief_engineer
	detail_color = COLOR_SUN

/obj/item/weapon/card/id/argos/crew/engineering
	job_access_type = /datum/job/engineer
	detail_color = COLOR_SUN

/obj/item/weapon/card/id/argos/crew/engineering/senior
	job_access_type = /datum/job/senioreng
	extra_details = list("onegoldstripe")

/obj/item/weapon/card/id/argos/crew/supply/qm
	job_access_type = /datum/job/qm
	detail_color = COLOR_BROWN
	extra_details = list("onegoldstripe")

/obj/item/weapon/card/id/argos/crew/supply
	job_access_type = /datum/job/cargo_tech
	detail_color = COLOR_BROWN

/obj/item/weapon/card/id/argos/crew/supply/mining
	job_access_type = /datum/job/mining
	detail_color = COLOR_BROWN

/obj/item/weapon/card/id/argos/crew/service //unused
	job_access_type = DEFAULT_JOB_TYPE
	detail_color = COLOR_CIVIE_GREEN

/obj/item/weapon/card/id/argos/crew/service/janitor
	job_access_type = /datum/job/janitor

/obj/item/weapon/card/id/argos/crew/service/chef
	job_access_type = /datum/job/chef

/obj/item/weapon/card/id/argos/crew/service/chaplain
	job_access_type = /datum/job/chaplain

/obj/item/weapon/card/id/argos/crew/service/bartender
	job_access_type = /datum/job/bartender

/obj/item/weapon/card/id/argos/crew/psiadv
	job_access_type = /datum/job/psiadv
	detail_color = COLOR_COMMAND_BLUE
	extra_details = list("onegoldstripe")

/obj/item/weapon/card/id/argos/crew/bridgeofficer
	job_access_type = /datum/job/bridgeofficer
	detail_color = COLOR_COMMAND_BLUE

/obj/item/weapon/card/id/argos/crew/chiefexplorer
	job_access_type = /datum/job/chiefexplorer
	detail_color = COLOR_PURPLE
	extra_details = list("onegoldstripe")

/obj/item/weapon/card/id/argos/crew/explorer
	job_access_type = /datum/job/explorer
	detail_color = COLOR_PURPLE

/obj/item/weapon/card/id/argos/crew/scipilot
	job_access_type = /datum/job/scipilot
	detail_color = COLOR_PURPLE

/obj/item/weapon/card/id/argos/silver/research
	job_access_type = /datum/job/rd
	detail_color = COLOR_RESEARCH
	color = COLOR_WHITE

/obj/item/weapon/card/id/argos/crew/research
	desc = "A card issued to science personnel aboard the Argos."
	job_access_type = /datum/job/scientist_assistant
	detail_color = COLOR_RESEARCH

/obj/item/weapon/card/id/argos/crew/research/scientist
	job_access_type = /datum/job/scientist

/obj/item/weapon/card/id/argos/crew/research/roboticist
	job_access_type = /datum/job/roboticist

/obj/item/weapon/card/id/argos/passenger
	desc = "A card issued to passengers aboard the Argos."
	job_access_type = DEFAULT_JOB_TYPE
	detail_color = COLOR_PAKISTAN_GREEN

/obj/item/weapon/card/id/argos/passenger/civadmin
	desc = "A card issued to the Civilian Administrator aboard the Argos."
	job_access_type = /datum/job/civadmin
	detail_color = COLOR_PAKISTAN_GREEN
	extra_details = list("onegoldstripe")

/obj/item/weapon/card/id/argos/merchant
	desc = "An identification card issued to Merchants, indicating their right to sell and buy goods."
	job_access_type = /datum/job/merchant
	color = COLOR_OFF_WHITE
	detail_color = COLOR_BEIGE
