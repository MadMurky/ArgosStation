
//Deck 5 (Z-1)

/area/hallway/habitation
	name = "\improper Fifth Deck Central Hallway"
	icon_state = "hallC1"

/area/hallway/habitation/starboard
	name = "\improper Fifth Deck Starboard Hallway"
	icon_state = "hallS"

/area/hallway/habitation/port
	name = "\improper Fifth Deck Port Hallway"
	icon_state = "hallP"

/area/hallway/habitation/fore
	name = "\improper Fifth Deck Fore Hallway"
	icon_state = "hallF"

/area/hallway/habitation/aft
	name = "\improper Fifth Deck Aft Hallway"
	icon_state = "hallA"

/area/hallway/habitation/foreport
	name = "\improper Fifth Deck Fore Port Hallway"
	icon_state = "hallF"

/area/maintenance/habitation
	name = "Fifth Deck Maintenance"
	icon_state = "maintcentral"

/area/maintenance/habitation/forestarboard
	name = "Fifth Deck Fore Starboard Maintenance"
	icon_state = "fsmaint"

/area/maintenance/habitation/foreport
	name = "Fifth Deck Fore Port Maintenance"
	icon_state = "fpmaint"

/area/maintenance/habitation/aftstarboard
	name = "Fifth Deck Aft Starboard Maintenance"
	icon_state = "asmaint"


//Deck 4 (Z-2)
/area/hallway/departments
	name = "\improper Fourth Deck Central Hallway"
	icon_state = "hallC1"

/area/maintenance/departments
	name = "Fourth Deck Maintenance"
	icon_state = "maintcentral"

/area/maintenance/departments/aftport
	name = "Fourth Deck Aft Port Maintenance"
	icon_state = "apmaint"

/area/maintenance/departments/aftstarboard
	name = "Fourth Deck Aft Starboard Maintenance"
	icon_state = "asmaint"

/area/maintenance/departments/medbay
	name = "Infirmary Maintenance"
	icon_state = "maint_medbay"

/area/maintenance/departments/cargo
	name = "Cargo Maintenance"
	icon_state = "maint_cargo"

/area/maintenance/departments/engiport
	name = "Port Engineering Maintenance"
	icon_state = "maint_engineering"

/area/maintenance/departments/engistarboard
	name = "Starboard Engineering Maintenance"
	icon_state = "maint_engineering"

//Deck 3 (Z = 3)

/area/hallway/command
	name = "\improper Third Deck Central Hallway"
	icon_state = "hallC1"

/area/hallway/command/fore
	name = "\improper Third Deck Fore Hallway"
	icon_state = "hallF"

/area/hallway/command/port
	name = "\improper Third Deck Port Hallway"
	icon_state = "hallP"

/area/hallway/command/starboard
	name = "\improper Third Deck Starboard Hallway"
	icon_state = "hallS"

/area/hallway/command/aft
	name = "\improper Third Deck Aft Hallway"
	icon_state = "hallA"

/area/hallway/command/aftport
	name = "\improper Third Deck Aft Port Hallway"
	icon_state = "hallP"

/area/hallway/command/aftstarboard
	name = "\improper Third Deck Aft Starboard Hallway"
	icon_state = "hallS"

/area/maintenance/command
	name = "Third Deck Maintenance"
	icon_state = "maintcentral"

/area/maintenance/command/aft
	name = "Third Deck Aft Maintenance"
	icon_state = "amaint"

/area/maintenance/command/fore
	name = "Third Deck Fore Maintenance"
	icon_state = "fmaint"

/area/maintenance/command/port
	name = "Third Deck Port Maintenance"
	icon_state = "pmaint"

/area/maintenance/command/starboard
	name = "Third Deck Starboard Maintenance"
	icon_state = "smaint"

/area/maintenance/command/forestarboard
	name = "Third Deck Fore Starboard Maintenance"
	icon_state = "fsmaint"

