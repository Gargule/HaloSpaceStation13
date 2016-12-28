
/datum/job/UNSC_ship/cmdr_wing
	title = "Wing Commander"
	min_rank = RANK_LT
	default_rank = RANK_CDR
	max_rank = OFFICER_MAX
	total_positions = 1
	spawn_positions = 1
	selection_color = "#995500"
	idtype = /obj/item/weapon/card/id/silver
	req_admin_notify = 1
	job_guide = "Your responsibility is to lead the strike craft (fighters, dropships, shuttles) in battle, all pilots are directly under you and the CAG gives you orders from the bridge."

	equip(var/mob/living/carbon/human/H)
		if(!H)	return 0
		H.equip_to_slot_or_del(new /obj/item/device/radio/headset/headset_cargo(H), slot_l_ear)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/unsc/mechanic(H), slot_w_uniform)
		H.equip_to_slot_or_del(new /obj/item/clothing/shoes/workboots(H), slot_shoes)
		H.equip_to_slot_or_del(new /obj/item/device/pda/heads/ce(H), slot_belt)
		return 1

/datum/job/UNSC_ship/cmdr_sqr
	title = "Squadron Commander"
	min_rank = RANK_LT
	default_rank = RANK_LCDR
	max_rank = OFFICER_MAX
	total_positions = 1
	spawn_positions = 1
	selection_color = "#995500"
	idtype = /obj/item/weapon/card/id/silver
	job_guide = "You are the wing commander's 2IC, meaning you help him lead strike craft (fighters, dropships, shuttles) in battle. The CAG will also give orders from the bridge."

	equip(var/mob/living/carbon/human/H)
		if(!H)	return 0
		H.equip_to_slot_or_del(new /obj/item/device/radio/headset/headset_cargo(H), slot_l_ear)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/unsc/mechanic(H), slot_w_uniform)
		H.equip_to_slot_or_del(new /obj/item/clothing/shoes/workboots(H), slot_shoes)
		H.equip_to_slot_or_del(new /obj/item/device/pda/heads/ce(H), slot_belt)
		return 1

/datum/job/UNSC_ship/pilot
	title = "Pilot"
	min_rank = OFFICER_MIN
	default_rank = RANK_LT
	max_rank = RANK_LCDR
	total_positions = -1
	spawn_positions = 3
	selection_color = "#995500"
	alt_titles = list("Fighter Pilot","Dropship Pilot","Logistics Pilot")
	job_guide = "You pilot a fighter, dropship or shuttle. If you're going into battle you will be led by the squadron commander or wing commander, and the CAG will give you orders from the bridge. For routine patrols or supply deliveries, you may act autonomously or be under command of a different officer (eg marine deployments via dropship)."

	equip(var/mob/living/carbon/human/H)
		if(!H)	return 0
		H.equip_to_slot_or_del(new /obj/item/device/radio/headset/headset_cargo(H), slot_l_ear)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/unsc/mechanic(H), slot_w_uniform)
		H.equip_to_slot_or_del(new /obj/item/device/pda/engineering(H), slot_l_store)
		H.equip_to_slot_or_del(new /obj/item/clothing/shoes/workboots(H), slot_shoes)
		return 1

/obj/structure/closet/unsc_wardrobe/pilot
	name = "pilot closet"
	desc = "It's a uniform storage unit for the pilot's squadron."
	icon_state = "orange"
	icon_closed = "orange"

/obj/structure/closet/unsc_wardrobe/pilot/New()
	..()
	new /obj/item/clothing/under/unsc/mechanic(src)
	new /obj/item/clothing/shoes/workboots(src)
	new /obj/item/device/radio/headset/headset_cargo(src)
	new /obj/item/clothing/under/unsc/mechanic(src)
	new /obj/item/clothing/shoes/workboots(src)
	new /obj/item/device/radio/headset/headset_cargo(src)
