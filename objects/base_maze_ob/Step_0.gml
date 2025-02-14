/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6E6AB238
/// @DnDArgument : "var" "timer"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "1"
if(timer > 1)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 543A326F
	/// @DnDParent : 6E6AB238
	/// @DnDArgument : "expr" "-2"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "timer"
	timer += -2;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 111891CB
/// @DnDArgument : "var" "timer"
if(timer == 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 04F5CA13
	/// @DnDParent : 111891CB
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "timer"
	timer = 1;

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 7A9D57AD
	/// @DnDParent : 111891CB
	/// @DnDArgument : "script" "global_piece_changer_sc"
	/// @DnDSaveInfo : "script" "global_piece_changer_sc"
	script_execute(global_piece_changer_sc);

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 5BE9687D
	/// @DnDParent : 111891CB
	/// @DnDArgument : "script" "no_option_highlighter_sc"
	/// @DnDSaveInfo : "script" "no_option_highlighter_sc"
	script_execute(no_option_highlighter_sc);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 778E9786
	/// @DnDParent : 111891CB
	/// @DnDArgument : "var" "global.init_end_maze"
	if(global.init_end_maze == 0)
	{
		/// @DnDAction : YoYo Games.Audio.Audio_Set_Pitch
		/// @DnDVersion : 1
		/// @DnDHash : 186507D7
		/// @DnDParent : 778E9786
		/// @DnDArgument : "sound" "tap_so"
		/// @DnDArgument : "pitch" "random_range(.7,1)"
		/// @DnDSaveInfo : "sound" "tap_so"
		audio_sound_pitch(tap_so, random_range(.7,1));
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 76EB1D2A
		/// @DnDParent : 778E9786
		/// @DnDArgument : "soundid" "tap_so"
		/// @DnDSaveInfo : "soundid" "tap_so"
		audio_play_sound(tap_so, 0, 0, 1.0, undefined, 1.0);
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 70176EA6
	/// @DnDInput : 2
	/// @DnDParent : 111891CB
	/// @DnDArgument : "expr" "13"
	/// @DnDArgument : "var" "maze_wall"
	/// @DnDArgument : "var_1" "maze_object"
	maze_wall = 13;
	maze_object = 0;

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 4443D047
	/// @DnDParent : 111891CB
	/// @DnDArgument : "script" "maze_wall_sc"
	/// @DnDSaveInfo : "script" "maze_wall_sc"
	script_execute(maze_wall_sc);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3858C475
	/// @DnDParent : 111891CB
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "maze_wall_ob"
	/// @DnDArgument : "layer" ""Map_L""
	/// @DnDSaveInfo : "objectid" "maze_wall_ob"
	instance_create_layer(x + 0, y + 0, "Map_L", maze_wall_ob);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 66F2B5D9
	/// @DnDInput : 2
	/// @DnDParent : 111891CB
	/// @DnDArgument : "expr" ""temp_save_2.ini""
	/// @DnDArgument : "expr_1" "1"
	/// @DnDArgument : "var" "save_name"
	/// @DnDArgument : "var_1" "maze_object"
	save_name = "temp_save_2.ini";
	maze_object = 1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0729F7CA
	/// @DnDParent : 111891CB
	/// @DnDArgument : "var" "prev_map"
	/// @DnDArgument : "op" "2"
	if(prev_map > 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7BF85CFA
		/// @DnDParent : 0729F7CA
		/// @DnDArgument : "expr" "2"
		/// @DnDArgument : "var" "maze_object"
		maze_object = 2;
	}

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 71964163
	/// @DnDParent : 111891CB
	/// @DnDArgument : "script" "save_sc"
	/// @DnDSaveInfo : "script" "save_sc"
	script_execute(save_sc);
}