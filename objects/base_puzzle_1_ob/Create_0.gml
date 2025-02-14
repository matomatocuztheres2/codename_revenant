/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5E1F7428
/// @DnDInput : 6
/// @DnDArgument : "expr" "x"
/// @DnDArgument : "expr_1" "y"
/// @DnDArgument : "var" "global.puzz_1_x"
/// @DnDArgument : "var_1" "global.puzz_1_y"
/// @DnDArgument : "var_2" "cross_activate"
/// @DnDArgument : "var_3" "uncomplete_maze"
/// @DnDArgument : "var_4" "piece_check"
/// @DnDArgument : "var_5" "piece_check_total"
global.puzz_1_x = x;
global.puzz_1_y = y;
cross_activate = 0;
uncomplete_maze = 0;
piece_check = 0;
piece_check_total = 0;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 280ACF31
/// @DnDArgument : "var" "global.play_diff_level"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "3"
if(global.play_diff_level < 3)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 09865BBA
	/// @DnDParent : 280ACF31
	/// @DnDArgument : "expr" "vine_puzzle_sp"
	/// @DnDArgument : "var" "map_type"
	map_type = vine_puzzle_sp;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 4DFC0FAD
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3A690249
	/// @DnDParent : 4DFC0FAD
	/// @DnDArgument : "var" "global.play_diff_level"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "5"
	if(global.play_diff_level < 5)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0C82F02F
		/// @DnDParent : 3A690249
		/// @DnDArgument : "expr" "broke_puzzle_sp"
		/// @DnDArgument : "var" "map_type"
		map_type = broke_puzzle_sp;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 40FA26FA
	/// @DnDParent : 4DFC0FAD
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 21DD7D90
		/// @DnDParent : 40FA26FA
		/// @DnDArgument : "var" "global.play_diff_level"
		/// @DnDArgument : "op" "3"
		/// @DnDArgument : "value" "7"
		if(global.play_diff_level <= 7)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1687B5F3
			/// @DnDParent : 21DD7D90
			/// @DnDArgument : "expr" "base_puzzle_sp"
			/// @DnDArgument : "var" "map_type"
			map_type = base_puzzle_sp;
		}
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4283C8DB
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "maze_1_rm"
if(room == maze_1_rm)
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 54821564
	/// @DnDParent : 4283C8DB
	/// @DnDArgument : "value" "map_type"
	/// @DnDArgument : "instvar" "10"
	sprite_index = map_type;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 76FBC186
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6ACE5C20
	/// @DnDParent : 76FBC186
	/// @DnDArgument : "var" "room"
	/// @DnDArgument : "value" "freeplay_1_rm"
	if(room == freeplay_1_rm)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3EC1FC0B
		/// @DnDParent : 6ACE5C20
		/// @DnDArgument : "expr" "vine_puzzle_sp"
		/// @DnDArgument : "var" "map_type"
		map_type = vine_puzzle_sp;
	
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 45503611
		/// @DnDParent : 6ACE5C20
		/// @DnDArgument : "value" "map_type"
		/// @DnDArgument : "instvar" "10"
		sprite_index = map_type;
	}
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 574401FF
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
/// @DnDHash : 02AAD513
/// @DnDInput : 2
/// @DnDArgument : "expr" ""temp_save_2.ini""
/// @DnDArgument : "expr_1" "12"
/// @DnDArgument : "var" "save_name"
/// @DnDArgument : "var_1" "maze_object"
save_name = "temp_save_2.ini";
maze_object = 12;

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 699A490C
/// @DnDArgument : "script" "save_sc"
/// @DnDSaveInfo : "script" "save_sc"
script_execute(save_sc);