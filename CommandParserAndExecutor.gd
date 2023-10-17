class_name CommandParserAndExecutor extends Node

@export_multiline  var commands:String
@export var styleManager: StyleManager

var cubes = []
var lines = []
var currentLine = 0
var started = false
var waitTime = 0

func _ready():
	parse(commands)
	started = true

func start():
	started = true

func parse(txt):
	started = false
	currentLine = 0
	lines = txt.split("\n")

func parseCommand(cmd):
	if cmd[0] == "create":
		createCube(cmd[1], cmd[2], cmd[3], cmd[4], cmd[6])	
		
	if cmd[0] == "changeBlockStyle":
		changeBlockStyle(cmd[1], int(cmd[2]), int(cmd[3]), int(cmd[4]), cmd[6])
		
	if cmd[0] == "wait":
		wait(cmd[1])
		
	if cmd[0] == "setAllCubesStyle":
		setAllCubesStyle(cmd[1], cmd[2])
		
	if cmd[0] == "setPosition":
		setPosition(cmd[1], float(cmd[2]), float(cmd[3]), float(cmd[4]))

	if cmd[0] == "setRotation":
		setRotation(cmd[1], float(cmd[2]),float(cmd[3]),float(cmd[4]))

	if cmd[0] == "rotate":
		rotate(cmd[1], float(cmd[2]),float(cmd[3]),float(cmd[4]))
		
func createCube(name, x, y,z, styleName):
	var cube = CubeCreator.new()
	cube.width = x
	cube.height = y
	cube.depth = z
	cube.generate()
	
	var style = styleManager.getStyle(styleName)
	if style != null:
		cube.hiddenMaterial = style.hidden
		cube.normalMaterial = style.normal
		cube.selectedMaterial = style.selected
	
	add_child(cube)
	cubes.append({"name": name, "cube": cube})
	
func wait(howLong):
	waitTime = waitTime + float(howLong)

func changeBlockStyle(cubeName, x, y, z, newStyle):
	var cube = getCubeWithName(cubeName)
	if cube == null:
		print("changeBlockStyle unable to find cube with name", cubeName)
		return
		
	if newStyle == "selected":
		cube.getCube(x,y,z).material = cube.selectedMaterial
	if newStyle == "normal":
		cube.getCube(x,y,z).material = cube.normalMaterial
	if newStyle == "hidden":
		cube.getCube(x,y,z).material = cube.hiddenMaterial
		
	print("changeBlockStyle of ", cubeName," ", x," ", y, " ",z, " ", " to ", newStyle)

func getCubeWithName(cubeName):
	for entry in cubes:
		if entry['name'] == cubeName:
			return entry['cube']
	
	return null

func setAllCubesStyle(cubeName, newStyle):
	var cube = getCubeWithName(cubeName)
	if cube == null:
		print("setAllCubesStyle unable to find cube with name", cubeName)
		return
		
	if newStyle == "selected":
		cube.setAllBlocksStyleTo(cube.selectedMaterial)
	if newStyle == "normal":
		cube.setAllBlocksStyleTo(cube.normalMaterial)
	if newStyle == "hidden":
		cube.setAllBlocksStyleTo(cube.hiddenMaterial)

func setPosition(cubeName, x,y,z):
	var cube = getCubeWithName(cubeName)
	if cube == null:
		print("setPosition unable to find cube with name", cubeName)
		return
		
	cube.global_position = Vector3(x,y,z)
	
func setRotation(cubeName, x,y,z):
	var cube = getCubeWithName(cubeName)
	if cube == null:
		print("setRotationX unable to find cube with name", cubeName)
		return
		
	cube.rotation = Vector3(x,y,z)
	
func rotate(cubeName, x,y,z):
	var cube = getCubeWithName(cubeName)
	if cube == null:
		print("setRotationX unable to find cube with name", cubeName)
		return
		
	cube.set_rotation_degrees(Vector3(x,y,z))
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if started == false:
		return true
	
	if waitTime > 0:
		waitTime = waitTime - delta
	else:
		waitTime = 0
		parseCommand(lines[currentLine].split(" "))
		currentLine = currentLine + 1
		
		if currentLine >= lines.size():
			started = false
			print("Stopped executing script")
		
	return true
