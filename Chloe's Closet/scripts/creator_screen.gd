extends CanvasLayer

func _ready():
    # Get the first child (your UI container)
    var ui_container = get_child(0)
    if ui_container:
        ui_container.position = Vector2(-105, -30)
