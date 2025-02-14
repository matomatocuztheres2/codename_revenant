/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2AF6DDF3
/// @DnDInput : 6
/// @DnDArgument : "expr" "x"
/// @DnDArgument : "expr_1" "y"
/// @DnDArgument : "var" "global.mino_x"
/// @DnDArgument : "var_1" "global.mino_y"
/// @DnDArgument : "var_2" "cross_activate"
/// @DnDArgument : "var_3" "uncomplete_maze"
/// @DnDArgument : "var_4" "piece_check"
/// @DnDArgument : "var_5" "piece_check_total"
global.mino_x = x;
global.mino_y = y;
cross_activate = 0;
uncomplete_maze = 0;
piece_check = 0;
piece_check_total = 0;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5E2DA1ED
/// @DnDArgument : "var" "global.play_diff_level"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "3"
if(global.play_diff_level < 3)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 117F2DEA
	/// @DnDParent : 5E2DA1ED
	/// @DnDArgument : "expr" "vine_minotaur_sp"
	/// @DnDArgument : "var" "map_type"
	map_type = vine_minotaur_sp;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 43E8CCE5
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0F99E53A
	/// @DnDParent : 43E8CCE5
	/// @DnDArgument : "var" "global.play_diff_level"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "5"
	if(global.play_diff_level < 5)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0EF79910
		/// @DnDParent : 0F99E53A
		/// @DnDArgument : "expr" "broke_minotaur_sp"
		/// @DnDArgument : "var" "map_type"
		map_type = broke_minotaur_sp;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 1A4A9533
	/// @DnDParent : 43E8CCE5
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0100C145
		/// @DnDParent : 1A4A9533
		/// @DnDArgument : "var" "global.play_diff_level"
		/// @DnDArgument : "op" "3"
		/// @DnDArgument : "value" "7"
		if(global.play_diff_level <= 7)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 62B1A3C4
			/// @DnDParent : 0100C145
			/// @DnDArgument : "expr" "base_minotaur_sp"
			/// @DnDArgument : "var" "map_type"
			map_type = base_minotaur_sp;
		}
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1CE8222E
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "maze_1_rm"
if(room == maze_1_rm)
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 27CA8FD7
	/// @DnDParent : 1CE8222E
	/// @DnDArgument : "value" "map_type"
	/// @DnDArgument : "instvar" "10"
	sprite_index = map_type;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 6A9C5EEA
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 249B5D7D
	/// @DnDParent : 6A9C5EEA
	/// @DnDArgument : "var" "room"
	/// @DnDArgument : "value" "freeplay_1_rm"
	if(room == freeplay_1_rm)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6D71923A
		/// @DnDParent : 249B5D7D
		/// @DnDArgument : "expr" "vine_minotaur_sp"
		/// @DnDArgument : "var" "map_type"
		map_type = vine_minotaur_sp;
	
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 1040856A
		/// @DnDParent : 249B5D7D
		/// @DnDArgument : "value" "map_type"
		/// @DnDArgument : "instvar" "10"
		sprite_index = map_type;
	}
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2587D6C0
/// @DnDInput : 4
/// @DnDArgument : "expr" "2"
/// @DnDArgument : "expr_1" "3"
/// @DnDArgument : "expr_2" "4"
/// @DnDArgument : "expr_3" "1"
/// @DnDArgument : "var" "exit_u"
/// @DnDArgument : "var_1" "exit_r"
/// @DnDArgument : "var_2" "exit_d"
/// @DnDArgument : "var_3" "exit_l"
exit_u = 2;
exit_r = 3;
exit_d = 4;
exit_l = 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 69C42608
/// @DnDInput : 2
/// @DnDArgument : "expr" ""temp_save_2.ini""
/// @DnDArgument : "expr_1" "13"
/// @DnDArgument : "var" "save_name"
/// @DnDArgument : "var_1" "maze_object"
save_name = "temp_save_2.ini";
maze_object = 13;

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 18BB8DBE
/// @DnDArgument : "script" "save_sc"
/// @DnDSaveInfo : "script" "save_sc"
script_execute(save_sc);