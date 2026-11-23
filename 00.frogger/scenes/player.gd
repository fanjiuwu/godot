extends CharacterBody2D

var direction:Vector2 =Vector2(1,1)
var speed:int =200

func _physics_process(_delta: float) -> void:
	direction=Input.get_vector("left","right","up","down")	
	#position+=direction*speed
	velocity=direction*speed
	animation()
	move_and_slide()
	
	if Input.is_action_just_pressed("confirm"):
		print("hello")

func animation():
	if direction:
		if direction.x>0:
			$AnimatedSprite2D.flip_h=true
		else:
			$AnimatedSprite2D.flip_h=false
			
		if direction.x!=0:
			$AnimatedSprite2D.animation='left'
		else: 
			if direction.y<0:
				$AnimatedSprite2D.animation='up'
			if direction.y>0:
				$AnimatedSprite2D.animation='down'
	
	else:
		$AnimatedSprite2D.frame=0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
