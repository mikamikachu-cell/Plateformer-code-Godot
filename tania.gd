extends KinematicBody2D

const UP: Vector2 = Vector2(0,-1)
export var gravity:int = 20
export var speed:int = 50
export var jump_power:int = 800
var velo = Vector2()

func _physics_process(_delta):
	velo.y += gravity
	
	if Input.is_action_pressed("ui_right"):
		velo.x += speed
	elif Input.is_action_pressed("ui_left"):
		velo.x -= speed
	else:
		velo.x = 0
	
	if is_on_floor():
		if Input.is_action_just_pressed("ui_accept"):
			velo.y -= jump_power
			
	velo = move_and_slide(velo, UP)
	
	if is_on_floor():
		if velo.x >0 or velo.x<0:
			$CollisionShape2D/tania.play("course")
			$"%vitesse_nombre".text = "70 km/h"
		elif velo.x == 0:
			$CollisionShape2D/tania.play("inactif")
			$"%vitesse_nombre".text = "0 km/h"
	else:
		$CollisionShape2D/tania.play("saut")
		$"%vitesse_nombre".text = "40 km/h"
			
		
		
	
