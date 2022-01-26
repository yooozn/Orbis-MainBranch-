extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var _animPlayer = $AnimationPlayer
var rng = RandomNumberGenerator.new()
onready var projectile1 = preload("res://Brock_Bosses/Mackenzie/MackenzieProjectile.tscn")
onready var projectile2 = preload("res://Brock_Bosses/Mackenzie/MackenzieProjectile2.tscn")
onready var projectile3 = preload("res://Brock_Bosses/Mackenzie/MackenzieProjectile3.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	_animPlayer.play("idle")
	$DetectionArea/CollisionShape2D.set_deferred("disabled",false)
	rng.randomize()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func attack():
	_animPlayer.play("IdleInvisible")
	var randomAttack = rng.randi_range(1,3)
	print(randomAttack)
	if randomAttack == 1:
		attack1()
	elif randomAttack == 2:
		attack2()
	elif randomAttack == 3:
		attack3()

func attack1():
	_animPlayer.play("attack1")
	yield(get_tree().create_timer(4),"timeout")
	attack()

func attack2():
	_animPlayer.play("attack2")
	yield(get_tree().create_timer(3),"timeout")
	attack()

func attack3():
	_animPlayer.play("attack3")
	yield(get_tree().create_timer(3),"timeout")
	attack()

func _on_DetectionArea_body_entered(body):
	if body.is_in_group("Player"):
		$DetectionArea/CollisionShape2D.set_deferred("disabled",true)
		position += Vector2(-43,37)
		_animPlayer.play("start")
		yield(get_tree().create_timer(1.1),"timeout")
		position -= Vector2(-43,37)
		attack()

func _projectileAttack1():
	var proj = projectile1.instance()
	proj.position = global_position + Vector2(rng.randi_range(0, 200),rng.randi_range(0,200))
	get_owner().add_child(proj)

func _projectileAttack2():
	var proj = projectile2.instance()
	proj.position = global_position + Vector2(-600,rng.randi_range(-300,-350))
	get_owner().add_child(proj)
	var proj2 = projectile2.instance()
	proj2.position = global_position + Vector2(-300,rng.randi_range(-300,-350))
	get_owner().add_child(proj2)
	var proj3 = projectile2.instance()
	proj3.position = global_position + Vector2(0,rng.randi_range(-300,-350))
	get_owner().add_child(proj3)
	var proj4 = projectile2.instance()
	proj4.position = global_position + Vector2(300,rng.randi_range(-300,-350))
	get_owner().add_child(proj4)
	var proj5 = projectile2.instance()
	proj5.position = global_position + Vector2(600,rng.randi_range(-300,-350))
	get_owner().add_child(proj5)

func _projectileAttack3():
	var proj = projectile3.instance()
	proj.position = global_position + Vector2(-850, -50)
	get_owner().add_child(proj)
	var proj2 = projectile3.instance()
	proj2.position = global_position + Vector2(-600, -200)
	get_owner().add_child(proj2)
	var proj3 = projectile3.instance()
	proj3.position = global_position + Vector2(-400, -350)
	get_owner().add_child(proj3)
	var proj4 = projectile3.instance()
	proj4.position = global_position + Vector2(-200, -500)
	get_owner().add_child(proj4)
	var proj5 = projectile3.instance()
	proj5.position = global_position + Vector2(0, -650)
	get_owner().add_child(proj5)
#MAKE the first projectile attack that goes vertical go up as she flies up, and then when she reaches her peak make the projectiles fly down again
#Make another projectile attack that goes on a diagonal line path, similar to vertical one but diagonal
