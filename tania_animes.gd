extends AnimatedSprite

func _ready():
	$".".play("inactif")

func _physics_process(delta):
	#droite
	if Input.is_action_pressed("ui_right"):
		$".".flip_h = true
	#gauche		
	elif Input.is_action_pressed("ui_left"):
		$".".flip_h = false		
	


	
		
			
	

	



