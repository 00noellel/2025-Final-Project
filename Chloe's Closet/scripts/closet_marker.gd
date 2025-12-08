extends Area2D

@export var closet_scene: PackedScene

var player_in_area = false

func _ready():
    body_entered.connect(_on_body_entered)
    body_exited.connect(_on_body_exited)
    set_process(true)

func _on_body_entered(body):
    if body.name == "Chloe":
        player_in_area = true

func _on_body_exited(body):
    if body.name == "Chloe":
        player_in_area = false

func _process(delta):
    if Input.is_action_just_pressed("interact") and player_in_area:
        open_closet()



func open_closet():
    if closet_scene:
        var menu = closet_scene.instantiate()
        get_tree().root.add_child(menu)
        
        # Don't pause process mode for UI
        menu.process_mode = Node.PROCESS_MODE_ALWAYS
        
        var canvas_layer = menu.get_node("CanvasLayer")
        if canvas_layer:
            var control = canvas_layer.get_child(0)
            
            control.scale = Vector2(2, 2)
            
            control.position = Vector2(125, 125)

            control.size = Vector2(226, 159)
        
        get_tree().paused = true
	

	
