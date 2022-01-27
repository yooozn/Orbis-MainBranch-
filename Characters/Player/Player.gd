extends KinematicBody2D

signal grounded_updated(is_grounded)
signal health_update(health_)

#Direction of input from keyboard 
var dir = Vector2()
var berries = Globals.berries
#The velocity of the player
var vel = Vector2()
#The factor in which the player accelerates 
var acel = 1
#The max speed of the player
var speed = 50
var health = Globals.health
#The time spent in the air
var jump_time = 0.1
#The jump height of the player
var jump = 100
#The ammount of gravity applied to the player 
var gravity = 180.8
#Terminal velocity 
var term_gravity = 100
#Kinda self explainitory
var can_move = true
var can_interupt = true
var can_beHit = true
var is_jumping = false
var is_grounded
var can_dash = true
var dashDirection = Vector2()
var dash = false
#The speed of the player dash
var dash_speed = 200
var jab_num = 1
var jab_connected = false
#Particles
var jump_particles = preload("res://Characters/Player/Jump_particles.tscn")
onready var camera = get_node("Camera2D")
var player


# Called when the node enters the scene tree for the first time.
func _ready():
	$Player_sprite/AttackSlash.hide()
	$Player_sprite/DownSlash.hide()
	$Player_sprite/UpSlash.hide()
	if Globals.map == false:
		pass

	$"Camera2D/Post Processing/Curve/ui/Health/"._on_Player_health_update(Globals.health)
	emit_signal("health_update", Globals.health)
	#Position of the player when entering the portal
	self.global_position = Globals.player_initial_map_position
	Globals.player = self
	SaveAndLoad.room = str(get_owner().get_filename())
	SaveAndLoad.playerPos = Globals.player_initial_map_position
	SaveAndLoad._Save()
	
func _process(delta):
	if Globals.health == 0:
		Globals.health = 5
	Globals.player = self
	if Globals.Cutscene == true:
		$"Camera2D/Post Processing/Curve/ui/Health/Health_Bar_2 (1)".visible = false
	if Globals.Cutscene == false:
		$"Camera2D/Post Processing/Curve/ui/Health/Health_Bar_2 (1)".visible = true
	if Globals.cantmove == true:
		$"Player_sprite/AttackSlash".hide()
		$"Player_sprite/DownSlash".hide()
		$"Player_sprite/UpSlash".hide()
		return
	if Globals.cantmove == false:
		$"Player_sprite/AttackSlash".hide()
		$"Player_sprite/DownSlash".hide()
		$"Player_sprite/UpSlash".hide()
		var was_grounded = is_grounded
		is_grounded = is_on_floor()
		if was_grounded == null || is_grounded != was_grounded:
			emit_signal("grounded_updated", is_grounded)
	#This stops the camera and player from going outside the boundaries?
		position.x = clamp(position.x, camera.limit_left, camera.limit_right)
		position.y = clamp(position.y, camera.limit_top, camera.limit_bottom)
	if is_grounded == true:
		
			#make a fucking state machine you fat fucking bastard
		if can_interupt == true:
			if dir.x == 0:
				if can_move == true:
					$AnimationPlayer.play("Idle")
#		else:
#			dir.x = 0
		
		vel.y = gravity * 0.01
	elif vel.y < term_gravity and can_move == true:
		
		vel.y += gravity * delta
	if vel.y > 10 and can_interupt == true:
		$AnimationPlayer.play("Fall")
	if can_move == true:
		vel.x = dir.x * speed
		#Geordie or whoever did this.... Sam would like to have a word with you
#	if jab_connected == true:
#		if $Player_sprite.flip_h == true:
#			vel.x = 25.0
#		else:
#			vel.x = -25.0
	input_stuff()
	move_and_slide(vel * 10, Vector2(0, -1))
		
