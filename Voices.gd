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
