/obj/item/organ/external/throom
	name = "stalk"
	amputation_point = "flesh"
	joint = "structural ligament"
	dislocated = -1
	limb_flags = ORGAN_FLAG_CAN_AMPUTATE
	force_icon = 'icons/mob/human_races/species/throom/body.dmi'

/obj/item/organ/external/throom/arm
	name = "left arm"
	organ_tag = BP_L_ARM
	icon_name = "l_arm"
	max_damage = 100
	min_broken_damage = 50
	w_class = ITEM_SIZE_NORMAL
	body_part = ARM_LEFT
	parent_organ = BP_CHEST
	limb_flags = ORGAN_FLAG_CAN_AMPUTATE | ORGAN_FLAG_CAN_GRASP

/obj/item/organ/external/throom/arm/right
	name = "right arm"
	organ_tag = BP_R_ARM
	icon_name = "r_arm"
	body_part = ARM_RIGHT

/obj/item/organ/external/throom/leg
	name = "left leg"
	organ_tag = BP_L_LEG
	icon_name = "l_leg"
	max_damage = 100
	min_broken_damage = 50
	w_class = ITEM_SIZE_NORMAL
	body_part = LEG_LEFT
	icon_position = LEFT
	parent_organ = BP_GROIN
	limb_flags = ORGAN_FLAG_CAN_AMPUTATE | ORGAN_FLAG_CAN_STAND

/obj/item/organ/external/throom/leg/right
	name = "right leg"
	organ_tag = BP_R_LEG
	icon_name = "r_leg"
	body_part = LEG_RIGHT
	icon_position = RIGHT

/obj/item/organ/external/throom/foot
	name = "left nub"
	organ_tag = BP_L_FOOT
	icon_name = "l_foot"
	max_damage = 100
	min_broken_damage = 50
	w_class = ITEM_SIZE_SMALL
	body_part = FOOT_LEFT
	icon_position = LEFT
	parent_organ = BP_L_LEG
	limb_flags = ORGAN_FLAG_CAN_AMPUTATE | ORGAN_FLAG_CAN_STAND

/obj/item/organ/external/throom/foot/right
	name = "right nub"
	organ_tag = BP_R_FOOT
	icon_name = "r_foot"
	body_part = FOOT_RIGHT
	icon_position = RIGHT
	parent_organ = BP_R_LEG
	joint = "right ankle"
	amputation_point = "right ankle"

/obj/item/organ/external/throom/hand
	name = "left grubber"
	organ_tag = BP_L_HAND
	icon_name = "l_hand"
	max_damage = 30
	min_broken_damage = 15
	w_class = ITEM_SIZE_SMALL
	body_part = HAND_LEFT
	parent_organ = BP_L_ARM
	limb_flags = ORGAN_FLAG_CAN_AMPUTATE | ORGAN_FLAG_CAN_GRASP
	pass_flags = PASS_FLAG_TABLE

/obj/item/organ/external/throom/hand/right
	name = "right grubber"
	organ_tag = BP_R_HAND
	icon_name = "r_hand"
	body_part = HAND_RIGHT
	parent_organ = BP_R_ARM

/obj/item/organ/external/throom/chest
	name = "stem"
	organ_tag = BP_CHEST
	icon_name = "torso_m"
	max_damage = 200
	min_broken_damage = 100
	w_class = ITEM_SIZE_HUGE
	cavity_max_w_class = ITEM_SIZE_NORMAL
	body_part = UPPER_TORSO
	vital = 1
	parent_organ = null
	limb_flags = ORGAN_FLAG_HEALS_OVERKILL

/obj/item/organ/external/throom/groin
	name = "volva"
	organ_tag = BP_GROIN
	icon_name = "groin_m"
	max_damage = 100
	min_broken_damage = 50
	w_class = ITEM_SIZE_LARGE
	cavity_max_w_class = ITEM_SIZE_SMALL
	body_part = LOWER_TORSO
	parent_organ = BP_CHEST

/obj/item/organ/external/head/throom
	name = "cap"
	max_damage = 100
	min_broken_damage = 50
	glowing_eyes = TRUE
	limb_flags = ORGAN_FLAG_CAN_AMPUTATE
	cavity_max_w_class = ITEM_SIZE_SMALL
	icon_name = "head_m"
	force_icon = 'icons/mob/human_races/species/throom/body.dmi'

/obj/item/organ/external/head/throom/removed()
	if(BP_IS_ROBOTIC(src))
		return ..()
	var/mob/living/carbon/human/H = owner
	..()
	if(!istype(H) || !H.organs || !H.organs.len)
		H.death()