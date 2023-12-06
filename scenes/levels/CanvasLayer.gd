extends CanvasLayer

@onready var inventory = $InventoryGui

func _input(event):
	if event.is_action_pressed("inventory"):
		if inventory.isOpen:
			inventory.close()
		else:
			inventory.open()
			
func _ready():
	inventory.close()
