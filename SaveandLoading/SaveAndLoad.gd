extends Node

var save_path = "user://save.dat"
var room = "res://Spark Forest.tscn"
var collectible = 20
var playerPos = Vector2(0,0)
var cutscene = false
var bossfight = false
var checkpointPos
var checkpointRoom

func _Save():
	#Variable data which is a dictionary to store all data. All values will be changed throughout different scenes, and scripts
	#and saved via the SaveandLoad._Save() method(Can be used globally). This method saves the following data shown below.
	var data = {
		"1" : room,
		"2" : playerPos,
		"3" : Globals.berries,
		"4" : "four",
		"5" : "five",
		"6" : "six",
		"MZD1Start" : Globals.MackenzieDialog2Start,
		"MZD1End" : Globals.MackenzieDialog2End,
		"CD1Start" : Globals.ColinDialog1Start,
		"CD1End" : Globals.ColinDialog1End,
		"CD2Start" : Globals.ColinDialog2Start,
		"CD2End" : Globals.ColinDialog2End,
		"CDefeated" : Globals.ColinDefeated,
		"MD1Start" : Globals.MichelleDialog1Start,
		"MD1End" : Globals.MichelleDialog1End,
		"MD2Start" : Globals.MichelleDialog2Start,
		"MD2End" : Globals.MichelleDialog2End,
		"MDefeated" : Globals.MichelleDefeated,
		"CheckPos" : checkpointPos,
		"CheckRoom" : checkpointRoom,
	}
	#Opens file, unless there is an error.
	var file = File.new()
	var error = file.open(save_path,File.WRITE)
	if error == OK: 
		file.store_var(data)
		file.close()

func _newGame():
	#Starts a fresh dictionary data, and wipes old data
	var data = {
		"1" : "res://Spark Forest.tscn",
		"2" : "two",
		"3" : "three",
		"4" : "four",
		"5" : "five",
		"6" : "six",
		"CD1Start" : false,
		"CD1End" : false,
		"CD2Start" : false,
		"CD2End" : false,
		"CDefeated" : false,
		"MD1Start" : false,
		"MD1End" : false,
		"MD2Start" : false,
		"MD2End" : false,
		"MDefeated" : false,
	}
	var file = File.new()
	var error = file.open(save_path,File.WRITE)
	if error == OK: 
		file.store_var(data)
		file.close()
		#Transitions to spark forest when called(level 1)
	get_tree().change_scene("res://Levels/IntroCutscene.tscn")
	
func _Load():
	#Loads previously saved data
	var file = File.new()
	if file.file_exists(save_path):
		var error = file.open(save_path, File.READ)
		if error == OK:
			var player_data = file.get_var()
			file.close()
			#Sets the local room and player pos variables to the corresponding keys previously saved in the dictionary
			room = player_data["1"]
			playerPos = player_data["2"]
			Globals.berries = player_data["3"]
			#Sets player spawn location to previously set spawn position
			Globals.player_initial_map_position = playerPos
			Globals.ColinDialog1Start = player_data["CD1Start"]
			Globals.ColinDialog1End = player_data["CD1End"]
			Globals.ColinDialog2Start = player_data["CD2Start"]
			Globals.ColinDialog2End = player_data["CD2End"]
			Globals.ColinDefeated = player_data["CDefeated"]
			Globals.MichelleDialog1Start = player_data["MD1Start"]
			Globals.MichelleDialog1End = player_data["MD1End"]
			Globals.MichelleDialog2Start = player_data["MD2Start"]
			Globals.MichelleDialog2End = player_data["MD2End"]
			Globals.MichelleDefeated = player_data["MDefeated"]
			Globals.MackenzieDialog2Start = player_data["MZD1Start"]
			Globals.MackenzieDialog2End = player_data["MZD1End"]
			checkpointPos = player_data["CheckPos"]
			checkpointRoom = player_data["CheckRoom"]
			get_tree().change_scene(room)
			print(player_data["1"])

func _on_Timer_timeout():
	if Globals.player != null:
		if cutscene == false and bossfight == false and Globals.player.is_on_floor() == true:
			playerPos = Globals.player.position
			print("Saved")
			_Save()
		pass
