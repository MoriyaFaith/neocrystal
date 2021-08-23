	object_const_def
	const ROUTE47_POKEFAN_M
	const ROUTE47_ROCKER
	const ROUTE47_YOUNGSTER
	const ROUTE47_POKEFAN_F

Route47_MapScripts:
	def_scene_scripts
	scene_script .DummyScene0 ; SCENE_ALWAYS
	scene_script .DummyScene1 ; SCENE_ALWAYS

	def_callbacks
	callback MAPCALLBACK_TILES, Route47TileScript
	
.DummyScene0:
	end

.DummyScene1:
	end	

Route47TileScript:
	checkscene
	iftrue .underfoot
	callasm .overhead_asm
	return

.underfoot:
	callasm .underfoot_asm
	return

.overhead_asm:
	; bridge 1
	changebridgeblock 42, 24, $a6, ROUTE_47
	changebridgeblock 44, 24, $8a, ROUTE_47
	changebridgeblock 46, 24, $8a, ROUTE_47
	changebridgeblock 48, 24, $8a, ROUTE_47
	changebridgeblock 50, 24, $a7, ROUTE_47
	; bridge 2
	changebridgeblock 44, 18, $a4, ROUTE_47
	changebridgeblock 46, 18, $a4, ROUTE_47
	changebridgeblock 48, 18, $a4, ROUTE_47
	; bridge 3
	changebridgeblock 20, 24, $a4, ROUTE_47
	changebridgeblock 22, 24, $a4, ROUTE_47
	changebridgeblock 24, 24, $a4, ROUTE_47
	; bridge 4
	changebridgeblock 18, 16, $a6, ROUTE_47
	changebridgeblock 20, 16, $8a, ROUTE_47
	changebridgeblock 22, 16, $8a, ROUTE_47
	changebridgeblock 24, 16, $8a, ROUTE_47
	changebridgeblock 26, 16, $a8, ROUTE_47
	jp BufferScreen

.underfoot_asm:
	; bridge 1
	changebridgeblock 42, 24, $94, ROUTE_47
	changebridgeblock 44, 24, $a5, ROUTE_47
	changebridgeblock 46, 24, $a5, ROUTE_47
	changebridgeblock 48, 24, $a5, ROUTE_47
	changebridgeblock 50, 24, $95, ROUTE_47
	; bridge 2
	changebridgeblock 44, 18, $a5, ROUTE_47
	changebridgeblock 46, 18, $a5, ROUTE_47
	changebridgeblock 48, 18, $a5, ROUTE_47
	; bridge 3
	changebridgeblock 20, 24, $a5, ROUTE_47
	changebridgeblock 22, 24, $a5, ROUTE_47
	changebridgeblock 24, 24, $a5, ROUTE_47
	; bridge 4
	changebridgeblock 18, 16, $94, ROUTE_47
	changebridgeblock 20, 16, $a5, ROUTE_47
	changebridgeblock 22, 16, $a5, ROUTE_47
	changebridgeblock 24, 16, $a5, ROUTE_47
	changebridgeblock 26, 16, $89, ROUTE_47
	jp BufferScreen

Route47_FinishOverheadBridge:
	xor a
	ld [wRoute47SceneID], a ; setscene a
	ret

Route47_FinishUnderfootBridge:
	ld a, $1
	ld [wRoute47SceneID], a ; setscene a
	call GetMovementPermissions
	call RefreshScreen ; refreshscreen
	ret

Route47Bridge1OverheadTrigger:
	callthisasm
	changebridgeblock 42, 24, $a6, ROUTE_47
	changebridgeblock 44, 24, $8a, ROUTE_47
	changebridgeblock 46, 24, $8a, ROUTE_47
	changebridgeblock 48, 24, $8a, ROUTE_47
	changebridgeblock 50, 24, $a7, ROUTE_47
	reloadmappart
	jp Route47_FinishOverheadBridge

Route47Bridge1UnderfootTrigger:
	callthisasm
	changebridgeblock 42, 24, $94, ROUTE_47
	changebridgeblock 44, 24, $a5, ROUTE_47
	changebridgeblock 46, 24, $a5, ROUTE_47
	changebridgeblock 48, 24, $a5, ROUTE_47
	changebridgeblock 50, 24, $95, ROUTE_47
	reloadmappart
	jp Route47_FinishUnderfootBridge

