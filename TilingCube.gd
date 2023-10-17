extends Node

@export var tileWidth: int
@export var tileHeight: int
@export var tileDepth: int

@export var cube: Node

func _ready():
	var blockInstance = CSGBox3D.new()
	var material = StandardMaterial3D.new()
	material.albedo_color = Color(255,0,0)
	material.transparency = BaseMaterial3D.TRANSPARENCY_ALPHA
	material.blend_mode = BaseMaterial3D.BLEND_MODE_MUL
	
	blockInstance.position = Vector3(-0.1,-0.1,-0.1)
	blockInstance.size = Vector3(2.2, 1.2, 1.2)
	blockInstance.material = material
	add_child(blockInstance)
