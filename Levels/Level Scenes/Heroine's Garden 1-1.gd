extends Node2D


var player_initial_map_position = Vector2(0, 0)

var berries = 0 



func _on_Music_body_entered(body):
	$"Music/CollisionShape2D".position.x = -999
	$"Music".position.x = -999
	Music.play_music(8)
	print("sam")


func _on_Collectable_berries_collected():
	berries = berries + 1
	var BerryLabel = "Berries: "+String(berries)
	Globals.berries += 1
