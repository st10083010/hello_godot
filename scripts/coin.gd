extends Area2D

# 使用unique name引用而不是path
@onready var game_manager = %Game_Manager
@onready var animation_player = $AnimationPlayer

func _on_body_entered(body):
	game_manager.add_score()
	print("+1 coin")
	
	# 透過anmation player處理部分音訊及釋放資源
	animation_player.play("pickup")