func input_stuff():
		dir.x = 0
			#Add gravity
		if Input.is_action_pressed("ui_left"):
			$Player_sprite.flip_h = true
			$"Player_sprite/AttackSlash".flip_h = true
			$"AnimationPlayer3".play("L")
			dir.x = -1.0
			if can_move == true and can_interupt == true:
				if is_on_floor():
					$AnimationPlayer.play("Walk")
					
					
					
		elif Input.is_action_pressed("ui_right"):
			$Player_sprite.flip_h = false
			$"Player_sprite/AttackSlash".flip_h = false
			$"AnimationPlayer3".play("R")
			dir.x = 1.0
			if can_move == true and can_interupt == true:
				if is_on_floor():
					$AnimationPlayer.play("Walk")
		if Input.is_action_just_pressed("jump"):
			print("jumped")
			jump('up')
	#		$AnimationPlayer.play("Jump")
		if Input.is_action_just_released("jump") and vel.y < 0:
			jump('down')
		if Input.is_action_just_pressed("Dash") and can_dash:
			dash()
		if Input.is_action_pressed("attack"):
#			$"Player_sprite/AttackSlash".show()
			attack()
		else:
			!is_on_floor()
			if Input.is_action_pressed("ui_down") and Input.is_action_pressed("attack"):
				print("lol")
				attackdown()
			if Input.is_action_pressed("ui_up") and Input.is_action_pressed("attack"):
					print("Reee")
					attackup()

func jump(state):
	if state == 'up':
		if self.is_on_floor():
			partical_make(jump_particles, self.position + Vector2(0, 25))
			$jump_timer.start(jump_time)
			$AnimationPlayer.play("Walk")
			print('is on floor')
			vel.y = -jump
	#		$AnimationPlayer.stop(true)
			$AnimationPlayer.play("Jump")
			print($AnimationPlayer.playback_active)
		else: 
			print(self.is_on_floor())
		if is_on_wall():
			print("Sam is drawing rn")
			partical_make(jump_particles, self.position + Vector2(0, 25))
			$jump_timer.start(jump_time)
			$AnimationPlayer.play("Walk")
			print('is on floor')
			vel.y = -jump
	#		$AnimationPlayer.stop(true)
			$AnimationPlayer.play("Jump")
			print($AnimationPlayer.playback_active)

	if state == 'down':
		if $jump_timer.time_left <= 0:
			if not Input.is_action_pressed("jump"):
				vel.y = 0
func attack():
	if Input.is_action_pressed("ui_down") and !is_on_floor():
		$"Player_sprite/DownSlash".show()
		attackdown()
	elif Input.is_action_pressed("ui_up"):
		attackup()
	else:
		if can_interupt == true:
			$AnimationPlayer.stop(true)
	#	$AnimationPlayer.play("Punch")
			$Attack_timer.start()
		print(jab_num)
		if jab_num == 1:
			$"Player_sprite/AttackSlash".play("Slash1")
			$"Player_sprite/AttackSlash".show()
			$AnimationPlayer.play("Punch")
			$"attack".play()
			$Attack_timer.start()
			jab_num += 1
		elif jab_num == 2:
			$"Player_sprite/AttackSlash".play("Slash2")
			$"Player_sprite/AttackSlash".show()
			$AnimationPlayer.play("Punch2")
		$Attack_timer.start()
		can_interupt = false
		
func attackdown():
		if can_interupt == true:
			$AnimationPlayer.stop(true)
	#	$AnimationPlayer.play("Punch")
			$Attack_timer.start()
		print(jab_num)
		if jab_num == 1:
			jab_num += 1
			$"attack".play()
			$"Player_sprite/DownSlash".play("Down")
			$Player_sprite/DownSlash.show()
			$AnimationPlayer2.play("New Anim")
			$Attack_timer.start()
		can_interupt = false
		
func attackup():
	if can_interupt == true:
		$AnimationPlayer.stop(true)
	#	$AnimationPlayer.play("Punch")
		$Attack_timer.start()
		print(jab_num)
		if jab_num == 1:
			jab_num += 1
			$"attack".play()
			$"Player_sprite/UpSlash".play("Up")
			$"AnimationPlayer3".play("U")
			$"AnimationPlayer".play("UpSlash")
			$Player_sprite/UpSlash.show()
			$Attack_timer.start()
		can_interupt = false
		
func damage(damage):
	if can_beHit == true:
		can_beHit = false
		$DamageTimer.start(0.0)
		$sound_damage.play(0.0)
		print(damage)
		Globals.health -= damage
		$Effects._damage(self.position)
		health_update()
	pass

