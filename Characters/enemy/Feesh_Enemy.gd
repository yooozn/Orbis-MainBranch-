extends KinematicBody2D

export var group = 'Null'
export var Event = 'Null'
export var Turn = false
export var Jump = false
export var Damage = 1
export var Can_damage = true
export var Health = 3
var pos = Vector2(0, 0)
onready var shader = $AnimatedSprite.material
var speed = 100
var left = true
var right = false
var gravity = 10
onready var projectile = preload("res://Characters/enemy/Bubble Projectile.tscn")
var stopped = false
var player


func _ready():
	set_collision_mask(2)
# Called when the node enters the scene tree for the first time.
func _process(delta):
	if $Enemy_Anims.current_animation == "Attack":
		return
	_move_enemy()
	detect_turn_around()
	
func _move_enemy():
	#Old moving stuff
#	if left == true:
#		position.x += -speed
#	if right == true:
#		position.x += speed
#	position.y = position.y
#	position.normalized()
	pos.x = -speed if left else speed
	
	if left:
		pos.x = -speed
	else:
		pos.x = speed
	
	pos.y += gravity
	pos = move_and_slide(pos, Vector2.UP)
	
func damage(damage):
	pos.x = 0
	$Damage.play()
	$DamageTimer.start()
	Can_damage = false 
	print(damage)
	Health -= 1
	if Health == 0:
		 
		queue_free()
	$Enemy_effects.play("Stagger")
#	$Effects._damage()
	shader.set_shader_param("flash_modifier", 1)
	yield(get_tree().create_timer(.07),"timeout")
	shader.set_shader_param("flash_modifier", 0)
	pass

func detect_turn_around():
	if not $RayCast2D.is_colliding() and is_on_floor() || $DetectWall.is_colliding():
		left = !left
		scale.x = -scale.x
	if $DetectPortal.is_colliding():
		left = !left
		scale.x = -scale.x
		
		

func _on_DamageTimer_timeout():
	Can_damage = true
	pass # Replace with function body.



func _on_Hitbox_body_entered(body):
	Can_damage = true
	if body.is_in_group('Player'):
#	Area2D.damage(Damage)
		body.damage(1)
		
func _on_Area2D_area_entered(area):
	if area.is_in_group('DetectL'):
		position.x += -speed
		if left == true:
				left = false
				right = true
				$"AnimatedSprite".flip_h = false
		print("yass")
	if area.is_in_group('DetectR'):
		position.x += speed
		if right == true:
				right = false
				left = true
				$"AnimatedSprite".flip_h = true

func shoot():
	$AttackDetector.monitoring = true
	var bullet = projectile.instance()
	bullet.position = get_global_position()
	
func end_of_shoot():
	$AttackDetector.monitoring = false
	print('shit')

func _on_PlayerDetector_body_entered(body):
	$Enemy_Anims.play("Attack")
#	projectile()


func _on_AttackDetector_body_entered(body):
	shoot()

func projectile():
	var proj = projectile.instance()
	proj.position = $BubbleSpawn.global_position
	get_parent().add_child(proj)
