extends Node2D


@onready var shoes_sprite = $Sprite2D

var shoes_keys = []
var current_shoes_index = 0

func _ready():
	set_sprite_keys()
	
	current_shoes_index = shoes_keys.find(Global.selected_shoes)
	if current_shoes_index == -1:
		current_shoes_index = 0
	
	update_sprite()
	
func set_sprite_keys():
	shoes_keys = Global.shoes_collection.keys()

func update_sprite():
	var current_sprite = shoes_keys[current_shoes_index]
	shoes_sprite.texture = Global.shoes_collection[current_sprite]
	#hair_sprite_modulate = Global.hair_color_options[current_color_index]
	
	Global.selected_shoes = current_sprite 
	#Global.selected_hair_color = Global.hair_color_options[current_color_index]

func _on_collection_button_pressed():
	current_shoes_index = (current_shoes_index + 1) % shoes_keys.size() 
	update_sprite()

	
