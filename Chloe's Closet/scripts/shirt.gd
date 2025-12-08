extends Node2D


@onready var shirt_sprite = $Sprite2D

var shirt_keys = []
var current_shirt_index = 0

func _ready():
	set_sprite_keys()
	
	current_shirt_index = shirt_keys.find(Global.selected_shirt)
	if current_shirt_index == -1:
		current_shirt_index = 0
	
	update_sprite()
	
func set_sprite_keys():
	shirt_keys = Global.shirt_collection.keys()

func update_sprite():
	var current_sprite = shirt_keys[current_shirt_index]
	shirt_sprite.texture = Global.shirt_collection[current_sprite]
	#hair_sprite_modulate = Global.hair_color_options[current_color_index]
	
	Global.selected_shirt = current_sprite 
	#Global.selected_hair_color = Global.hair_color_options[current_color_index]

func _on_collection_button_pressed():
	current_shirt_index = (current_shirt_index + 1) % shirt_keys.size() 
	update_sprite()
