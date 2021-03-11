extends Node2D


var stage01 = load("res://scene/stage01/stage01.tscn")

func _ready():
	pass 

func _process(_delta):
	if Input.is_action_just_pressed("ui_enter"):
		var stage = stage01.instance()
		get_parent().add_child(stage)
		queue_free()
	pass
