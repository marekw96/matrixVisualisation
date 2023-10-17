extends OptionButton


# Called when the node enters the scene tree for the first time.
func _ready():
	add_item("XYZ")
	add_item("ZYX")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
