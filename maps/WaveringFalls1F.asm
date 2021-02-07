    object_const_def

WaveringFalls1F_MapScripts:
    def_scene_scripts

    def_callbacks

TrainerHikerGeoff:
	trainer HIKER, GEOFF, EVENT_BEAT_HIKER_GEOFF, HikerGeoffSeenText, HikerGeoffBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerGeoffAfterText
	waitbutton
	closetext
	end

HikerGeoffSeenText:
	text "MY DAMN FEET"
	line "HURT BRUH"

	para "I NEED SOME "
	line "NEW KICKS!"
	done

HikerGeoffBeatenText:
	text "My FEET HURT"
	line "EVEN MORE NOW!"
	done

HikerGeoffAfterText:
	text "I'm gonna sue this"
	line "trashy hiking boot"
	cont "manufacturer."

	done



WaveringFalls1F_MapEvents:
    db 0,0 ; filler

    def_warp_events
    warp_event 9, 16, WAVERING_FALLS_OUTSIDE, 1
    warp_event 15, 13, WAVERING_FALLS_2F, 1 


    def_coord_events

    def_bg_events

    def_object_events
    object_event 6, 7, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerHikerGeoff, -1