Route47Bridge2OverheadTrigger:
	callthisasm
	changebridgeblock 44, 18, $a4, ROUTE_47
	changebridgeblock 46, 18, $a4, ROUTE_47
	changebridgeblock 48, 18, $a4, ROUTE_47
	reloadmappart
	jp Route47_FinishOverheadBridge

Route47Bridge2UnderfootTrigger:
	callthisasm
	changebridgeblock 44, 18, $a5, ROUTE_47
	changebridgeblock 46, 18, $a5, ROUTE_47
	changebridgeblock 48, 18, $a5, ROUTE_47
	reloadmappart
	jp Route47_FinishUnderfootBridge

Route47Bridge3OverheadTrigger:
	callthisasm
	changebridgeblock 20, 24, $a4, ROUTE_47
	changebridgeblock 22, 24, $a4, ROUTE_47
	changebridgeblock 24, 24, $a4, ROUTE_47
	reloadmappart
	jp Route47_FinishOverheadBridge

Route47Bridge3UnderfootTrigger:
	callthisasm
	changebridgeblock 20, 24, $a5, ROUTE_47
	changebridgeblock 22, 24, $a5, ROUTE_47
	changebridgeblock 24, 24, $a5, ROUTE_47
	reloadmappart
	jp Route47_FinishUnderfootBridge

Route47Bridge4OverheadTrigger:
	callthisasm
	changebridgeblock 18, 16, $a6, ROUTE_47
	changebridgeblock 20, 16, $8a, ROUTE_47
	changebridgeblock 22, 16, $8a, ROUTE_47
	changebridgeblock 24, 16, $8a, ROUTE_47
	changebridgeblock 26, 16, $a8, ROUTE_47
	reloadmappart
	jp Route47_FinishOverheadBridge

Route47Bridge4UnderfootTrigger:
	callthisasm
	changebridgeblock 18, 16, $94, ROUTE_47
	changebridgeblock 20, 16, $a5, ROUTE_47
	changebridgeblock 22, 16, $a5, ROUTE_47
	changebridgeblock 24, 16, $a5, ROUTE_47
	changebridgeblock 26, 16, $89, ROUTE_47
	reloadmappart
	jp Route47_FinishUnderfootBridge

TrainerHikerDevin:
	trainer HIKER, DEVIN, EVENT_BEAT_HIKER_DEVIN, HikerDevinSeenText, HikerDevinBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerDevinAfterBattleText
	waitbutton
	closetext
	end

TrainerCoolTrainerThom:
	trainer COOLTRAINERM, THOM, EVENT_BEAT_COOLTRAINERM_THOM, CoolTrainerThomSeenText, CoolTrainerThomBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CoolTrainerThomAfterBattleText
	waitbutton
	closetext
	end

TrainerCamperGrant:
	trainer CAMPER, GRANT, EVENT_BEAT_CAMPER_GRANT, CamperGrantSeenText, CamperGrantBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CamperGrantAfterBattleText
	waitbutton
	closetext
	end

TrainerPokeFanFEda:
	trainer POKEFANF, EDA, EVENT_BEAT_POKEFANF_EDA, PokeFanFEdaSeenText, PokeFanFEdaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokeFanFEdaAfterBattleText
	waitbutton
	closetext
	end

HikerDevinSeenText:
	text "Longing for others"
	line "is… what it is."

	para "But battles are"
	line "battles,"
	cont "so let's go!"
	done

HikerDevinBeatenText:
	text "Wah ha ha!"
	done

HikerDevinAfterBattleText:
	text "After a battle,"
	line "you always leave"
	cont "with a parting"
	cont "laugh!"
	done

CamperGrantSeenText:
	text "I'm not good with"
	line "crowds, so I'm"
	cont "camping out here"
	cont "with my #mon!"

	para "Are you the same"
	line "way?"
	done

CamperGrantBeatenText:
	text "I should head"
	line "deeper into the"
	cont "mountain…"
	done

CamperGrantAfterBattleText:
	text "See ya!"
	done

CoolTrainerThomSeenText:
	text "Me and my #MON"
	line "aren't just some"
	cont "boring team!"
	done

CoolTrainerThomBeatenText:
	text "That wasn't what I"
	line "expected…"
	done

CoolTrainerThomAfterBattleText:
	text "Your power is"
	line "impossible to"
	cont "predict!"
	done

