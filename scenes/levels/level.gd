extends Node2D

@onready var bullet_manager = $BulletManager
@onready var player = $player

func _ready():
	player.connect("player_fired_bullet", Callable(bullet_manager, "handle_bullet_spawned"))





func _on_inventory_gui_closed():
	get_tree().paused = false


func _on_inventory_gui_opened():
	get_tree().paused = true
