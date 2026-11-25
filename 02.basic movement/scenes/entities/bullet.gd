extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#$Sprite2D.scale=Vector2.ZERO
	var tween=get_tree().create_tween()
	tween.tween_property($Sprite2D,"scale",Vector2.ONE,0.5).from(Vector2.ZERO)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

var direction :Vector2

func setup(pos:Vector2,dir:Vector2):
	position=pos+dir*16
	direction=dir

func _physics_process(delta: float) -> void:
	position+=direction*30*delta
