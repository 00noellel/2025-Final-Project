extends CharacterBody2D


@onready var hair = $Skeleton/Hair
@onready var shirt = $Skeleton/Shirt
@onready var pants = $Skeleton/Pants
@onready var shoes = $Skeleton/Shoes


const SPEED = 130.0

func _ready():
    initialize_player()

func _physics_process(delta: float) -> void:
	# Get input for all 4 directions
    var direction_x := Input.get_axis("ui_left", "ui_right")
    var direction_y := Input.get_axis("ui_up", "ui_down")
	
	# Horizontal movement
    if direction_x:
        velocity.x = direction_x * SPEED
    else:
        velocity.x = move_toward(velocity.x, 0, SPEED)
	
	# Vertical movement
    if direction_y:
        velocity.y = direction_y * SPEED
    else:
        velocity.y = move_toward(velocity.y, 0, SPEED)

    move_and_slide()


func initialize_player():

    if Global.selected_hair and Global.hair_collection.has(Global.selected_hair):
        hair.texture = Global.hair_collection[Global.selected_hair]
    
    if Global.selected_shirt and Global.shirt_collection.has(Global.selected_shirt):
        shirt.texture = Global.shirt_collection[Global.selected_shirt]
    
    if Global.selected_pants and Global.pants_collection.has(Global.selected_pants):
        pants.texture = Global.pants_collection[Global.selected_pants]
    
    if Global.selected_shoes and Global.shoes_collection.has(Global.selected_shoes):
        shoes.texture = Global.shoes_collection[Global.selected_shoes]
