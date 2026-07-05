extends OmniLight3D
var min_energy = 1.5
var max_energy = 2.0
var flicker_speed = .10
var flicker_timer = 0.0

func _process(delta):
	flicker_timer += delta
	
	if flicker_timer >= flicker_speed:
		light_energy = randf_range(min_energy, max_energy)
		flicker_timer = 0.0
