extends CharacterBody2D


@onready var party = get_node("/root/livello1/CharacterBody2D")

func _physics_process(delta):
	var direction = global_position.direction_to(party.global_position)
	velocity = direction * 200
	move_and_slide()
