extends ColorRect

var splash_order: int = 0
onready var images_list = $SplashList.get_children()


func _ready():
	$AnimationPlayer.play('close_curtain')


func _to_main_menu():
	SceneDirector.change_to('res://src/scenes/control/MainMenu.tscn')


func _splash_image():
	if splash_order >= len(images_list):
		_to_main_menu()
	else:
		$AnimationPlayer.play('close_curtain')


func _change_image():
	for image in images_list:
		image.visible = false
	
	images_list[splash_order].visible = true
	splash_order += 1
