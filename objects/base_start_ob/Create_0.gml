/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 19F001A8
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "maze_1_rm"
if(room == maze_1_rm)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 24E9F10B
	/// @DnDParent : 19F001A8
	/// @DnDArgument : "var" "global.play_diff_level"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "3"
	if(global.play_diff_level < 3)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 25D76FD7
		/// @DnDParent : 24E9F10B
		/// @DnDArgument : "expr" "vine_start_sp"
		/// @DnDArgument : "var" "map_type"
		map_type = vine_start_sp;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 0CB68259
	/// @DnDParent : 19F001A8
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7EB7A576
		/// @DnDParent : 0CB68259
		/// @DnDArgument : "var" "global.play_diff_level"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "5"
		if(global.play_diff_level < 5)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 51E968B6
			/// @DnDParent : 7EB7A576
			/// @DnDArgument : "expr" "broke_start_sp"
			/// @DnDArgument : "var" "map_type"
			map_type = broke_start_sp;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 47373213
		/// @DnDParent : 0CB68259
		else
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 39BF34E9
			/// @DnDParent : 47373213
			/// @DnDArgument : "var" "global.play_diff_level"
			/// @DnDArgument : "op" "3"
			/// @DnDArgument : "value" "7"
			if(global.play_diff_level <= 7)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 10FE6F71
				/// @DnDParent : 39BF34E9
				/// @DnDArgument : "expr" "base_start_sp"
				/// @DnDArgument : "var" "map_type"
				map_type = base_start_sp;
			}
		}
	}

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 11389E82
	/// @DnDParent : 19F001A8
	/// @DnDArgument : "value" "map_type"
	/// @DnDArgument : "instvar" "10"
	sprite_index = map_type;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5C1994BC
	/// @DnDParent : 19F001A8
	/// @DnDArgument : "var" "global.play_diff_level"
	/// @DnDArgument : "value" "1"
	if(global.play_diff_level == 1)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 45AFC38D
		/// @DnDParent : 5C1994BC
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "global.aud_transfer"
		global.aud_transfer = 1;
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 18C920C6
		/// @DnDParent : 5C1994BC
		/// @DnDArgument : "obj" "subtitle_ob"
		/// @DnDSaveInfo : "obj" "subtitle_ob"
		var l18C920C6_0 = false;
		l18C920C6_0 = instance_exists(subtitle_ob);
		if(l18C920C6_0)
		{
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 1614F511
			/// @DnDApplyTo : {subtitle_ob}
			/// @DnDParent : 18C920C6
			with(subtitle_ob) instance_destroy();
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 37B7A63F
		/// @DnDParent : 5C1994BC
		/// @DnDArgument : "var" "global.so_subt"
		/// @DnDArgument : "value" "1"
		if(global.so_subt == 1)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 46348633
			/// @DnDParent : 37B7A63F
			/// @DnDArgument : "objectid" "subtitle_ob"
			/// @DnDArgument : "layer" ""Room_Start_L""
			/// @DnDSaveInfo : "objectid" "subtitle_ob"
			instance_create_layer(0, 0, "Room_Start_L", subtitle_ob);
		}
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 659ABDD4
		/// @DnDParent : 5C1994BC
		/// @DnDArgument : "soundid" "tut_1"
		/// @DnDSaveInfo : "soundid" "tut_1"
		audio_play_sound(tut_1, 0, 0, 1.0, undefined, 1.0);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3310F26A
		/// @DnDParent : 5C1994BC
		/// @DnDArgument : "expr" "700"
		/// @DnDArgument : "var" "timer"
		timer = 700;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 7FE865FE
	/// @DnDParent : 19F001A8
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 232C84DA
		/// @DnDParent : 7FE865FE
		/// @DnDArgument : "expr" "120"
		/// @DnDArgument : "var" "timer"
		timer = 120;
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 45242413
	/// @DnDInput : 2
	/// @DnDParent : 19F001A8
	/// @DnDArgument : "expr" "x"
	/// @DnDArgument : "expr_1" "y"
	/// @DnDArgument : "var" "global.start_x"
	/// @DnDArgument : "var_1" "global.start_y"
	global.start_x = x;
	global.start_y = y;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2C7FA842
	/// @DnDParent : 19F001A8
	/// @DnDArgument : "expr" "3"
	/// @DnDArgument : "var" "global.map_tap_transfer"
	global.map_tap_transfer = 3;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 79C42C20
	/// @DnDParent : 19F001A8
	/// @DnDArgument : "expr" "11"
	/// @DnDArgument : "var" "maze_wall"
	maze_wall = 11;

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 489215A9
	/// @DnDParent : 19F001A8
	/// @DnDArgument : "script" "maze_wall_sc"
	/// @DnDSaveInfo : "script" "maze_wall_sc"
	script_execute(maze_wall_sc);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 37E888F5
	/// @DnDParent : 19F001A8
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "maze_wall_ob"
	/// @DnDArgument : "layer" ""Map_L""
	/// @DnDSaveInfo : "objectid" "maze_wall_ob"
	instance_create_layer(x + 0, y + 0, "Map_L", maze_wall_ob);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 270354D2
	/// @DnDInput : 2
	/// @DnDParent : 19F001A8
	/// @DnDArgument : "expr" ""temp_save_2.ini""
	/// @DnDArgument : "expr_1" "11"
	/// @DnDArgument : "var" "save_name"
	/// @DnDArgument : "var_1" "maze_object"
	save_name = "temp_save_2.ini";
	maze_object = 11;

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 3A802148
	/// @DnDParent : 19F001A8
	/// @DnDArgument : "script" "save_sc"
	/// @DnDSaveInfo : "script" "save_sc"
	script_execute(save_sc);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 7C2FC2D2
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 25A98EDE
	/// @DnDParent : 7C2FC2D2
	/// @DnDArgument : "var" "room"
	/// @DnDArgument : "value" "freeplay_1_rm"
	if(room == freeplay_1_rm)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 279BC001
		/// @DnDParent : 25A98EDE
		/// @DnDArgument : "expr" "vine_start_sp"
		/// @DnDArgument : "var" "map_type"
		map_type = vine_start_sp;
	
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 46DC61BA
		/// @DnDParent : 25A98EDE
		/// @DnDArgument : "value" "map_type"
		/// @DnDArgument : "instvar" "10"
		sprite_index = map_type;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7D279A2A
		/// @DnDParent : 25A98EDE
		/// @DnDArgument : "expr" "120"
		/// @DnDArgument : "var" "timer"
		timer = 120;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0C816752
		/// @DnDInput : 2
		/// @DnDParent : 25A98EDE
		/// @DnDArgument : "expr" "x"
		/// @DnDArgument : "expr_1" "y"
		/// @DnDArgument : "var" "global.start_x"
		/// @DnDArgument : "var_1" "global.start_y"
		global.start_x = x;
		global.start_y = y;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 45C52FC2
		/// @DnDParent : 25A98EDE
		/// @DnDArgument : "expr" "3"
		/// @DnDArgument : "var" "global.map_tap_transfer"
		global.map_tap_transfer = 3;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 27739915
		/// @DnDParent : 25A98EDE
		/// @DnDArgument : "expr" "11"
		/// @DnDArgument : "var" "maze_wall"
		maze_wall = 11;
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 47457C49
		/// @DnDParent : 25A98EDE
		/// @DnDArgument : "script" "maze_wall_sc"
		/// @DnDSaveInfo : "script" "maze_wall_sc"
		script_execute(maze_wall_sc);
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 078B4FE2
		/// @DnDParent : 25A98EDE
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "maze_wall_ob"
		/// @DnDArgument : "layer" ""Map_L""
		/// @DnDSaveInfo : "objectid" "maze_wall_ob"
		instance_create_layer(x + 0, y + 0, "Map_L", maze_wall_ob);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6E6F6487
		/// @DnDInput : 2
		/// @DnDParent : 25A98EDE
		/// @DnDArgument : "expr" ""temp_save_2.ini""
		/// @DnDArgument : "expr_1" "11"
		/// @DnDArgument : "var" "save_name"
		/// @DnDArgument : "var_1" "maze_object"
		save_name = "temp_save_2.ini";
		maze_object = 11;
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 31E2761E
		/// @DnDParent : 25A98EDE
		/// @DnDArgument : "script" "save_sc"
		/// @DnDSaveInfo : "script" "save_sc"
		script_execute(save_sc);
	}
}