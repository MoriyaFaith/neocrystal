	object_const_def
	const ROUTE48_POKE_BALL

Route48_MapScripts:
	def_scene_scripts

	def_callbacks

Route48MetalCoat:
	itemball METAL_COAT

Route48PharmacySign:
	jumptext Route48PharmacySignText

Route48PharmacySignText:
	text "500 Years of"
	line "Tradition"

	para "CIANWOOD CITY"
	line "PHARMACY"

	para "We Await Your"
	line "Medicinal Queries"
	done

Route48Sign:
	jumptext Route48SignText

Route48SignText: 
	text "ROUTE 48"
	done
	
Route48_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11,  5, CIANWOOD_PHARMACY, 1
	def_coord_events

	def_bg_events
	bg_event  9,  5, BGEVENT_READ, Route48PharmacySign
	bg_event 27, 11, BGEVENT_READ, Route48Sign

	def_object_events
	object_event  4, 13, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route48MetalCoat, EVENT_ROUTE_48_METALCOAT