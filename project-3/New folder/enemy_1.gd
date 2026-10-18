extends CharacterBody2D


const SPEED = 50.0
var direction = 1

func _physics_process(delta: float) -> void:
	velocity.x = direction * SPEED
	if is_on_wall():
		position.x -= 10 * direction
		direction *= -1
		print('hit wall')
	move_and_slide()
	


	


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == 'player':
		body.kill()
		
		
