extends Node2D


var MackenzieVoiceline1 = load("res://Voicelines/Mackenzie_Encounter_Line1.mp3")
var MackenzieVoiceline2 = load("res://Voicelines/Mackenzie_Encounter_Line2.mp3")
var MackenzieVoiceline3 = load("res://Voicelines/Mackenzie_Encounter_Line3.mp3")
var MichelleVoiceline1 = load("res://Voicelines/Michelle_Line 1.wav")
var MichelleVoiceline2 = load("res://Voicelines/Michelle_Lines 2.wav")
var MichelleVoiceline3 = load("res://Voicelines/Michelle_Lines 3.wav")
var MichelleVoiceline4 = load("res://Voicelines/Michelle_Lines 4.wav")
var MichelleVoiceline5 = load("res://Voicelines/Michelle_Lines Sequence.wav")
var MichelleVoiceline6 = load("res://Voicelines/Michelle_Lines 5.wav")
var MichelleVoiceline7 = load("res://Voicelines/Michelle_Lines 6.wav")
var MichelleVoiceline8 = load("res://Voicelines/Michelle_Lines 7.wav")
var MichelleVoiceline9 = load("res://Voicelines/Michelle_Lines 8.wav")
var ColinVoiceline1 = load("res://Voicelines/IMG_8427.mp3")
var ColinVoiceline2 = load("res://Voicelines/IMG_8437.mp3")
var ColinVoiceline3 = load("res://Voicelines/IMG_8438.mp3")
var ColinVoiceline4 = load("res://Voicelines/IMG_8440.mp3")
var MackenzieVoiceline4 = load("res://Voicelines/Mackenzie 2 Line 1.wav")
var MackenzieVoiceline5 = load("res://Voicelines/Mackenzie_2 Line 2.wav")
var MackenzieVoiceline6 = load("res://Voicelines/Mackenzie_2 Line 3.wav")
var MackenzieVoiceline7 = load("res://Voicelines/Mackenzie_2 Line 4.wav")
var MackenzieVoiceline8 = load("res://Voicelines/Mackenzie_2 Line 5.wav")
var MackenzieVoicelineStart = load("res://Voicelines/Mackenzie_2 Line 1.1.wav")
var BammVoiceline1 = load("res://Voicelines/Bamm_Line 1.wav")
var BammVoiceline2 = load("res://Voicelines/Bamm_Line 2.wav")
var BammVoiceline3 = load("res://Voicelines/Bamm_Line 3.wav")
var BammVoiceline4 = load("res://Voicelines/Bamm Line 3.5.wav")
var BammVoiceline5 = load("res://Voicelines/Bamm_Line 4.wav")
var MackenzieVoiceline9 = load("res://Voicelines/Mackenzie_3 Line 1.wav")
var MackenzieVoiceline10 = load("res://Voicelines/Mackenzie_3 Line 2.wav")
var MackenzieVoiceline11 = load("res://Voicelines/Mackenzie_3 Line 3.wav")
var MackenzieVoiceline12 = load("res://Voicelines/Mackenzie_3 Line 4.wav")
var MackenzieVoiceline13 = load("res://Voicelines/Mackenzie_3 Line 5.wav")
var MackenzieVoiceline14 = load("res://Voicelines/Mackenzie_3 Line 6.wav")
var MackenzieVoiceline15 = load("res://Voicelines/Mackenzie_3 Line 7.wav")
var MackenzieVoiceline16 = load("res://Voicelines/Mackenzie_3 Line 8.wav")
var MackenzieVoiceline17 = load("res://Voicelines/Mackenzie_3 Line 9.wav")
var MackenzieVoiceline18 = load("res://Voicelines/Mackenzie_3 Line 10.wav")
var MackenzieVoiceline19 = load("res://Voicelines/Mackenzie_3 Line 11.wav")
var MackenzieVoiceline20 = load("res://Voicelines/Mackenzie_3 Line 12.wav")
var MackenzieVoiceline21 = load("res://Voicelines/Mackenzie_3 Line 13.wav")
var MackenzieVoiceline22 = load("res://Voicelines/Mackenzie_3 Line 14.wav")
var MackenzieVoiceline23 = load("res://Voicelines/Mackenzie_3 Line 15.wav")
var MackenzieVoiceline24 = load("res://Voicelines/Mackenzie_3 Line 16.wav")
var MackenzieVoiceline25 = load("res://Voicelines/Mackenzie_3 Line 17.wav")
func play_voiceline(number):
	if number == 1:
		$MackenzieVoiceline1.stream = MackenzieVoiceline1
		$MackenzieVoiceline1.play()
	if number == 2: 
		$MackenzieVoiceline2.stream = MackenzieVoiceline2
		$MackenzieVoiceline2.play()
	if number == 3: 
		$MackenzieVoiceline3.stream = MackenzieVoiceline3
		$MackenzieVoiceline3.play()
	if number == 4: 
		$MichelleVoiceline1.stream = MichelleVoiceline1
		$MichelleVoiceline1.play()
	if number == 5: 
		$MichelleVoiceline2.stream = MichelleVoiceline2
		$MichelleVoiceline2.play()
	if number == 6: 
		$MichelleVoiceline3.stream = MichelleVoiceline3
		$MichelleVoiceline3.play()
	if number == 7: 
		$MichelleVoiceline4.stream = MichelleVoiceline4
		$MichelleVoiceline4.play()
	if number == 8: 
		$MichelleVoiceline4.stream = MichelleVoiceline5
		$MichelleVoiceline4.play()
	if number == 9: 
		$MichelleVoiceline5.stream = MichelleVoiceline6
		$MichelleVoiceline5.play()
	if number == 10: 
		$MichelleVoiceline6.stream = MichelleVoiceline7
		$MichelleVoiceline6.play()
	if number == 11: 
		$MichelleVoiceline6.stream = MichelleVoiceline8
		$MichelleVoiceline6.play()
	if number == 12: 
		$MichelleVoiceline6.stream = MichelleVoiceline9
		$MichelleVoiceline6.play()
	if number == 13: 
		$ColinVoiceline1.stream = ColinVoiceline1
		$ColinVoiceline1.play()
	if number == 14: 
		$ColinVoiceline2.stream = ColinVoiceline2
		$ColinVoiceline2.play()
	if number == 15: 
		$ColinVoiceline3.stream = ColinVoiceline3
		$ColinVoiceline3.play()
	if number == 16: 
		$ColinVoiceline4.stream = ColinVoiceline4
		$ColinVoiceline4.play()
	if number == 17: 
		$MackenzieVoiceline4.stream = MackenzieVoiceline4
		$MackenzieVoiceline4.play()
	if number == 18: 
		$MackenzieVoiceline5.stream = MackenzieVoiceline5
		$MackenzieVoiceline5.play()
	if number == 19: 
		$MackenzieVoiceline6.stream = MackenzieVoiceline6
		$MackenzieVoiceline6.play()
	if number == 20: 
		$MackenzieVoiceline7.stream = MackenzieVoiceline7
		$MackenzieVoiceline7.play()
	if number == 21: 
		$MackenzieVoiceline8.stream = MackenzieVoiceline8
		$MackenzieVoiceline8.play()
	if number == 22: 
		$MackenzieVoicelineStart.stream = MackenzieVoicelineStart
		$MackenzieVoicelineStart.play()
	if number == 23: 
		$BammVoiceline1.stream = BammVoiceline1
		$BammVoiceline1.play()
	if number == 24: 
		$BammVoiceline2.stream = BammVoiceline2
		$BammVoiceline2.play()
	if number == 25: 
		$BammVoiceline3.stream = BammVoiceline3
		$BammVoiceline3.play()
	if number == 26: 
		$BammVoiceline4.stream = BammVoiceline4
		$BammVoiceline4.play()
	if number == 27: 
		$BammVoiceline5.stream = BammVoiceline5
		$BammVoiceline5.play()
	if number == 28: 
		$MackenzieVoiceline9.stream = MackenzieVoiceline9
		$MackenzieVoiceline9.play()
	if number == 29: 
		$MackenzieVoiceline10.stream = MackenzieVoiceline10
		$MackenzieVoiceline10.play()
	if number == 30: 
		$MackenzieVoiceline11.stream = MackenzieVoiceline11
		$MackenzieVoiceline11.play()
	if number == 31: 
		$MackenzieVoiceline12.stream = MackenzieVoiceline12
		$MackenzieVoiceline12.play()
	if number == 32: 
		$MackenzieVoiceline13.stream = MackenzieVoiceline13
		$MackenzieVoiceline13.play()
	if number == 33: 
		$MackenzieVoiceline14.stream = MackenzieVoiceline14
		$MackenzieVoiceline14.play()
	if number == 34: 
		$MackenzieVoiceline15.stream = MackenzieVoiceline15
		$MackenzieVoiceline15.play()
	if number == 35: 
		$MackenzieVoiceline16.stream = MackenzieVoiceline16
		$MackenzieVoiceline16.play()
	if number == 36: 
		$MackenzieVoiceline17.stream = MackenzieVoiceline17
		$MackenzieVoiceline17.play()
	if number == 37: 
		$MackenzieVoiceline18.stream = MackenzieVoiceline18
		$MackenzieVoiceline18.play()
	if number == 38: 
		$MackenzieVoiceline19.stream = MackenzieVoiceline19
		$MackenzieVoiceline19.play()
	if number == 39: 
		$MackenzieVoiceline20.stream = MackenzieVoiceline20
		$MackenzieVoiceline20.play()
	if number == 40: 
		$MackenzieVoiceline21.stream = MackenzieVoiceline21
		$MackenzieVoiceline21.play()
	if number == 41: 
		$MackenzieVoiceline22.stream = MackenzieVoiceline22
		$MackenzieVoiceline22.play()
	if number == 42: 
		$MackenzieVoiceline23.stream = MackenzieVoiceline23
		$MackenzieVoiceline23.play()
	if number == 43: 
		$MackenzieVoiceline24.stream = MackenzieVoiceline24
		$MackenzieVoiceline24.play()
	if number == 44: 
		$MackenzieVoiceline25.stream = MackenzieVoiceline25
		$MackenzieVoiceline25.play()
