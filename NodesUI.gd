extends VBoxContainer

@export var commands: CommandParserAndExecutor

# Called when the node enters the scene tree for the first time.
func _ready():
	commands.addedMatrix.connect(onAddedMatrixHandler)
	commands.removedMatrix.connect(onRemovedMatrixHandler)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func onAddedMatrixHandler(name, cube):
	rewrite()
	
func onRemovedMatrixHandler(name):
	rewrite()

func clear():
	for child in get_children():
		remove_child(child)

func rewrite():
	clear()
	
	for cube in commands.getAllCubes():
		var line = HBoxContainer.new()

		var colorBox = ColorRect.new()
		colorBox.color = cube['cube'].normalMaterial.albedo_color
		colorBox.custom_minimum_size = Vector2(25,25)
		line.add_child(colorBox)
		
		var desc = Label.new()
		desc.text = cube['name']
		desc.text += " <"
		desc.text += str(cube['cube'].width) + ","
		desc.text += str(cube['cube'].height) + ","
		desc.text += str(cube['cube'].depth) + ">"
		line.add_child(desc)
		add_child(line)
