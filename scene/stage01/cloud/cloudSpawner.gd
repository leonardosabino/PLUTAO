extends Node2D

var interval = 5
var preCloud = preload("res://scene/stage01/cloud/cloud.tscn")

func _ready():
	randomize()
	pass 

func _process(delta):
	if interval > 0:
		interval -= delta
	else:
		var cloud = preCloud.instance()
		cloud.set_global_position(Vector2(1400, _random_position()))
		get_owner().add_child(cloud)
		interval = _random_interval()
		pass
	pass
	pass
	
func _random_position():
	var position = rand_range(50, 350)
	return int(position)
pass

func _random_interval():
	var position = rand_range(5, 10)
	return int(position)
pass
