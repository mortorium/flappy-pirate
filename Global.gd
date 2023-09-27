extends Node


var score : int
var rng : RandomNumberGenerator = RandomNumberGenerator.new()

func random(min_num, max_num):
	rng.randomize()
	var random :int = rng.randf_range(min_num, max_num)
	return random
