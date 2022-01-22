	const_def
	const PAL_TOWNMAP_BORDER   ; 0
	const PAL_TOWNMAP_EARTH    ; 1
	const PAL_TOWNMAP_MOUNTAIN ; 2
	const PAL_TOWNMAP_CITY     ; 3
	const PAL_TOWNMAP_POI      ; 4
	const PAL_TOWNMAP_POI_MTN  ; 5

townmappals: MACRO
rept _NARG / 2
	dn PAL_TOWNMAP_\2, PAL_TOWNMAP_\1
	shift 2
endr
ENDM

; gfx/pokegear/town_map.png
	townmappals EARTH,    EARTH,    EARTH,    MOUNTAIN, EARTH,    MOUNTAIN, BORDER,   BORDER
	townmappals CITY,     CITY,     BORDER,   EARTH,    POI,      POI_MTN,  POI,      POI_MTN
	townmappals EARTH,    EARTH,    EARTH,    EARTH,    POI_MTN,  EARTH,    BORDER,   BORDER
	townmappals CITY,     CITY,     CITY,     EARTH,    EARTH,    CITY,     CITY,     CITY
	townmappals EARTH,    EARTH,    EARTH,    MOUNTAIN, EARTH,    MOUNTAIN, BORDER,   BORDER
	townmappals BORDER,   BORDER,   BORDER,   BORDER,   POI_MTN,  POI_MTN,  POI_MTN,  POI_MTN
; gfx/pokegear/pokegear.png
	townmappals CITY,   CITY,   CITY,   CITY,   POI,      POI,      POI,      CITY
	townmappals CITY,   CITY,   CITY,   CITY,   CITY,   CITY,   CITY,   CITY
	townmappals BORDER,     BORDER,     BORDER,     BORDER,     BORDER,     BORDER,     BORDER,     BORDER
	townmappals BORDER,     BORDER,     BORDER,     BORDER,     BORDER,     BORDER,     BORDER,     CITY
	townmappals BORDER,     BORDER,     BORDER,     BORDER,     BORDER,     BORDER,     BORDER,     BORDER
	townmappals CITY,   CITY,   CITY,   CITY,   CITY,   CITY,   CITY,   CITY