/area/maintenance/command/foreport
	name = "Third Deck Fore Port Maintenance"
	icon_state = "fpmaint"

/area/maintenance/command/aftstarboard
	name = "Third Deck Aft Starboard Maintenance"
	icon_state = "asmaint"

/area/maintenance/command/aftport
	name = "Third Deck Aft Port Maintenance"
	icon_state = "apmaint"

//Deck 2 (Z = 4)
/area/hallway/observatory
	name = "\improper Second Deck Central Hallway"
	icon_state = "hallC1"

/area/hallway/observatory/aftport
	name = "\improper Second Deck Aft Port Hallway"
	icon_state = "hallP"

/area/hallway/observatory/aftstarboard
	name = "\improper Second Deck Aft Starboard Hallway"
	icon_state = "hallS"

/area/hallway/observatory/aft
	name = "\improper Second Deck Aft Hallway"
	icon_state = "hallA"

/area/hallway/observatory/foreport
	name = "\improper Second Deck Fore Port Hallway"
	icon_state = "hallF"

/area/hallway/observatory/forestarboard
	name = "\improper Second Deck Fore Starboard Hallway"
	icon_state = "hallS"

/area/observatory/bubble
	name = "\improper Second Deck Observation Bubble"
	icon_state = "crew_quarters"

/area/maintenance/observatory
	name = "\improper Second Deck Substation"
	icon_state = "engineering"

/area/observatory/disperser
	name = "\improper Obstruction Field Disperser"
	icon_state = "disperser"
	req_access = list(access_bfg)

/area/observatory/disperser/storage
	name = "\improper OFD Charge Storage"

/area/storage/emergency/aux
	name = "\improper Auxilary Emergency Storage"
	icon_state = "auxstorage"



//Deck 1 (Z = 5)
/area/maintenance/bsd
	name = "Bluespace Drive Maintenance"
	icon_state = "maintcentral"

/area/bsd
	name = "\improper Bluespace Drive Monitoring"
	icon_state = "engineering"

/area/bsd/core
	name = "\improper Bluespace Drive"
	color = COLOR_BLUE_LIGHT


//Civilian
/area/crew_quarters/cafe
	name = "\improper Cafeteria"
	icon_state = "cafeteria"

/area/crew_quarters/civadmin
	name = "\improper Civilian Administrator's Office"
	icon_state = "heads_cl"

/area/crew_quarters/toilet
	name = "\improper Head"
	icon_state = "toilet"
	sound_env = SMALL_ENCLOSED

/area/crew_quarters/toilet/sauna
	name = "\improper Sauna"
	icon_state = "sauna"

/area/crew_quarters/gym
	name = "\improper Gym"
	icon_state = "fitness"

/area/crew_quarters/galley
	name = "\improper Galley"
	icon_state = "kitchen"
	req_access = list(access_kitchen)

/area/crew_quarters/galley/backroom
	name = "\improper Galley Cold Room"
	icon_state = "kitchen"
	req_access = list(access_kitchen)

/area/crew_quarters/xenohab
	name = "\improper Xenohabitation Hallway"
	icon_state = "hallC1"

/area/crew_quarters/xenohab/adherent
	name = "\improper Adherent Maintenance"
	icon_state = "robotics"

/area/crew_quarters/xenohab/skrell
	name = "\improper Skrell Habitation"
	icon_state = "skrell"

/area/crew_quarters/xenohab/unathi
	name = "\improper Unathi Habitation"
	icon_state = "unathi"

/area/crew_quarters/xenohab/serpentid
	name = "\improper Serpentid Habitation"
	icon_state = "garden"

/area/crew_quarters/chapel
	name = "\improper Chapel"
	icon_state = "chapel"
	ambience = list('sound/ambience/ambicha1.ogg','sound/ambience/ambicha2.ogg','sound/ambience/ambicha3.ogg','sound/ambience/ambicha4.ogg','sound/music/traitor.ogg')
	sound_env = LARGE_ENCLOSED

