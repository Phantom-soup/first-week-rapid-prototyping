extends Node2D

@export var bossy: PackedScene
var digit = 0
var boss_timer = 10
var loop


func _ready() -> void:
	pass


func _process(delta: float) -> void:
	if boss_timer == 0:
		boss_timer = 10
	
	if Input.is_action_just_pressed("kill_bind"):
		$HUD.try_again()
		digit = 0


func _on_incrementer_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event.is_action_pressed("Clicke"):
		digit += 1
		$HUD.update_increment(digit)


func _on_hud_start_game() -> void:
	$HUD/Counter.show()
	$HUD/Boss_Deadline.show()


func _on_spawn_timer_timeout() -> void:
	boss_timer -= 1
	$HUD.update_countdown(boss_timer)
