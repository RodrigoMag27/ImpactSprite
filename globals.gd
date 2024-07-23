extends Node

signal player_stats_change(health, stamina)
signal enemy_stats_change(health, stamina)


var player_health: int:
	set(value):
		player_stats_change.emit(value, player_stamina)
		player_health = value

var player_stamina: int: 
	set(value):
		player_stats_change.emit(player_health, value)
		player_stamina = value


var enemy_health: int:
	set(value):
		enemy_stats_change.emit(value, enemy_stamina)
		enemy_health = value

var enemy_stamina: int:
	set(value):
		enemy_stats_change.emit(enemy_health, value)
		enemy_stamina = value
