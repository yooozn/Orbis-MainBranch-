extends Node

var save_path = "user://save.dat"
var room = "res://Spark Forest.tscn"
var collectible = 20
var playerPos = Vector2(0,0)
var cutscene = false
var bossfight = false

func _Save():
	#Variable data which is a dictionary to store all data. All values will be changed throughout different scenes, and scripts
	#and saved via the SaveandLoad._Save() method(Can be used globally). This method saves the following data shown below.
	var data = {
		"1" : room,
		"2" : playerPos,
		"3" : Globals.berries,
		"4" : Globals.health,
		"5" : Globals.cantmove,
		"6" : Globals.map,
		"door1" : Globals.door1,
		"door2" : Globals.door2,
		"door3" : Globals.door3,
		"MZD2Start" : Globals.MackenzieDialog2Start,
		"MZD2End" : Globals.MackenzieDialog2End,
		"CD1Start" : Globals.ColinDialog1Start,
		"CD1End" : Globals.ColinDialog1End,
		"CD2Start" : Globals.ColinDialog2Start,
		"CD2End" : Globals.ColinDialog2End,
		"CDefeated" : Globals.ColinDefeated,
		"CDMStart" : Globals.ColinMemoryStart,
		"CDMEnd" : Globals.ColinMemoryEnd,
		"MD1Start" : Globals.MichelleDialog1Start,
		"MD1End" : Globals.MichelleDialog1End,
		"MD2Start" : Globals.MichelleDialog2Start,
		"MD2End" : Globals.MichelleDialog2End,
		"MD2MStart" : Globals.MichelleMemoryStart,
		"MD2MEnd" : Globals.MichelleMemoryEnd,
		"MDefeated" : Globals.MichelleDefeated,
		"MZD3Start" : Globals.MackenzieDialog3Start,
		"MZD3End": Globals.MackenzieDialog3End,
		"MZD4Start" : Globals.MackenzieDialog4Start,
		"MZD4End" : Globals.MackenzieDialog4End,
		"MZDMStart" : Globals.MackenzieMemoryStart,
		"MZDMEnd" : Globals.MackenzieMemoryEnd,
		"BD1Start" : Globals.SamDialog1Start,
		"BD1End" : Globals.SamDialog1End,
		"BD2Start" : Globals.SamDialog2Start,
		"BD2End": Globals.SamDialog2End,
		"BDefeated" : Globals.SamDefeated,
		"BMStart" : Globals.SamMemoryStart,
		"BMEnd" : Globals.SamMemoryEnd,
		"MStart" : Globals.Cutscene,
		"MDial" : Globals.Dialog,
		"MFinish" : Globals.Finished,
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
			Globals.MackenzieDialog2Start = player_data["MZD2Start"]
			Globals.MackenzieDialog2End = player_data["MZD2End"]
			Globals.health = player_data['4']
			Globals.door1 = player_data['door1']
			Globals.door2 = player_data['door2']
			Globals.door3 = player_data['door3']
			Globals.map = player_data['6']
			Globals.cantmove = player_data['5']
			Globals.ColinMemoryStart = player_data['CDMStart']
			Globals.ColinMemoryEnd = player_data['CDMEnd']
			Globals.MichelleMemoryStart = player_data['MD2MStart']
			Globals.MichelleMemoryEnd = player_data['MD2MEnd']
			Globals.MackenzieMemoryStart = player_data['MZDMStart']
			Globals.MackenzieMemoryEnd = player_data['MZDMEnd']
			Globals.MackenzieDialog3Start = player_data['MZD3Start']
			Globals.MackenzieDialog3End = player_data['MZD3End']
			Globals.MackenzieDialog4Start = player_data['MZD4Start']
			Globals.MackenzieDialog4End = player_data['MZD4End']
			Globals.SamDialog1Start = player_data['BD1Start']
			Globals.SamDialog1End = player_data['BD1End']
			Globals.SamDialog2Start = player_data['BD2Start']
			Globals.SamDialog2End = player_data['BD2End']
			Globals.SamDefeated = player_data['BDefeated']
			Globals.SamMemoryStart = player_data['BMStart']
			Globals.SamMemoryEnd = player_data['BMEnd']
			Globals.Cutscene = player_data['MStart']
			Globals.Dialog = player_data['MDial']
			Globals.Finished = player_data['MFinish']
			get_tree().change_scene(room)
			print(player_data["1"])


func _on_Timer_timeout():
	if Globals.player != null:
		if cutscene == false and bossfight == false and Globals.player.is_on_floor() == true:
			playerPos = Globals.player.position
			print("Saved")
			_Save()
		pass
