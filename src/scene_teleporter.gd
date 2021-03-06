extends Area2D

# member variables here, example:
# var a=2
# var b="textvar"

var node_path = self.get_path()
export(String, FILE, "*.tscn") var scene_path

func _ready():
	print (scene_path + ", " + node_path)
	find_node("teleporter_debug_label").set_text(scene_path)
	
func _on_scene_teleporter_body_enter( body ):
	print("Teleporting to " + scene_path)
	#find_node("teleporter_debug_label").set_text(scene_path)
	if body.get_name() == "player":
		transition.fade_to(str(scene_path))
	#transition.fade_to("res://" + scene_path)
	#var tele1pos = get_node("/root/scn3/tele1/teleporter1").get_global_pos()
	#var tele2pos = self.get_pos()
	#get_node("/root/scn3/tile_map/player").set_pos(tele1pos)