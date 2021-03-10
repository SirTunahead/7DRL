extends Button
onready var gridContainer = $GridContainer
onready var statPanel = $StatPanel

func _ready():
	pass
	
func _on_Stats_pressed():
	
	#print("Visible: " + str(gridContainer.visible))
	
	if gridContainer.visible == false:
		gridContainer.visible = true
		statPanel.visible = true
	elif gridContainer.visible == true:
		gridContainer.visible = false
		statPanel.visible = false
