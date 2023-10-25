extends VBoxContainer

@export var styleMangaer: StyleManager

# Called when the node enters the scene tree for the first time.
func _ready():
	for style in styleMangaer.get_children():
		var line = HBoxContainer.new()
		var descLabel = Label.new()
		var colorBox = ColorRect.new()
		colorBox.color = style.normal.albedo_color
		colorBox.custom_minimum_size = Vector2(25,25)
		line.add_child(colorBox)
		
		descLabel.text = style.name
		line.add_child(descLabel)
		
		add_child(line)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
