extends Node2D

var SparkForest = load("res://Music/Spark Forest (Again).wav")
var MackenzieEn = load("res://Music/Wandering Maiden (Touhou).wav")
var Aquatides = load("res://Music/AquaTide (Again).wav")
var ColinBoss = load("res://Music/Aqua Blue Knight complete for real.wav")
var MagmaCavern = load("res://Music/Lava Cavern.wav")
var FireColor = load("res://Music/Fire-Coloured Intelligence.wav")
var MichelleBoss = load("res://Music/A Mind_s Flame.wav")
var FloatingCapital = load("res://Music/The Floating Capital (Better).wav")
var HeroinesGarden = load("res://Music/Heroine_s Gardens (Again).wav")
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