/area/crew_quarters/chaplain
	name = "\improper Chaplain's Office"
	color = COLOR_GRAY80
	sound_env = SMALL_SOFTFLOOR
	req_access = list(access_chapel_office)

/area/crew_quarters/sleep/dorms
	name = "\improper Dormitory"
	icon_state = "Sleep"
	sound_env = SMALL_SOFTFLOOR
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

/area/crew_quarters/sleep/cryo
	name = "\improper Cryogenic Storage"
	icon_state = "Sleep"

/area/storage/emergency
	name = "\improper Emergency Storage"
	icon_state = "auxstorage"


//Research

/area/rnd/toxins
	name = "\improper Toxins Lab"
	icon_state = "toxlab"
	req_access = list(access_tox)

/area/rnd/toxstorage
	name = "\improper Canister Storage"
	icon_state = "toxstorage"
	req_access = list(access_tox_storage)

/area/rnd/breakroom
	name = "\improper Research Break Room"
	icon_state = "researchbreak"

/area/rnd/fablab
	name = "\improper Research and Development"
	icon_state = "devlab"

/area/rnd/misc
	name = "\improper Miscellaneous Lab"
	icon_state = "misclab"

/area/rnd/anomaly
	name = "\improper Anomaly Lab"
	icon_state = "anolab"
	req_access = list(access_xenoarch)

/area/rnd/anomaly/vault
	name = "\improper Deep Storage"
	icon_state = "anomaly"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED
	req_access = list(access_xenoarch)

/area/rnd/anomaly/storage
	name = "\improper Artifact Storage"
	icon_state = "anomaly"
	req_access = list(access_xenoarch)

/area/rnd/excavstorage
	name = "\improper Xenoarchaeology Equipment"
	icon_state = "mining"
	req_access = list(access_xenoarch)

/area/hallway/research
	name = "\improper Fore Upper Research Hallway"
	icon_state = "research"

/area/hallway/research/aft
	name = "\improper Aft Upper Research Hallway"
	icon_state = "research"

/area/hallway/research/lower
	name = "\improper Lower Research Hallway"
	icon_state = "research"

/area/rnd/exploration
	name = "\improper Field Research Equipment"
	icon_state = "exploration"
	req_access = list(access_explo)

/area/rnd/pilot
	name = "\improper Research Pilot's Lounge"
	icon_state = "exploration"
	req_access = list(access_scipilot)

/area/rnd/rd
	name = "\improper Research Director's Office"
	icon_state = "heads_rd"
	req_access = list(access_rd)

/area/rnd/robotics
	name = "\improper Robotics Workshop"
	icon_state = "robotics"
	req_access = list(access_robotics)

/area/rnd/robotics/chargebay
	name = "\improper Mech Bay"
	icon_state = "mechbay"

/area/rnd/robotics/operating
	name = "\improper Robotics Operating Theatre"

/area/rnd/locker
	name = "\improper Research Locker Room"
	icon_state = "locker"


//Cargonia

/area/cargo
	req_access = list(access_cargo)

/area/cargo/office
	name = "\improper Supply Office"
	icon_state = "quartoffice"

/area/cargo/warehouse
	name = "\improper Supply Warehouse"
	icon_state = "quartstorage"

/area/cargo/mail
	name = "\improper Mail Room"
	icon_state = "quartsorting"
	req_access = list(access_mailsorting)

/area/cargo/landing
	name = "\improper Supply Drone Hangar"
	icon_state = "quart"
	req_access = list(access_cargo_bot)

/area/cargo/mining
	name = "\improper Mining Storage"
	icon_state = "mining"
	req_access = list(access_mining)

/area/cargo/mining/processing
	name = "\improper Mineral Processing"

/area/cargo/quartermaster
	name = "\improper Quartermaster's Office"
	icon_state = "quart"
	req_access = list(access_qm)

/area/hallway/cargo
	name = "\improper Supply Hallway"
	icon_state = "quart"


