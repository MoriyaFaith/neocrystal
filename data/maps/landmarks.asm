landmark: MACRO
; x, y, name
	db \1 + 8, \2 + 16
	dw \3
ENDM

Landmarks:
; entries correspond to constants/landmark_constants.asm
	table_width 4, Landmarks
	dbbw       0,   0, SpecialMapName
	landmark 140, 100, NewBarkTownName
	landmark 124, 100, Route29Name
	landmark 108, 100, CherrygroveCityName
	landmark 108,  88, Route30Name
	landmark 104,  76, Route31Name
	landmark  92,  76, VioletCityName
	landmark  94,  74, SproutTowerName
	landmark  88, 100, Route32Name
	landmark  84, 124, UnionCaveName
	landmark  76, 112, RuinsOfAlphName
	landmark  76, 124, Route33Name
	landmark  68, 124, AzaleaTownName
	landmark  70, 122, SlowpokeWellName
	landmark  60, 124, IlexForestName
	landmark  60, 112, Route34Name
	landmark  60, 100, GoldenrodCityName
	landmark  58, 100, RadioTowerName
	landmark  60,  88, Route35Name
	landmark  60,  76, NationalParkName
	landmark  76,  76, Route36Name
	landmark  76,  68, Route37Name
	landmark  76,  60, EcruteakCityName
	landmark  78,  58, TinTowerName
	landmark  74,  58, BurnedTowerName
	landmark  56,  60, Route38Name
	landmark  44,  68, Route39Name
	landmark  44,  76, OlivineCityName
	landmark  46,  78, LighthouseName
	landmark  36,  68, BattleTowerName
	landmark  36,  88, Route40Name
	landmark  36, 108, WhirlIslandsName
	landmark  36, 116, Route41Name
	landmark  28, 116, CianwoodCityName
	landmark  20, 116, Route47Name
	landmark  20, 112, CliffCaveName
	landmark  20, 108, Route48Name
	landmark  88,  60, Route42Name
	landmark  92,  60, MtMortarName
	landmark 108,  60, MahoganyTownName
	landmark 108,  48, Route43Name
	landmark 108,  36, LakeOfRageName
	landmark 116,  60, Route44Name
	landmark 124,  60, IcePathName
	landmark 132,  60, BlackthornCityName
	landmark 132,  52, DragonsDenName
	landmark 132,  76, Route45Name
	landmark 124,  76, DarkCaveName
	landmark 124,  92, Route46Name

	landmark  20,  92, Route49Name
	landmark  24,  60, Route50Name
	landmark  28,  44, VictoryRoadName
	landmark  28,  28, GoldenTowerName

	landmark 148,  68, SilverCaveName

	assert_table_length KANTO_LANDMARK
	landmark  52, 108, PalletTownName
	landmark  52,  92, Route1Name
	landmark  52,  76, ViridianCityName
	landmark  52,  64, Route2Name
	landmark  52,  52, PewterCityName
	landmark  64,  52, Route3Name
	landmark  76,  52, MtMoonName
	landmark  88,  52, Route4Name
	landmark 100,  52, CeruleanCityName
	landmark 100,  44, Route24Name
	landmark 108,  36, Route25Name
	landmark 100,  60, Route5Name
	landmark 108,  76, UndergroundName
	landmark 100,  76, Route6Name
	landmark 100,  84, VermilionCityName
	landmark  88,  60, DiglettsCaveName
	landmark  88,  68, Route7Name
	landmark 116,  68, Route8Name
	landmark 116,  52, Route9Name
	landmark 132,  52, RockTunnelName
	landmark 132,  56, Route10Name
	landmark 132,  60, PowerPlantName
	landmark 132,  68, LavenderTownName
	landmark 140,  68, LavRadioTowerName
	landmark  76,  68, CeladonCityName
	landmark 100,  68, SaffronCityName
	landmark 116,  84, Route11Name
	landmark 132,  80, Route12Name
	landmark 124, 100, Route13Name
	landmark 116, 112, Route14Name
	landmark 104, 116, Route15Name
	landmark  68,  68, Route16Name
	landmark  68,  92, Route17Name
	landmark  80, 116, Route18Name
	landmark  92, 116, FuchsiaCityName
	landmark  92, 128, Route19Name
	landmark  76, 132, Route20Name
	landmark  68, 132, SeafoamIslandsName
	landmark  52, 132, CinnabarIslandName
	landmark  52, 120, Route21Name
	landmark  36,  68, Route22Name
	landmark  28,  44, Route23Name
	landmark  28,  36, IndigoPlateauName
	landmark  28,  92, Route26Name
	landmark  20, 100, Route27Name
	landmark  12, 100, TohjoFallsName
	landmark  20,  68, Route28Name
	landmark 140, 116, FastShipName
	assert_table_length NUM_LANDMARKS

