extends KinematicBody2D
export var group = 'Null'
export var Event = 'Null'
export var Turn = false
export var Jump = false
export var Damage = 1
export var Can_damage = true
export var Health = 3
var pos = Vector2(0, 0)
var speed = 100
var left = true
var right = false
var gravity = 10
onready var col = get_node("Detext/Detection")
var stopped = false

func _ready():
	set_collision_mask(2)
# Called when the node enters the scene tree for the first time.
func _process(_delta):
	if $Enemy_Stuff.current_animation == "Attack":
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
	pass

func detect_turn_around():
	if not $RayCast2D.is_colliding() and is_on_floor() || $DetectWall.is_colliding():
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
	
func hit():
	$AttackDetector.monitoring = true
	
func end_of_hit():
	$AttackDetector.monitoring = false
	print('shit')
func start_walk():
	$AnimatedSprite.play('Walk')

func _on_PlayerDetection_body_entered(body):
	$Enemy_Stuff.play("Attack")


func _on_AttackDetector_body_entered(body):
	if body.is_in_group('Player'):
#	Area2D.damage(Damage)
		body.damage(1)
	hit()

func _on_Enemy_Stuff_animation_finished(anim_name):
	_move_enemy()
	
func projectile():
	pass
