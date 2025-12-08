extends Node2D

@onready var hair = $Skeleton/Hair

var selected_hair = ""

func _ready() -> void:
    pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
    pass


func _on_confirm_button_pressed():
    
    var player = get_tree().root.find_child("Chloe", true, false)
    if player:
        
        # Update hair
        if Global.selected_hair and Global.hair_collection.has(Global.selected_hair):
            player.hair.texture = Global.hair_collection[Global.selected_hair]
        
        # Update shirt
        if Global.selected_shirt and Global.shirt_collection.has(Global.selected_shirt):
            player.shirt.texture = Global.shirt_collection[Global.selected_shirt]
        
        # Update pants
        if Global.selected_pants and Global.pants_collection.has(Global.selected_pants):
            player.pants.texture = Global.pants_collection[Global.selected_pants]
        
        # Update shoes
        if Global.selected_shoes and Global.shoes_collection.has(Global.selected_shoes):
            player.shoes.texture = Global.shoes_collection[Global.selected_shoes]

    queue_free()  # This removes the entire Closet scene
    
    # 3. Unpause the game
    get_tree().paused = false
    
    # 4. Make sure player can move again
    if player:
        player.set_process(true)
        player.set_physics_process(true)
