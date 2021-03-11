extends Node2D

var move = Vector2(-1, 0)
const vel = 50
const max_dist = 1600
onready var init_pos = global_position

var cloud1 = preload("res://data/image/object/cloud-1.png")
var cloud2 = preload("res://data/image/object/cloud-2.png")
var cloud3 = preload("res://data/image/object/cloud-3.png")

func _ready():
	randomize()
	var type = rand_range(1, 4)
	type = int(type)
	if (type == 1):
		$sprite.set_texture(cloud1)
	elif (type == 2):
		$sprite.set_texture(cloud2)
	elif (type == 3):
		$sprite.set_texture(cloud3)
pass


func _process(delta):
	translate(move * vel * delta)
	if global_position.distance_to(init_pos) > max_dist:
		queue_free()
	pass
	pass
