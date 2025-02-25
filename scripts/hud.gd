extends CanvasLayer


signal start_game
signal boss_time


func _ready() -> void:
	$Counter.hide()


func try_again():
	print("kill bind!")


func update_increment(num):
	$Counter.text = str(num)
	start_game.emit()




func _on_boss_timer_timeout() -> void:
	pass # Replace with function body.
