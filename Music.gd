extends Node2D

var SparkForest = load("res://Music/Spark Forest (Again).wav")
var MackenzieEn = load("res://Music/Wandering Maiden (Touhou).wav")
var Aquatides = load("res://Music/AquaTide (Again).wav")
var ColinBoss = load("res://Music/Underwater Battle .wav")
var MagmaCavern = load("res://Music/Lava Cavern.wav")
var FireColor = load("res://Music/Fire-Coloured Intelligence.wav")
var MichelleBoss = load("res://Music/A Mind_s Flame.wav")
var FloatingCapital = load("res://Music/The Floating Capital (Better).wav")
var HeroinesGarden = load("res://Music/Heroine_s Gardens (Again).wav")
var ColinEncounter = load("res://Music/Aqua Blue Knight complete for real.wav")
var SamsEncounter = load("res://Music/An Electric Presence.wav")
var SamBoss = load("res://Music/Flight of the Electric Dreamer (better).wav")
var ColinPhase2 = load("res://Music/TidalWave Incoming.wav")
var MackenzieBoss = load("res://Music/Flowers Among Fantasy (Better).wav")
var PlaceHolder = load("res://Music/Aosta.wav")



func  play_music(number):
	if number == 1:
		$"SparkForest".stream = SparkForest
		$"SparkForest".play()
	if number == 2:
		$"MackenzieEncounter".stream = MackenzieEn
		$"MackenzieEncounter".play()
	if number == 3: 
		$Aquatides.stream = Aquatides
		$Aquatides.play()
	if number == 4: 
		$ColinBoss.stream = ColinBoss
		$ColinBoss.play()
	if number == 5:
		$MagmaCavern.stream = MagmaCavern
		$MagmaCavern.play()
	if number == 5.1: 
		$MichelleEncrounter.stream = FireColor
		$MichelleEncrounter.play()
	if number == 6: 
		$MichelleBoss.stream = MichelleBoss
		$MichelleBoss.play()
	if number == 7: 
		$FloatingCapital.stream = FloatingCapital
		$FloatingCapital.play()
	if number == 8: 
		$"Heroine's Garden".stream = HeroinesGarden
		$"Heroine's Garden".play()
	if number == 9: 
		$ColinEncounter.stream = ColinEncounter
		$ColinEncounter.play()
	if number == 10: 
		$SamsEncounter.stream = SamsEncounter
		$SamsEncounter.play()
	if number == 11: 
		$SamBoss.stream = SamBoss
		$SamBoss.play()
	if number == 12:
		$ColinPhase2.stream = ColinPhase2
		$ColinPhase2.play()
	if number == 13:
		$MackenzieBoss.stream = MackenzieBoss
		$MackenzieBoss.play()
	if number == 69:
		$PlaceHolder.stream = PlaceHolder
		$PlaceHolder.play()
		
func stop(number):
	if number == 1:
		$"SparkForest".stream = SparkForest
		$"SparkForest".stop()
	if number == 2:
		$"MackenzieEncounter".stream = MackenzieEn
		$"MackenzieEncounter".stop()
	if number == 3:
		$Aquatides.stream = Aquatides
		$Aquatides.stop()
	if number == 4:
		$ColinBoss.stream = ColinBoss
		$ColinBoss.stop()
	if number == 5:
		$MagmaCavern.stream = MagmaCavern
		$MagmaCavern.stop()
	if number == 5.1:
		$MichelleEncrounter.stream = FireColor
		$MichelleEncrounter.stop()
	if number == 6:
		$MichelleBoss.stream = MichelleBoss
		$MichelleBoss.stop()
	if number == 7:
		$FloatingCapital.stream = FloatingCapital
		$FloatingCapital.stop()
	if number == 8:
		$HeroinesGarden.stream = HeroinesGarden
		$HeroinesGarden.stop()
	if number == 9:
		$ColinEncounter.stream = ColinEncounter
		$ColinEncounter.stop()
	if number == 10: 
		$SamsEncounter.stream = SamsEncounter
		$SamsEncounter.stop()
	if number == 11: 
		$SamBoss.stream = SamBoss
		$SamBoss.stop()
	if number == 12:
		$ColinPhase2.stream = ColinPhase2
		$ColinPhase2.stop()
	if number == 13:
		$MackenzieBoss.stream = MackenzieBoss
		$MackenzieBoss.stop()
