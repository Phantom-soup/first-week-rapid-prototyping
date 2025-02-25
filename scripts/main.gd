extends Node2D

@export var bossy: PackedScene
var digit = 0;


func _ready() -> void:
	pass


func _process(delta: float) -> void:
	pass


func _on_incrementer_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event.is_action_pressed("Clicke"):
		digit += 1
		$HUD.update_increment(digit)
	
	if event.is_action_pressed("kill_bind"):
		$HUD.try_again()


func _on_hud_start_game() -> void:
	$HUD/Counter.show()
