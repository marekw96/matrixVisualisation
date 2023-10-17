class_name Style extends Node

@export var normal: StandardMaterial3D
@export var hidden: StandardMaterial3D
@export var selected: StandardMaterial3D
@export var styleName: String

func _ready():
	normal = getChildWithName("normal").material
	hidden = getChildWithName("hidden").material
	selected = getChildWithName("selected").material
	
	print(name, " normal ", normal.albedo_color)
	print(name, " hidden ", hidden.albedo_color)
	print(name, " selected ", selected.albedo_color)

	for child in get_children():
		child.visible = false

func getChildWithName(name):
	for child in get_children():
		if child.name == name:
			return child
			
	return null
