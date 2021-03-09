extends Area2D

var strength = 5
var dexterity = 5
var vitality = 5
var magic = 5
export var enemyName = "Test"

var max_health = 1
var max_mana = 0

var current_health = max_health
var current_mana = max_mana

var tile_size = 32

func takeDamage():
	#print("Health at Start: " +str(current_health))
	current_health = current_health - 1
	if current_health <= 0:
		die()

func die():
	#print("died!")
	self.queue_free()

func getEnemyName():
	return enemyName
# Called when the node enters the scene tree for the first time.
#func _ready():
#	pass
#		die()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(_delta):
	#pass
