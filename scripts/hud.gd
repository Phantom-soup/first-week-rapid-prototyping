extends CanvasLayer

signal start_game


func _ready() -> void:
	$Counter.hide()
	$Boss_Deadline.hide()


func try_again():
	$Counter.hide()
	$Counter.text = str("0")
	print("kill bind!")


func update_increment(num):
	$Counter.text = str(num)
	start_game.emit()

func update_countdown(num):
	$Boss_Deadline.text = str(num)
