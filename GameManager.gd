extends Node2D

onready var player = $Player
onready var enemy = $Enemy
onready var healthlabel = $HealthLabel
onready var manalabel = $ManaLabel
onready var turn = $TurnLabel

var turncounter = 1

func _ready():
	start_player_turn()

func start_enemy_turn():
	if enemy != null:
		if enemy.current_health == 0:
			enemy.queue_free()
	turncounter += 1
	start_player_turn()
	
func start_player_turn():
	
	healthlabel.text = "HP:" + str(player.getCurrentHealth())+ "/" + str(player.getMaxHealth())
	manalabel.text = "Mana:" + str(player.getCurrentMana())+"/"+str(player.getMaxMana())
	yield(player, "end_turn")
	turn.text = "Turn: " + str(turncounter)
	start_enemy_turn()
	