//Medical
//TODO - medical

//Engineering
/area/engineering/engine
	name = "\improper Engine Room"
	icon_state = "engine"
	sound_env = LARGE_ENCLOSED
	req_access = list(access_engine, access_engine_equip)

/area/engineering/hardstorage
	name = "\improper Engineering Hard Storage"
	icon_state = "engineering_storage"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_engine_equip)

/area/engineering/atmos
	name = "\improper Atmospherics"
	icon_state = "atmos"
	req_access = list(access_atmospherics)

/area/engineering/foyer
	name = "\improper Engineering Foyer"
	icon_state = "engineering_foyer"
	req_access = list()

/area/engineering/main
	name = "\improper Engineering Bay"
	icon_state = "engineering_locker"
	req_access = list(access_engine)

/area/engineering/monitoring
	name = "\improper Engine Monitoring"
	icon_state = "engine_monitoring"
	req_access = list(access_engine, access_engine_equip)

/area/maintenance/solar
	name = "\improper Solar Control"
	icon_state = "SolarcontrolS"
	req_access = list(access_engine_equip, access_maint_tunnels)

/area/engineering/locker
	name = "\improper Engineering Locker Room"
	icon_state = "engineering_locker"
	req_access = list(access_engine)

/area/engineering/waste
	name = "\improper Waste Tank"
	icon_state = "engineering"
	req_access = list(access_engine_equip, access_maint_tunnels)

/area/engineering/fuel
	name = "\improper Fuel Storage"
	icon_state = "engineering"
	req_access = list(access_engine_equip, access_maint_tunnels)

/area/engineering/engine_smes
	name = "\improper Engineering SMES"
	icon_state = "engine_smes"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_engine)

/area/engineering/ce
	name = "\improper Chief Engineer"
	icon_state = "heads_ce"
	req_access = list(access_ce)


//Security

/area/security/entry
	name = "\improper Security Entrance"
	icon_state = "security"
	req_access = list(access_sec_doors)

/area/security/brig
	name = "\improper Brig"
	icon_state = "brig"
	req_access = list(access_brig)

/area/security/warden
	name = "\improper Warden's Office"
	icon_state = "Warden"
	req_access = list(access_armory)

/area/security/detective
	name = "\improper Forensic Technician's Office"
	icon_state = "detective"
	req_access = list(access_forensics_lockers)

/area/security/armoury
	name = "\improper Security Armory"
	icon_state = "armory"
	req_access = list(access_armory)

/area/security/equipment
	name = "\improper Security Equipment Storage"
	icon_state = "security"
	req_access = list(access_security)

/area/security/interrogation
	name = "\improper Security Interview Room"
	icon_state = "detective"
	req_access = list(access_security)

/area/security/processing
	name = "\improper Security Processing"
	icon_state = "security"
	req_access = list(access_security)

/area/hallway/security
	name = "\improper Security Hallway"
	icon_state = "security"
	req_access = list(access_security)

//Command

/area/command/bridge
	name = "\improper Argos Bridge"
	icon_state = "bridge"
	req_access = list(access_bridge)

/area/command/captain
	name = "\improper Captain's Office"
	icon_state = "heads_cap"
	req_access = list(access_captain)

/area/command/captain/bed
	name = "\improper Captain's Quarters"
	icon_state = "captain"

/area/command/bridge/storage
	name = "\improper Bridge Storage"

/area/command/xo
	name = "\improper Executive Officer's Office"
	icon_state = "heads_hop"
	req_access = list(access_hop)

/area/command/hos
	name = "\improper Head of Security's Office"
	icon_state = "heads_hos"
	req_access = list(access_hos)

/area/command/psi
	name = "\improper Psionic Advisor's Office"
	icon_state = "heads_sea"
	req_access = list(access_psiadv)

/area/command/observation
	name = "\improper Third Deck Observation Bubble"
	icon_state = "crew_quarters"

