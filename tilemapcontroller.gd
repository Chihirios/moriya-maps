extends TileMapLayer


func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.is_pressed():
			var global_clicked = event.position
			var pos_clicked = local_to_map(to_local(global_clicked))
			print(pos_clicked)
			var current_atlas_coords = get_cell_atlas_coords(pos_clicked)
			print(current_atlas_coords)
