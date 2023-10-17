extends Control

@export var scriptCode: TextEdit
@export var executionButton: Button
@export var commadExecutor: CommandParserAndExecutor


# Called when the node enters the scene tree for the first time.
func _ready():
	executionButton.pressed.connect(onExecutionButtonPressed)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func onExecutionButtonPressed():
	commadExecutor.parse(scriptCode.text)
	commadExecutor.start()
