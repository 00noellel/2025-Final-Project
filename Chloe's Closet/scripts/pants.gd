extends Node2D


@onready var pants_sprite = $Sprite2D

var pants_keys = []
var current_pants_index = 0

func _ready():
	set_sprite_keys()
	
	current_pants_index = pants_keys.find(Global.selected_pants)
	if current_pants_index == -1:
		current_pants_index = 0
	
	update_sprite()
	
func set_sprite_keys():
	pants_keys = Global.pants_collection.keys()

func update_sprite():
	var current_sprite = pants_keys[current_pants_index]
	pants_sprite.texture = Global.pants_collection[current_sprite]
	#hair_sprite_modulate = Global.hair_color_options[current_color_index]
	
	Global.selected_pants = current_sprite 
	#Global.selected_hair_color = Global.hair_color_options[current_color_index]

func _on_collection_button_pressed():
	current_pants_index = (current_pants_index + 1) % pants_keys.size() 
	update_sprite()
