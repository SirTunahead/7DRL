extends Area2D

onready var ray = $RayCast2D
const ENEMY_SCENE = preload("res://Entity/Enemy.tscn")

onready var healthlabel = $HealthLabel
onready var manalabel = $ManaLabel

#onready var gridContainer = $GridContainer
onready var strengthLabel = $Stats/GridContainer/StrenghtLabel
onready var dexterityLabel = $Stats/GridContainer/DexterityLabel
onready var vitalityLabel = $Stats/GridContainer/VitalityLabel
onready var magicLabel = $Stats/GridContainer/MagicLabel

var strength = 10
var dexterity = 10
var vitality = 10
var magic = 10

var max_health
var max_mana

var current_health = max_health
var current_mana = max_mana

var tile_size = 32
var inputs = {"ui_right": Vector2.RIGHT, 
"ui_left": Vector2.LEFT, 
"ui_up": Vector2.UP,
"ui_down": Vector2.DOWN}


signal end_turn

func _ready():
	calc_stats()
	position  = position .snapped(Vector2.ONE * tile_size)
	position  += Vector2.ONE * tile_size/2

func calc_stats():
	max_health = (vitality*2) + strength/2
	max_mana = magic/2
	
	
	if current_health == null:
		current_health = max_health
	if current_mana == null:
		current_mana = max_mana
		
	healthlabel.text = "HP:" + str(getCurrentHealth())+ "/" + str(getMaxHealth())
	manalabel.text = "Mana:" + str(getCurrentMana())+"/"+str(getMaxMana())
	strengthLabel.text = "Strength: " + str(strength)
	dexterityLabel.text = "Dexterity: " + str(dexterity)
	vitalityLabel.text = "Vitality: " + str(vitality)
	magicLabel.text = "Magic: " + str(magic)
	
func _unhandled_input(event):
	for dir in inputs.keys():
		if event.is_action_pressed(dir):
			move (dir)

func move(dir):
	ray.cast_to = inputs[dir] * tile_size
	ray.force_raycast_update()
	var object = ray.get_collider()
	#print("Ray: " + str(object))
	
	if !ray.is_colliding():
		position += inputs[dir] * tile_size
	#elif object is Area2D:
		#print("Combat!")
	elif object.is_in_group("Group_Enemy") == true:
		#print(" Group Combat!")
		#print("instance id: " + str(object.get_instance_id()))
		combat(object)
	
	if current_health <= 0:
		die()
	emit_signal("end_turn")

func die():
	queue_free()

func combat(object):
	#print("object name: " + object.name)
	var main = get_tree().current_scene
	var enemy = main.find_node(object.name)
	#print("Enemy: " +str(enemy))
	enemy.takeDamage()

func getMaxHealth():
	return max_health

func getMaxMana():
	return max_mana
	
func getCurrentHealth():
	return current_health

func getCurrentMana():
	return current_mana




