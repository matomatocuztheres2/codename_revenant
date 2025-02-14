/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7433DAB1
/// @DnDInput : 2
/// @DnDArgument : "expr" "x"
/// @DnDArgument : "expr_1" "y"
/// @DnDArgument : "var" "global.puzz_2_x"
/// @DnDArgument : "var_1" "global.puzz_2_y"
global.puzz_2_x = x;
global.puzz_2_y = y;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 61D0F689
/// @DnDArgument : "var" "global.play_diff_level"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "3"
if(global.play_diff_level < 3)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6EB9BC14
	/// @DnDParent : 61D0F689
	/// @DnDArgument : "expr" "vine_puzzle_sp"
	/// @DnDArgument : "var" "map_type"
	map_type = vine_puzzle_sp;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 44E2951B
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7EFECB56
	/// @DnDParent : 44E2951B
	/// @DnDArgument : "var" "global.play_diff_level"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "5"
	if(global.play_diff_level < 5)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7CCE79C6
		/// @DnDParent : 7EFECB56
		/// @DnDArgument : "expr" "broke_puzzle_sp"
		/// @DnDArgument : "var" "map_type"
		map_type = broke_puzzle_sp;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 05354682
	/// @DnDParent : 44E2951B
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 391455FB
		/// @DnDParent : 05354682
		/// @DnDArgument : "var" "global.play_diff_level"
		/// @DnDArgument : "op" "3"
		/// @DnDArgument : "value" "7"
		if(global.play_diff_level <= 7)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5EE6DF3A
			/// @DnDParent : 391455FB
			/// @DnDArgument : "expr" "base_puzzle_sp"
			/// @DnDArgument : "var" "map_type"
			map_type = base_puzzle_sp;
		}
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 73CE0868
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "maze_1_rm"
if(room == maze_1_rm)
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 4F8F84A0
	/// @DnDParent : 73CE0868
	/// @DnDArgument : "value" "map_type"
	/// @DnDArgument : "instvar" "10"
	sprite_index = map_type;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 64F3EE30
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 026074B4
	/// @DnDParent : 64F3EE30
	/// @DnDArgument : "var" "room"
	/// @DnDArgument : "value" "freeplay_1_rm"
	if(room == freeplay_1_rm)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5BA538ED
		/// @DnDParent : 026074B4
		/// @DnDArgument : "expr" "vine_puzzle_sp"
		/// @DnDArgument : "var" "map_type"
		map_type = vine_puzzle_sp;
	
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 46A720BD
		/// @DnDParent : 026074B4
		/// @DnDArgument : "value" "map_type"
		/// @DnDArgument : "instvar" "10"
		sprite_index = map_type;
	}
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 52C2F780
/// @DnDArgument : "expr" "12"
/// @DnDArgument : "var" "maze_wall"
maze_wall = 12;

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 2EB2DEDF
/// @DnDArgument : "script" "maze_wall_sc"
/// @DnDSaveInfo : "script" "maze_wall_sc"
script_execute(maze_wall_sc);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 00D66AED
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "maze_wall_ob"
/// @DnDArgument : "layer" ""Map_L""
/// @DnDSaveInfo : "objectid" "maze_wall_ob"
instance_create_layer(x + 0, y + 0, "Map_L", maze_wall_ob);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 646D595D
/// @DnDInput : 2
/// @DnDArgument : "expr" ""temp_save_2.ini""
/// @DnDArgument : "expr_1" "12"
/// @DnDArgument : "var" "save_name"
/// @DnDArgument : "var_1" "maze_object"
save_name = "temp_save_2.ini";
maze_object = 12;

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 77C77352
/// @DnDArgument : "script" "save_sc"
/// @DnDSaveInfo : "script" "save_sc"
script_execute(save_sc);