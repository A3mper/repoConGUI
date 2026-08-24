extends Node3D

@onready var animation_player = $ConductedAnimationPlayer

func _ready() -> void:
	# Al ser un Autoload oficial, llamamos directamente a la clase global en mayúscula
	Conductor.set_song($Conductor.stream, 120, 4) 
	
	# Le damos Play a la música y a la animación
	Conductor.play()
	animation_player.play("palpitar_3d", 1)
