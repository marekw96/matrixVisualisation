extends Node

enum IterationScheme {XYZ, YXZ, ZYX}
@export var iterationScheme: IterationScheme
@export var cube : CubeCreator

var width: int
var height: int
var depth: int

var currentId = 0
var maxId = 0
var timer: Timer

func _ready():
	width = 5
	height = 5
	depth = 5
	
	maxId = width * height * depth

	timer = Timer.new()
	timer.autostart = true
	timer.wait_time = 0.25
	add_child(timer)
	timer.timeout.connect(onTimeout)

func onTimeout():
	var pos = getPosition(currentId)
	cube.getCube(pos.x, pos.y, pos.z).material = cube.normalMaterial
	print("currentId", currentId)
	
	currentId = 1 + currentId
	if currentId == maxId:
		timer.stop()
 
func getPosition(id: int):
	var vdepth = id / (width*height)
	var vheight = (id - width*height*vdepth) / height
	var vwidth = (id - width*height * vdepth - height*vheight)
		
	if iterationScheme == IterationScheme.XYZ:
		return Vector3(vwidth, vheight, vdepth)
	if iterationScheme == IterationScheme.YXZ:
		return Vector3(vheight, vwidth, vdepth)
	if iterationScheme == IterationScheme.ZYX:
		return Vector3(vdepth, vheight, vwidth)