PokeFanFEdaSeenText:
	text "My feelings for my"
	line "boyfriend are as"

	para "wide and deep as"
	line "the ocean."
	done

PokeFanFEdaBeatenText:
	text "You're really"
	line "something…"
	done

PokeFanFEdaAfterBattleText:
	text "You should find a"
	line "wonderful partner,"
	cont "too."
	done


Route47_MapEvents:
	db 0, 0 ; filler
	def_warp_events
	warp_event 67, 21, CIANWOOD_CITY, 8
	warp_event 53, 21, CLIFF_CAVE, 1
	warp_event 52, 17, CLIFF_CAVE, 2
	warp_event 53, 29, CLIFF_CAVE, 3

	def_coord_events
	coord_event 42, 24, SCENE_ALWAYS, Route47Bridge1OverheadTrigger
	coord_event 42, 25, SCENE_ALWAYS, Route47Bridge1OverheadTrigger
	coord_event 51, 24, SCENE_ALWAYS, Route47Bridge1OverheadTrigger
	coord_event 51, 25, SCENE_ALWAYS, Route47Bridge1OverheadTrigger
	coord_event 43, 24, SCENE_ALWAYS, Route47Bridge1UnderfootTrigger
	coord_event 43, 25, SCENE_ALWAYS, Route47Bridge1UnderfootTrigger
	coord_event 50, 24, SCENE_ALWAYS, Route47Bridge1UnderfootTrigger
	coord_event 50, 25, SCENE_ALWAYS, Route47Bridge1UnderfootTrigger
	coord_event 42, 18, SCENE_ALWAYS, Route47Bridge2OverheadTrigger
	coord_event 42, 19, SCENE_ALWAYS, Route47Bridge2OverheadTrigger
	coord_event 51, 18, SCENE_ALWAYS, Route47Bridge2OverheadTrigger
	coord_event 51, 19, SCENE_ALWAYS, Route47Bridge2OverheadTrigger
	coord_event 43, 18, SCENE_ALWAYS, Route47Bridge2UnderfootTrigger
	coord_event 43, 19, SCENE_ALWAYS, Route47Bridge2UnderfootTrigger
	coord_event 50, 18, SCENE_ALWAYS, Route47Bridge2UnderfootTrigger
	coord_event 50, 19, SCENE_ALWAYS, Route47Bridge2UnderfootTrigger
	coord_event 18, 24, SCENE_ALWAYS, Route47Bridge3OverheadTrigger
	coord_event 18, 25, SCENE_ALWAYS, Route47Bridge3OverheadTrigger
	coord_event 27, 24, SCENE_ALWAYS, Route47Bridge3OverheadTrigger
	coord_event 27, 25, SCENE_ALWAYS, Route47Bridge3OverheadTrigger
	coord_event 19, 24, SCENE_ALWAYS, Route47Bridge3UnderfootTrigger
	coord_event 19, 25, SCENE_ALWAYS, Route47Bridge3UnderfootTrigger
	coord_event 26, 24, SCENE_ALWAYS, Route47Bridge3UnderfootTrigger
	coord_event 26, 25, SCENE_ALWAYS, Route47Bridge3UnderfootTrigger
	coord_event 18, 16, SCENE_ALWAYS, Route47Bridge4OverheadTrigger
	coord_event 18, 17, SCENE_ALWAYS, Route47Bridge4OverheadTrigger
	coord_event 27, 16, SCENE_ALWAYS, Route47Bridge4OverheadTrigger
	coord_event 27, 17, SCENE_ALWAYS, Route47Bridge4OverheadTrigger
	coord_event 19, 16, SCENE_ALWAYS, Route47Bridge4UnderfootTrigger
	coord_event 19, 17, SCENE_ALWAYS, Route47Bridge4UnderfootTrigger
	coord_event 26, 16, SCENE_ALWAYS, Route47Bridge4UnderfootTrigger
	coord_event 26, 17, SCENE_ALWAYS, Route47Bridge4UnderfootTrigger
	def_bg_events

	def_object_events
	object_event 59, 26, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerHikerDevin, -1
	object_event 53, 18, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerCoolTrainerThom, -1
	object_event 40, 24, SPRITE_CAMPER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerCamperGrant, -1
	object_event 25,  6, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerPokeFanFEda, -1
