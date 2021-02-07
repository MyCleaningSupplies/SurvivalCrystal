    object_const_def
    const WAVERINGFALLS_POKE_BALL
    const WAVERINGFALLS_YOUNGSTER

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
    iffalse DidntChooseMachopScript
    disappear WAVERINGFALLS_POKE_BALL
    promptbutton
    waitsfx
    getmonname STRING_BUFFER_3, MACHOP
    writetext RecievedMachopText
    playsound SFX_CAUGHT_MON
    waitsfx
    promptbutton
    givepoke MACHOP, 10, BERRY
    closetext
    end

DidntChooseMachopScript:
	writetext DidntChooseMachopText
	waitbutton
	closetext
	end

TakeMachopText:
	text "Take this"
	line "MACHOP, the"
	cont "fighting #MON?"
	done

RecievedMachopText:
    text "Hopefully this'll"
    line "help out."
    done   

DidntChooseMachopText:
	text "I need a partner"
	line "to enter the CAVE."

	done

TrainerYoungsterHoly:
	trainer YOUNGSTER, HOLY, EVENT_BEAT_YOUNGSTER_HOLY, YoungsterHolySeenText, YoungsterHolyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext YoungsterHolyAfterText
	waitbutton
	closetext
    disappear WAVERINGFALLS_YOUNGSTER
	end

YoungsterHolySeenText:
	text "You're a #MON"
	line "trainer, right?"

	para "I gotta get to the"
	line "bottom of the"
    cont "CAVE!"
	done

YoungsterHolyBeatenText:
	text "Damn, this SUCKS."
	line "I won before."
	done

YoungsterHolyAfterText:
	text "Please leave,"
	line "I need to place a"
	cont "phone call."

	done


WaveringFallsOutside_MapEvents:
    db 0, 0 ; filler

    def_warp_events
    warp_event 10, 1, WAVERING_FALLS_1F, 1

    def_coord_events

    def_bg_events

    def_object_events
    object_event 5, 12, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MachopPokeBallScript, EVENT_GOT_TOTODILE_FROM_ELM
    object_event 12, 2, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerYoungsterHoly, -1

