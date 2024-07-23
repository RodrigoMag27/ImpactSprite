extends CanvasLayer

@onready var health_bar: TextureProgressBar = $Control/HealthBar
@onready var stamina_bar: TextureProgressBar = $Control/StaminaBar

@onready var enemy_health_bar: TextureProgressBar = $EnemyControl/HealthBar
@onready var enemy_stamina_bar: TextureProgressBar = $EnemyControl/StaminaBar


func _ready():
	Globals.connect("player_stats_change", change_player_ui)
	Globals.connect("enemy_stats_change", change_enemy_ui)

func change_player_ui(health, stamina):
	health_bar.value = health
	stamina_bar.value = stamina

func change_enemy_ui(health, stamina):
	enemy_health_bar.value = health
	enemy_stamina_bar.value = stamina
