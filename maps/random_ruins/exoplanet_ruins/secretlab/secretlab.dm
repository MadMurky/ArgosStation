/datum/map_template/ruin/exoplanet/secretlab
	name = "secret lab"
	id = "secretlab"
	description = "a super secret lab used for dubious experiments"
	suffixes = list("secretlab/secretlab.dmm")
	cost = 1
	template_flags = TEMPLATE_FLAG_CLEAR_CONTENTS | TEMPLATE_FLAG_NO_RUINS | TEMPLATE_FLAG_NO_RADS
	ruin_tags = RUIN_HUMAN|RUIN_HABITAT

/decl/submap_archetype/secretlab
	descriptor = "secret lab"
	crew_jobs = list(
		/datum/job/submap/planet_scientist,
		/datum/job/submap/chief_planet_scientist
	)

/datum/job/submap/chief_planet_scientist
	title = "Planetside Chief Researcher"
	supervisors = "the whims of science"
	info = "You are a Chief Researcher, organising your subordinates on the planetary surface. You have a good grasp of most research fields. Supervise your subordinates' research, and don't be afraid to go out there yourself if the need arises."
	total_positions = 1
	outfit_type = /decl/hierarchy/outfit/job/planet_scientist/chief
	blacklisted_species = list("Diona", "Mule")

/datum/job/submap/planet_scientist
	title = "Planetside Researcher"
	supervisors = "the Chief Researcher"
	info = "You are a Researcher, living and working in a base on the planetary surface. Catalogue, excavate, and research its features."
	total_positions = 4
	outfit_type = /decl/hierarchy/outfit/job/planet_scientist
	blacklisted_species = list("Diona", "Mule")

/decl/hierarchy/outfit/job/planet_scientist
	name = OUTFIT_JOB_NAME("Researcher")
	l_ear = /obj/item/device/radio/headset
	uniform = /obj/item/clothing/under/gentlesuit
	suit = /obj/item/clothing/suit/storage/toggle/labcoat
	id_type = /obj/item/weapon/card/id/secretlab

/decl/hierarchy/outfit/job/planet_scientist/chief
	name = OUTFIT_JOB_NAME("Chief Researcher")
	suit = /obj/item/clothing/suit/storage/toggle/labcoat/blue
	id_type = /obj/item/weapon/card/id/secretlab_chief

/obj/effect/submap_landmark/spawnpoint/secretlab/chief
	name = "Chief Researcher"

/obj/effect/submap_landmark/spawnpoint/secretlab/researcher
	name = "Researcher"

/obj/effect/submap_landmark/joinable_submap/secretlab
	name = "Secret Lab"
	archetype = /decl/submap_archetype/secretlab


/area/map_template/secretlab
	name = "\improper Lab"
	icon_state = "lab"
	icon = 'maps/random_ruins/exoplanet_ruins/secretlab/secretlab.dmi'

/area/map_template/secretlab/bunks
	name = "\improper Bunks"
	icon_state = "bunks"

/area/map_template/secretlab/kitchen
	name = "\improper Kitchen"
	icon_state = "kitchen"

/area/map_template/secretlab/hydroponics
	name = "Hydroponics"
	icon_state = "hydro"

/area/map_template/secretlab/anomaly
    name = "Anomaly Testing"
    icon_state = "anomaly"

/area/map_template/secretlab/xenobio
    name = "Xenobiology"
    icon_state = "xenobio"

/area/map_template/secretlab/garden
	name = "Garden"
	icon_state = "garden"

/area/map_template/secretlab/mining
	name = "Mineral Processing"
	icon_state = "mining"

/area/map_template/secretlab/power
	name = "\improper Fusion Reactor"
	icon_state = "power"

/area/map_template/secretlab/atmospherics
	name = "Atmospherics"
	icon_state = "atmos"

/area/map_template/secretlab/office
    name = "\improper Office"
    icon_state = "office"
    req_access = list(access_secretlab_chief)

/area/map_template/secretlab/foyer
    name = "\improper Foyer"
    icon_state = "foyer"

/area/map_template/secretlab/hall
    name = "\improper Hall"
    icon_state = "hall"

/area/map_template/secretlab/cell1
	name = "\improper Cell 1"
	icon_state = "cell1"

/area/map_template/secretlab/cell2
	name = "\improper Cell 2"
	icon_state = "cell2"

/area/map_template/secretlab/cell3
	name = "\improper Cell 3"
	icon_state = "cell3"

/area/map_template/secretlab/cell4
	name = "\improper Cell 4"
	icon_state = "cell4"

/area/map_template/secretlab/wc
	name = "\improper Bathroom"
	icon_state = "wc"

/var/const/access_secretlab = "ACCESS_SECRETLAB"
/var/const/access_secretlab_chief = "ACCESS_SECRETLAB_CHIEF"

/datum/access/secretlab
	id = access_secretlab
	desc = "Secret Lab"

/datum/access/secretlab_chief
	id = access_secretlab_chief
	desc = "Secret Lab Chief's Office"

/obj/item/weapon/card/id/secretlab
	access = list(access_secretlab)

/obj/item/weapon/card/id/secretlab_chief
	access = list(
		access_secretlab,
		access_secretlab_chief
	)