func stop(number):
	if number == 1:
		$MackenzieVoiceline1.stream = MackenzieVoiceline1
		$MackenzieVoiceline1.stop()
	if number == 2:
		$MackenzieVoiceline2.stream = MackenzieVoiceline2
		$MackenzieVoiceline2.stop()
	if number == 3:
		$MackenzieVoiceline3.stream = MackenzieVoiceline3
		$MackenzieVoiceline3.stop()
	if number == 4:
		$MichelleVoiceline1.stream = MichelleVoiceline1
		$MichelleVoiceline1.stop()
	if number == 5:
		$MichelleVoiceline2.stream = MichelleVoiceline2
		$MichelleVoiceline2.stop()
	if number == 6:
		$MichelleVoiceline3.stream = MichelleVoiceline3
		$MichelleVoiceline3.stop()
	if number == 7:
		$MichelleVoiceline4.stream = MichelleVoiceline4
		$MichelleVoiceline4.stop()
	if number == 8:
		$MichelleVoiceline5.stream = MichelleVoiceline5
		$MichelleVoiceline5.stop()
	if number == 9:
		$MichelleVoiceline6.stream = MichelleVoiceline6
		$MichelleVoiceline6.stop()
	if number == 10:
		$MichelleVoiceline7.stream = MichelleVoiceline7
		$MichelleVoiceline7.stop()
	if number == 11:
		$MichelleVoiceline7.stream = MichelleVoiceline8
		$MichelleVoiceline7.stop()
	if number == 12:
		$MichelleVoiceline7.stream = MichelleVoiceline9
		$MichelleVoiceline7.stop()
	if number == 13:
		$ColinVoiceline1.stream = ColinVoiceline1
		$ColinVoiceline1.stop()
	if number == 14:
		$ColinVoiceline2.stream = ColinVoiceline2
		$ColinVoiceline2.stop()
	if number == 15:
		$ColinVoiceline3.stream = ColinVoiceline3
		$ColinVoiceline3.stop()
	if number == 16:
		$ColinVoiceline4.stream = ColinVoiceline4
		$ColinVoiceline4.stop()
	if number == 17:
		$MackenzieVoiceline4.stream = MackenzieVoiceline4
		$MackenzieVoiceline4.stop()
	if number == 18:
		$MackenzieVoiceline5.stream = MackenzieVoiceline5
		$MackenzieVoiceline5.stop()
	if number == 19: 
		$MackenzieVoiceline6.stream = MackenzieVoiceline6
		$MackenzieVoiceline6.stop()
	if number == 20: 
		$MackenzieVoiceline7.stream = MackenzieVoiceline7
		$MackenzieVoiceline7.stop()
	if number == 21: 
		$MackenzieVoiceline8.stream = MackenzieVoiceline8
		$MackenzieVoiceline8.stop()
	if number == 22: 
		$MackenzieVoicelineStart.stream = MackenzieVoicelineStart
		$MackenzieVoicelineStart.stop()
	if number == 23: 
		$BammVoiceline1.stream = BammVoiceline1
		$BammVoiceline1.stop()
	if number == 24: 
		$BammVoiceline2.stream = BammVoiceline2
		$BammVoiceline2.stop()
	if number == 25: 
		$BammVoiceline3.stream = BammVoiceline3
		$BammVoiceline3.stop()
	if number == 26: 
		$BammVoiceline4.stream = BammVoiceline4
		$BammVoiceline4.stop()
	if number == 27: 
		$BammVoiceline5.stream = BammVoiceline5
		$BammVoiceline5.stop()
	if number == 28: 
		$MackenzieVoiceline9.stream = MackenzieVoiceline9
		$MackenzieVoiceline9.stop()
	if number == 29: 
		$MackenzieVoiceline10.stream = MackenzieVoiceline10
		$MackenzieVoiceline10.stop()
	if number == 30: 
		$MackenzieVoiceline11.stream = MackenzieVoiceline11
		$MackenzieVoiceline11.stop()
	if number == 31: 
		$MackenzieVoiceline12.stream = MackenzieVoiceline12
		$MackenzieVoiceline12.stop()
	if number == 32: 
		$MackenzieVoiceline13.stream = MackenzieVoiceline13
		$MackenzieVoiceline13.stop()
	if number == 33: 
		$MackenzieVoiceline14.stream = MackenzieVoiceline14
		$MackenzieVoiceline14.stop()
	if number == 34: 
		$MackenzieVoiceline15.stream = MackenzieVoiceline15
		$MackenzieVoiceline15.stop()
	if number == 35: 
		$MackenzieVoiceline16.stream = MackenzieVoiceline16
		$MackenzieVoiceline16.stop()
	if number == 36: 
		$MackenzieVoiceline17.stream = MackenzieVoiceline17
		$MackenzieVoiceline17.stop()
	if number == 37: 
		$MackenzieVoiceline18.stream = MackenzieVoiceline18
		$MackenzieVoiceline18.stop()
	if number == 38: 
		$MackenzieVoiceline19.stream = MackenzieVoiceline19
		$MackenzieVoiceline19.stop()
	if number == 39: 
		$MackenzieVoiceline20.stream = MackenzieVoiceline20
		$MackenzieVoiceline20.stop()
	if number == 40: 
		$MackenzieVoiceline21.stream = MackenzieVoiceline21
		$MackenzieVoiceline21.stop()
	if number == 41: 
		$MackenzieVoiceline22.stream = MackenzieVoiceline22
		$MackenzieVoiceline22.stop()
	if number == 42: 
		$MackenzieVoiceline23.stream = MackenzieVoiceline23
		$MackenzieVoiceline23.stop()
	if number == 43: 
		$MackenzieVoiceline24.stream = MackenzieVoiceline24
		$MackenzieVoiceline24.stop()
	if number == 44: 
		$MackenzieVoiceline25.stream = MackenzieVoiceline25
		$MackenzieVoiceline25.stop()