func health_update():
#	get_tree().get_root().get_node("Player")
#	Globals.health -= 1
	$"Camera2D/Post Processing/Curve/ui/Health/"._on_Player_health_update(Globals.health)
	emit_signal("health_update", Globals.health)
	print('current health is ', Globals.health)
	if Globals.health <= 0:
		Globals.cantmove = true
		$"AnimationPlayer".play("Death")
		$DeathStart.start()
#		yield(get_tree().create_timer(5),"timeout")
#		Globals.cantmove = false
#		if SaveAndLoad.checkpointPos == null:
#			get_tree().change_scene("res://Spark Forest.tscn")
#		else:
#			Globals.player_initial_map_position = SaveAndLoad.checkpointPos
#			Globals.health = 5
#			get_tree().change_scene(SaveAndLoad.checkpointRoom)
	pass



func dash():
	can_beHit = false
	$Dash_invun.start()
	$AnimationPlayer.play("Dash")
	partical_make(jump_particles, self.position + Vector2(0, 25))
	$sound_dash.play(0.0)
	print("dash")
	vel.y = 0
	gravity = 0
	$Dash.start()
	$DashTimer.start()
	if $Player_sprite.flip_h == true:
		vel.x = -dash_speed
	else:
		vel.x = dash_speed
	# never touch this ever again!
	if Input.is_action_just_pressed("Dash") and can_dash and can_move:
		can_move = false
		can_dash = false
		dash = true
		
func partical_make(name, position):
	var particle_effect = name.instance()
	particle_effect.position = position
	add_child(particle_effect)

func _on_Dash_timeout():
	print('timeout')
	vel.x = dir.x * speed
	gravity = 180.8
	can_move = true
	$DashLag.start()
	pass 

func _on_DashLag_timeout():
	print('dashlag')
	can_dash = true
	pass 



func _on_AnimationPlayer_animation_finished(anim_name):
	if is_on_floor():
		$AnimationPlayer.play("Idle")
	else:
		$AnimationPlayer.play("Jump")
	if anim_name == ('Punch'):
		jab_connected = false
	if anim_name == ('Punch2'):
		jab_num = 1
		jab_connected = false
	if anim_name == ('DownSlash'):
		jab_num = 1
		jab_connected = false
	if anim_name == ('UpSlash'):
		jab_num = 1
		jab_connected = false
	pass # Replace with function body.


func _on_Attack_timer_timeout():
	$Attack_timer2.start()
	pass 

func _on_Attack_timer2_timeout():
	jab_num = 1
	$"Player_sprite/AttackSlash".hide()
	$"Player_sprite/DownSlash".hide()
	$"Player_sprite/UpSlash".hide()
	can_interupt = true
	pass 


func _on_jump_timer_timeout():
	print('ended')
	jump('down')
	pass 


func _on_Damage_timeout():
	can_beHit = true
	pass # Replace with function body.


func _on_Dash_invun_timeout():
	can_beHit = false
	pass # Replace with function body.


func _on_Attack_body_shape_entered(body_id, body, body_shape, local_shape):
	if body.is_in_group('Enemy'):
		print('collision')
	print(body)
	pass # Replace with function body.


func _on_Attack_area_entered(area):
	if area.is_in_group('Enemy'):
		print('collision')
		area.damage(1)
		jab_connected = true
	print(area)
	if area.is_in_group('Switch'):
		print('opened')
	pass
	
func _on_Attack_body_entered(body):
	if body.is_in_group('Enemy'):
		print('collision')
		body.damage(1)
		jab_connected = true
	print(body)

func set_limit(left, right, top, bottom):
	$Camera2D.limit_top = top
	$Camera2D.limit_bottom = bottom
	$Camera2D.limit_left = left
	$Camera2D.limit_right = right
	
	pass


func _on_DashTimer_timeout():
		can_beHit = true


func _on_Downslash_body_entered(body):
	if body.is_in_group('Enemy'):
		print('collision')
		body.damage(1)
		jab_connected = true
	print(body)


func _on_DeathStart_timeout():
		Globals.cantmove = false
		get_tree().reload_current_scene()


func _on_Downslash_area_entered(area):
		if area.is_in_group('Switch'):
			print('opened')
		pass
