class_name Style extends Node

@export var color: Color
var normal: StandardMaterial3D
var hidden: StandardMaterial3D
var selected: StandardMaterial3D

func _ready():
	normal = StandardMaterial3D.new()
	normal.albedo_color = color
	
	hidden = StandardMaterial3D.new()
	hidden.albedo_color = normal.albedo_color
	hidden.transparency = BaseMaterial3D.TRANSPARENCY_ALPHA
	hidden.blend_mode = BaseMaterial3D.BLEND_MODE_MUL
	
	selected = StandardMaterial3D.new()
	selected.albedo_color = normal.albedo_color.darkened(0.65)
