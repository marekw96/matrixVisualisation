extends RichTextLabel


# Called when the node enters the scene tree for the first time.
func _ready():
	var helpContent = FileAccess.open("res://docs/commands.txt", FileAccess.READ)
	if helpContent:
		
		add_text(helpContent.get_as_text())
	else:
		print("commands.txt not loaded")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
