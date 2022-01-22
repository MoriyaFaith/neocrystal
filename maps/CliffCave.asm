	object_const_def


CliffCave_MapScripts:
	def_scene_scripts

	def_callbacks

CliffCave_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 19, ROUTE_47, 2
	warp_event  7,  9, ROUTE_47, 3
	warp_event  5, 33, ROUTE_47, 4
	warp_event  3, 17, CLIFF_CAVE, 6
	warp_event  7, 17, CLIFF_CAVE, 7
	warp_event  3,  3, CLIFF_CAVE, 4
	warp_event  7, 27, CLIFF_CAVE, 5
	warp_event 29,  9, CIANWOOD_CITY, 8
	warp_event 27, 29, ROUTE_47, 1

	def_coord_events

	def_bg_events

	def_object_events