NewBarkTownName:     db "NEW BARK¯TOWN@"
CherrygroveCityName: db "CHERRYGROVE¯CITY@"
VioletCityName:      db "VIOLET CITY@"
AzaleaTownName:      db "AZALEA TOWN@"
GoldenrodCityName:   db "GOLDENROD¯CITY@"
EcruteakCityName:    db "ECRUTEAK¯CITY@"
OlivineCityName:     db "OLIVINE¯CITY@"
CianwoodCityName:    db "CIANWOOD¯CITY@"
MahoganyTownName:    db "MAHOGANY¯TOWN@"
BlackthornCityName:  db "BLACKTHORN¯CITY@"
LakeOfRageName:      db "LAKE OF¯RAGE@"
SilverCaveName:      db "SILVER CAVE@"
SproutTowerName:     db "SPROUT¯TOWER@"
RuinsOfAlphName:     db "RUINS¯OF ALPH@"
UnionCaveName:       db "UNION CAVE@"
SlowpokeWellName:    db "SLOWPOKE¯WELL@"
RadioTowerName:      db "RADIO TOWER@"
PowerPlantName:      db "POWER PLANT@"
NationalParkName:    db "NATIONAL¯PARK@"
TinTowerName:        db "TIN TOWER@"
LighthouseName:      db "LIGHTHOUSE@"
WhirlIslandsName:    db "WHIRL¯ISLANDS@"
MtMortarName:        db "MT.MORTAR@"
DragonsDenName:      db "DRAGON'S¯DEN@"
IcePathName:         db "ICE PATH@"
NotApplicableName:   db "N/A@" ; unreferenced ; "オバケやしき" ("HAUNTED HOUSE") in Japanese
PalletTownName:      db "PALLET TOWN@" ; unreferenced
ViridianCityName:    db "VIRIDIAN¯CITY@" ; unreferenced
PewterCityName:      db "PEWTER CITY@" ; unreferenced
CeruleanCityName:    db "CERULEAN¯CITY@" ; unreferenced
LavenderTownName:    db "LAVENDER¯TOWN@" ; unreferenced
VermilionCityName:   db "VERMILION¯CITY@" ; unreferenced
CeladonCityName:     db "CELADON¯CITY@" ; unreferenced
SaffronCityName:     db "SAFFRON¯CITY@" ; unreferenced
FuchsiaCityName:     db "FUCHSIA¯CITY@" ; unreferenced
CinnabarIslandName:  db "CINNABAR¯ISLAND@" ; unreferenced
IndigoPlateauName:   db "INDIGO¯PLATEAU@" ; unreferenced
VictoryRoadName:     db "VICTORY¯ROAD@" ; unreferenced
MtMoonName:          db "MT.MOON@" ; unreferenced
RockTunnelName:      db "ROCK TUNNEL@" ; unreferenced
LavRadioTowerName:   db "LAV¯RADIO TOWER@" ; unreferenced
SilphCoName:         db "SILPH CO.@" ; unreferenced
SafariZoneName:      db "SAFARI ZONE@" ; unreferenced
SeafoamIslandsName:  db "SEAFOAM¯ISLANDS@" ; unreferenced
PokemonMansionName:  db "#MON¯MANSION@" ; unreferenced
CeruleanCaveName:    db "CERULEAN¯CAVE@" ; unreferenced
Route1Name:          db "ROUTE 1@" ; unreferenced
Route2Name:          db "ROUTE 2@" ; unreferenced
Route3Name:          db "ROUTE 3@" ; unreferenced
Route4Name:          db "ROUTE 4@" ; unreferenced
Route5Name:          db "ROUTE 5@" ; unreferenced
Route6Name:          db "ROUTE 6@" ; unreferenced
Route7Name:          db "ROUTE 7@" ; unreferenced
Route8Name:          db "ROUTE 8@" ; unreferenced
Route9Name:          db "ROUTE 9@" ; unreferenced
Route10Name:         db "ROUTE 10@" ; unreferenced
Route11Name:         db "ROUTE 11@" ; unreferenced
Route12Name:         db "ROUTE 12@" ; unreferenced
Route13Name:         db "ROUTE 13@" ; unreferenced
Route14Name:         db "ROUTE 14@" ; unreferenced
Route15Name:         db "ROUTE 15@" ; unreferenced
Route16Name:         db "ROUTE 16@" ; unreferenced
Route17Name:         db "ROUTE 17@" ; unreferenced
Route18Name:         db "ROUTE 18@" ; unreferenced
Route19Name:         db "ROUTE 19@" ; unreferenced
Route20Name:         db "ROUTE 20@" ; unreferenced
Route21Name:         db "ROUTE 21@" ; unreferenced
Route22Name:         db "ROUTE 22@" ; unreferenced
Route23Name:         db "ROUTE 23@" ; unreferenced
Route24Name:         db "ROUTE 24@" ; unreferenced
Route25Name:         db "ROUTE 25@" ; unreferenced
Route26Name:         db "ROUTE 21@" ; unreferenced
Route27Name:         db "ROUTE 22@" ; unreferenced
Route28Name:         db "ROUTE 23@" ; unreferenced
; All Johto Routes have been renamed
Route29Name:         db "JOHTO¯ROUTE 1@"
Route30Name:         db "JOHTO¯ROUTE 2@"
Route31Name:         db "JOHTO¯ROUTE 3@"
Route32Name:         db "JOHTO¯ROUTE 4@"
Route33Name:         db "JOHTO¯ROUTE 5@"
Route34Name:         db "JOHTO¯ROUTE 6@"
Route35Name:         db "JOHTO¯ROUTE 7@"
Route36Name:         db "JOHTO¯ROUTE 8@"
Route37Name:         db "JOHTO¯ROUTE 9@"
Route38Name:         db "JOHTO¯ROUTE 10@"
Route39Name:         db "JOHTO¯ROUTE 11@"
Route40Name:         db "JOHTO¯ROUTE 12@"
Route41Name:         db "JOHTO¯ROUTE 13@"
Route42Name:         db "JOHTO¯ROUTE 14@"
Route43Name:         db "JOHTO¯ROUTE 15@"
Route44Name:         db "JOHTO¯ROUTE 16@"
Route45Name:         db "JOHTO¯ROUTE 17@"
Route46Name:         db "JOHTO¯ROUTE 18@"
Route47Name:         db "JOHTO¯ROUTE 19@"
Route48Name:         db "JOHTO¯ROUTE 20@"
Route49Name:		 db "JOHTO¯ROUTE 21@"
Route50Name:		 db "JOHTO¯ROUTE 22@"
DarkCaveName:        db "DARK CAVE@"
IlexForestName:      db "ILEX¯FOREST@"
BurnedTowerName:     db "BURNED¯TOWER@"
FastShipName:        db "FAST SHIP@"
ViridianForestName:  db "VIRIDIAN¯FOREST@" ; unreferenced
DiglettsCaveName:    db "DIGLETT'S¯CAVE@" ; unreferenced
TohjoFallsName:      db "TOHJO FALLS@" ; unreferenced
UndergroundName:     db "UNDERGROUND@"
BattleTowerName:     db "BATTLE¯TOWER@"
SpecialMapName:      db "SPECIAL@"
CliffCaveName:       db "CLIFF CAVE@"
GoldenTowerName:	 db "GOLDEN¯TOWER@"
