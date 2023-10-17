extends Button

@export var widthInput : LineEdit
@export var heightInput : LineEdit
@export var depthInput : LineEdit

@export var cube : Node

# Called when the node enters the scene tree for the first time.
func _ready():
	pressed.connect(_button_pressed)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _button_pressed():
	print("Generate button pressed")
	cube.width = widthInput.text
	cube.height = heightInput.text
	cube.depth = depthInput.text
	
	cube.clear()
	cube.generate()
	
	print("Generate button pressed")
