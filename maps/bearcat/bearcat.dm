#if !defined(using_map_DATUM)
	#include "bearcat_unit_testing.dm"

	#include "../../code/datums/music_tracks/businessend.dm"
	#include "../../code/datums/music_tracks/salutjohn.dm"
	#include "../../code/datums/music_tracks/serenity.dm"

	#include "bearcat_areas.dm"
	#include "bearcat_jobs.dm"
	#include "bearcat_lobby.dm"
	#include "bearcat_shuttles.dm"
	#include "bearcat_overmap.dm"
	#include "bearcat_overrides.dm"
	#include "bearcat_loadouts.dm"
	#include "bearcat_npcs.dm"
	#include "bearcat-1.dmm"
	#include "bearcat-2.dmm"

	#include "../away/empty.dmm"
	#include "../away/mining/mining.dm"
	#include "../away/derelict/derelict.dm"
	#include "../away/lost_supply_base/lost_supply_base.dm"
	#include "../away/smugglers/smugglers.dm"
	#include "../away/magshield/magshield.dm"
	#include "../away/casino/casino.dm"
	#include "../away/yacht/yacht.dm"
	#include "../away/blueriver/blueriver.dm"
	#include "../away/slavers/slavers_base.dm"
	#include "../away/icarus/icarus.dm"
	#include "../away/errant_pisces/errant_pisces.dm"
	#include "../away/lar_maria/lar_maria.dm"
	#include "../away/unishi/unishi.dm"
	#include "../away/voxship/voxship.dm"
	#include "../away/skrellscoutship/skrellscoutship.dm"
	#include "../away/miningstation/miningstation.dm"

	#define using_map_DATUM /datum/map/bearcat

#elif !defined(MAP_OVERRIDE)

	#warn A map has already been included, ignoring Bearcat

#endif


/turf/simulated/floor
	name = "bare deck"

/turf/simulated/floor/tiled
	name = "deck"

/decl/flooring/tiling
	name = "deck"

/turf/simulated/wall/r_wall/hull
	color = COLOR_DARK_BROWN

/obj/machinery/door/airlock/hatch/autoname

/obj/machinery/door/airlock/hatch/autoname/Initialize()
	. = ..()
	var/area/A = get_area(src)
	SetName("hatch ([A.name])")

/obj/machinery/door/airlock/hatch/autoname/general
	stripe_color = COLOR_CIVIE_GREEN

/obj/machinery/door/airlock/hatch/autoname/maintenance
	stripe_color = COLOR_AMBER

/obj/machinery/door/airlock/hatch/autoname/command
	stripe_color = COLOR_COMMAND_BLUE

/obj/machinery/door/airlock/hatch/autoname/engineering
	stripe_color = COLOR_AMBER

/obj/machinery/power/smes/buildable/preset/bearcat
	uncreated_component_parts = list(
		/obj/item/weapon/stock_parts/smes_coil/super_capacity = 2,
		/obj/item/weapon/stock_parts/smes_coil/super_io = 1
	)
	_input_maxed = TRUE
	_output_maxed = TRUE
	_input_on = TRUE
	_output_on = TRUE
	_fully_charged = TRUE

/obj/machinery/power/smes/buildable/preset/bearcat/shuttle
	uncreated_component_parts = list(
		/obj/item/weapon/stock_parts/smes_coil/super_capacity = 1
	)

/obj/machinery/drone_fabricator/bearcat
	name = "construction drone fabricator"
	fabricator_tag = "Bearcat"
	drone_type = /mob/living/silicon/robot/drone/construction

//wild capitalism
/datum/computer_file/program/merchant
	required_access = null

/obj/item/clothing/suit/pirate/bearcat
	name = "captain's coat"
	desc = "Inspired by some of the bravest capitalists throughout history."
	allowed = list(/obj/item/weapon/gun,/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/weapon/melee/baton,/obj/item/weapon/handcuffs,/obj/item/weapon/tank/emergency, /obj/item/device/flashlight)
	armor = list(
		melee = ARMOR_MELEE_RESISTANT,
		bullet = ARMOR_BALLISTIC_MINOR,
		laser = ARMOR_LASER_HANDGUNS,
		bomb = ARMOR_BOMB_PADDED,
		bio = ARMOR_BIO_SMALL,
		rad = ARMOR_RAD_MINOR
	)