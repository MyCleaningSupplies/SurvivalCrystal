    object_const_def

WaveringFallsOutside_MapScripts:
    def_scene_scripts

    def_callbacks

MachopPokeBallScript:
    refreshscreen
    pokepic MACHOP
    cry MACHOP
    waitbutton
    closepokepic
    opentext
    writetext TakeMachopText
    yesorno
    iffalse DidntChooseMachopText
    disappear ELMSLAB_POKE_BALL2
    setevent EVENT_GOT_TOTODILE_FROM_ELM
    promptbutton
    waitsfx
    getmonname STRING_BUFFER_3, MACHOP
    writetext ReceivedStarterText
    playsound SFX_CAUGHT_MON
    waitsfx
    promptbutton
    givepoke MACHOP, 10, BERRY
    closetext
    end

TakeMachopText:
	text "Take this"
	line "TOTODILE, the"
	cont "fighting #MON?"
	done


DidntChooseMachopText:
	text "I need a partner"
	line "to enter the CAVE."

	done

WaveringFallsOutside_MapEvents:
    db 0, 0 ; filler

    def_warp_events
    warp_event 10, 1, WAVERING_FALLS_1F, 1

    def_coord_events

    def_bg_events

    def_object_events
    object_event  4,  12, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MachopPokeBallScript, EVENT_TOTODILE_POKEBALL_IN_ELMS_LAB

