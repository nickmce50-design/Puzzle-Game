extends Path2D
@export var speed: float = 0.25 # Path progress per second

@onready var path_follow: PathFollow2D = $PathFollow2D
var direction: float = 1.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass



func _physics_process(delta: float) -> void:
	path_follow.progress_ratio += direction * speed * delta

	if path_follow.progress_ratio >= 1.0:
		path_follow.progress_ratio = 1.0
		direction = -1.0
	elif path_follow.progress_ratio <= 0.0:
		path_follow.progress_ratio = 0.0
		direction = 1.0
