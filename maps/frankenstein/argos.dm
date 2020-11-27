#if !defined(using_map_DATUM)
	#include "argos_areas.dm"
	#include "argos_ranks.dm"


	#include "items/cards_ids.dm"
	#include "items/encryption_keys.dm"
	#include "items/headsets.dm"
	#include "items/clothing/argos_accessories.dm"
	#include "items/clothing/argos_under.dm"
	#include "items/clothing/solgov-accessory.dm"
	#include "items/clothing/solgov-armor.dm"
	#include "items/clothing/solgov-feet.dm"
	#include "items/clothing/solgov-hands.dm"
	#include "items/clothing/solgov-head.dm"
	#include "items/clothing/solgov-suit.dm"
	#include "items/clothing/solgov-under.dm"


	#include "job/argos_access.dm"
	#include "job/argos_jobs.dm"
	#include "job/command_jobs.dm"
	#include "job/engineering_jobs.dm"
	#include "job/medical_jobs.dm"
	#include "job/misc_jobs.dm"
	#include "job/research_jobs.dm"
	#include "job/security_jobs.dm"
	#include "job/service_jobs.dm"
	#include "job/supply_jobs.dm"

	#include "job/outfits/argos_outfits.dm"
	#include "job/outfits/command_outfits.dm"
	#include "job/outfits/engineering_outfits.dm"
	#include "job/outfits/medical_outfits.dm"
	#include "job/outfits/misc_outfits.dm"
	#include "job/outfits/research_outfits.dm"
	#include "job/outfits/security_outfits.dm"
	#include "job/outfits/service_outfits.dm"
	#include "job/outfits/supply_outfits.dm"

	#include "structures/closets/closet_appearances.dm"
	#include "structures/closets/command.dm"
	#include "structures/closets/engineering.dm"
	#include "structures/closets/medical.dm"
	#include "structures/closets/misc.dm"
	#include "structures/closets/research.dm"
	#include "structures/closets/security.dm"
	#include "structures/closets/service.dm"
	#include "structures/closets/supply.dm"
  
	#include "argos1-habitation.dmm"
	#include "argos2-departments.dmm"
	#include "argos3-command.dmm"
	#include "argos4-observatory.dmm"
	#include "argos5-bluespace.dmm"

	#include "../away/empty.dmm"
	#include "../away/ascent/ascent.dm"
	#include "../away/mining/mining.dm"
	#include "../away/derelict/derelict.dm"
	#include "../away/bearcat/bearcat.dm"
	#include "../away/lost_supply_base/lost_supply_base.dm"
	#include "../away/smugglers/smugglers.dm"
	#include "../away/magshield/magshield.dm"
	#include "../away/casino/casino.dm"
	#include "../away/yacht/yacht.dm"
	#include "../away/blueriver/blueriver.dm"
	#include "../away/slavers/slavers_base.dm"
	#include "../away/mobius_rift/mobius_rift.dm"
	#include "../away/icarus/icarus.dm"
	#include "../away/errant_pisces/errant_pisces.dm"
	#include "../away/lar_maria/lar_maria.dm"
	#include "../away/unishi/unishi.dm"
	#include "../away/voxship/voxship.dm"
	#include "../away/skrellscoutship/skrellscoutship.dm"
	#include "../away/meatstation/meatstation.dm"
	#include "../away/miningstation/miningstation.dm"

	#define using_map_DATUM /datum/map/argos

#elif !defined(MAP_OVERRIDE)

	#warn A map has already been included, ignoring Argos

#endif
