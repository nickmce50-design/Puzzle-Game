extends Node

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	print('entered')
var inventory: Array[String] = []

func collect(item_name: String) -> void:
	if not inventory.has(item_name):
		inventory.append(item_name)
		print("Collected: ", item_name)

func has_item(item_name: String) -> bool:
	return inventory.has(item_name)
