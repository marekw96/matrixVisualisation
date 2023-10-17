class_name StyleManager extends Node

@export var styles: Array[Style]

func getStyle(name):
	for style in styles:
		if style.name == name:
			return style
			
	return null
