class_name CubeCreator extends Node3D

@export var width : int
@export var height : int
@export var depth : int

@export var space : float = 0.1

@export var normalMaterial: StandardMaterial3D
@export var hiddenMaterial: StandardMaterial3D
@export var selectedMaterial: StandardMaterial3D

func _ready():
	generate()

func clear():
	for child in get_children():
		remove_child(child)

func generate():
	for z in range(depth):
		for y in range(height):
			for x in range(width):
				var blockInstance = CSGBox3D.new()
				blockInstance.position = Vector3(x * (1 + space),y * (1+space),-1 * z * (1+space))
				blockInstance.material = hiddenMaterial
				add_child(blockInstance)

func getCube(x,y,z):
	return get_children()[x + y *width + z *width*height]
	
func setAllBlocksStyleTo(material):
	for child in get_children():
		child.material = material
