class_name StyleManager extends Node

func getStyle(name):
	for style in get_children():
		if style.name == name:
			return style
			
	return null
