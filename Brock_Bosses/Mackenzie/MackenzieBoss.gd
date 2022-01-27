extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var _animPlayer = $AnimationPlayer
var rng = RandomNumberGenerator.new()
onready var projectile1 = preload("res://Brock_Bosses/Mackenzie/MackenzieProjectile.tscn")
onready var projectile2 = preload("res://Brock_Bosses/Mackenzie/MackenzieProjectile2.tscn")
onready var projectile3 = preload("res://Brock_Bosses/Mackenzie/MackenzieProjectile3.tscn")
onready var projectile4 = preload("res://Brock_Bosses/Mackenzie/MackenzieProjectile2.5.tscn")
onready var projectile3right = preload("res://Brock_Bosses/Mackenzie/MackenzieProjectile3right.tscn")
var randomNot = 0


export var healthPhase1 = 10
export var healthPhase2 = 10

export var healthStealNum = 8
var healthStealCount = 0

onready var shader = $AnimatedSprite.material

var phase = 1
var canDamage = false
var inRange = false
var immunity = false


# Called when the node enters the scene tree for the first time.
func _ready():
	_animPlayer.play("idle")
	$DetectionArea/CollisionShape2D.set_deferred("disabled",false)
	rng.randomize()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if healthPhase1 == 0:
		phase = 2
		print("phase2")
	if canDamage == true and inRange == true and immunity == false:
		Globals.player.damage(1)
		canDamage = false
		immunity = true
		yield(get_tree().create_timer(1),"timeout")
		immunity = false
		if inRange == true:
			canDamage = true
		else:
			canDamage = false

func attack():
	_animPlayer.play("IdleInvisible")
	var randomAttack = rng.randi_range(1,3)
	print(randomAttack)
	if randomAttack == 1 and randomNot != 1:
		randomNot = 1
		attack1()
	elif randomAttack == 2 and randomNot != 2:
		randomNot = 2
		attack2()
	elif randomAttack == 3 and randomNot != 3:
		randomNot = 3
		attack3()
	else:
		attack()

func _on_MackenzieBoss_body_entered(body):
	if body.is_in_group("Player"):
		canDamage = true
		inRange = true


func _on_MackenzieBoss_body_exited(body):
	if body.is_in_group("Player"):
		inRange = false

func followPlayer():
	var target = Globals.player.position.x
	$Tween.interpolate_property(self,"position:x",global_position.x, clamp(Globals.player.position.x - 1067,-712,578), .8,Tween.TRANS_LINEAR,Tween.EASE_IN)
	$Tween.start()
	_animPlayer.play("IdleInvisible")
	yield(get_tree().create_timer(.8),"timeout")
	print(Globals.player.position.x - 1067)
	attack()

func attack1():
	if $AnimatedSprite.global_position.x - Globals.player.global_position.x >= 1:
		_animPlayer.play("attack1")
		yield(get_tree().create_timer(5),"timeout")
		followPlayer()
	else:
		_animPlayer.play("attack1right")
		yield(get_tree().create_timer(5),"timeout")
		followPlayer()
func attack2():
	_animPlayer.play("attack2")
	$Tween.interpolate_property(self, "position", position, position + Vector2(0,-150),1,Tween.TRANS_LINEAR,Tween.EASE_IN)
	$Tween.start()
	yield(get_tree().create_timer(5),"timeout")
	position -= Vector2(0,-150)
	followPlayer()

func attack3():
	if $AnimatedSprite.global_position.x - Globals.player.global_position.x >= 1:
		_animPlayer.play("attack3")
		position += Vector2(0,15)
		yield(get_tree().create_timer(5),"timeout")
		position -= Vector2(0,15)
		followPlayer()
	else:
		_animPlayer.play("attack3right")
		position += Vector2(0,15)
		yield(get_tree().create_timer(5),"timeout")
		position -= Vector2(0,15)
		followPlayer()

func _on_DetectionArea_body_entered(body):
	if body.is_in_group("Player"):
		$DetectionArea/CollisionShape2D.set_deferred("disabled",true)
		position += Vector2(-43,37)
		Music.stop(2)
		Music.play_music(13)
		_animPlayer.play("start")
		yield(get_tree().create_timer(1.1),"timeout")
		position -= Vector2(-43,37)
		followPlayer()

func _projectileAttack1():
	var proj = projectile1.instance()
	proj.position = global_position + Vector2(rng.randi_range(0, 200),rng.randi_range(0,200))
	get_owner().add_child(proj)


func _projectileAttack2():
	var proj = projectile2.instance()
	proj.position = global_position + Vector2(-650,rng.randi_range(-300,-350))
	get_owner().add_child(proj)
	var proj2 = projectile2.instance()
	proj2.position = global_position + Vector2(-350,rng.randi_range(-300,-350))
	get_owner().add_child(proj2)
	var proj3 = projectile2.instance()
	proj3.position = global_position + Vector2(-50,rng.randi_range(-300,-350))
	get_owner().add_child(proj3)
	var proj4 = projectile2.instance()
	proj4.position = global_position + Vector2(250,rng.randi_range(-300,-350))
	get_owner().add_child(proj4)
	var proj5 = projectile2.instance()
	proj5.position = global_position + Vector2(550,rng.randi_range(-300,-350))
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

func _projectileAttack3right():
	var proj = projectile3right.instance()
	proj.position = global_position + Vector2(850, -50)
	get_owner().add_child(proj)
	var proj2 = projectile3right.instance()
	proj2.position = global_position + Vector2(600, -200)
	get_owner().add_child(proj2)
	var proj3 = projectile3right.instance()
	proj3.position = global_position + Vector2(400, -350)
	get_owner().add_child(proj3)
	var proj4 = projectile3right.instance()
	proj4.position = global_position + Vector2(200, -500)
	get_owner().add_child(proj4)
	var proj5 = projectile3right.instance()
	proj5.position = global_position + Vector2(0, -650)
	get_owner().add_child(proj5)

func _projectileAttack2UP():
	var proj = projectile4.instance()
	proj.position = global_position + Vector2(-500,rng.randi_range(400,450))
	get_owner().add_child(proj)
	var proj2 = projectile4.instance()
	proj2.position = global_position + Vector2(-200,rng.randi_range(400,450))
	get_owner().add_child(proj2)
	var proj3 = projectile4.instance()
	proj3.position = global_position + Vector2(100,rng.randi_range(400,450))
	get_owner().add_child(proj3)
	var proj4 = projectile4.instance()
	proj4.position = global_position + Vector2(400,rng.randi_range(400,450))
	get_owner().add_child(proj4)
	var proj5 = projectile4.instance()
	proj5.position = global_position + Vector2(700,rng.randi_range(400,450))
	get_owner().add_child(proj5)

func damage(damage):
	healthStealCount += 1
	if healthStealCount >= healthStealNum and Globals.player.health < 5:
		healthStealCount = 0
		Globals.player.health += 1
		Globals.player.health_update()
	if phase == 1:
		healthPhase1 -= 1
	else:
		healthPhase2 -= 1
	if healthPhase2 <= 0:
		queue_free()
	shader.set_shader_param("flash_modifier", 1)
	yield(get_tree().create_timer(.07),"timeout")
	shader.set_shader_param("flash_modifier", 0)
#MAKE the first projectile attack that goes vertical go up as she flies up, and then when she reaches her peak make the projectiles fly down again
#Make another projectile attack that goes on a diagonal line path, similar to vertical one but diagonal
