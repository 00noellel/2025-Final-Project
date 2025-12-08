extends Node2D

@onready var hair_sprite = $Sprite2D

var hair_keys = []
var current_hair_index = 0


func _ready():
	set_sprite_keys()
	
	current_hair_index = hair_keys.find(Global.selected_hair)
	if current_hair_index == -1:
		current_hair_index = 0
	
	update_sprite()

func set_sprite_keys():
	hair_keys = Global.hair_collection.keys()

func update_sprite():
	var current_sprite = hair_keys[current_hair_index]
	hair_sprite.texture = Global.hair_collection[current_sprite]
	#hair_sprite_modulate = Global.hair_color_options[current_color_index]
	
	Global.selected_hair = current_sprite 
	#Global.selected_hair_color = Global.hair_color_options[current_color_index]


func _on_collection_button_pressed():
	current_hair_index = (current_hair_index + 1) % hair_keys.size() 
	update_sprite()
