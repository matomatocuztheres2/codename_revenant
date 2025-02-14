/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2473C2A1
/// @DnDArgument : "var" "global.play_diff_level"
/// @DnDArgument : "value" "1.2"
if(global.play_diff_level == 1.2)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 74619210
	/// @DnDParent : 2473C2A1
	/// @DnDArgument : "var" "global.sys_check"
	if(global.sys_check == 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 435ACB10
		/// @DnDInput : 7
		/// @DnDParent : 74619210
		/// @DnDArgument : "expr" "210"
		/// @DnDArgument : "expr_1" "maze_1_rm"
		/// @DnDArgument : "expr_2" "c_black"
		/// @DnDArgument : "expr_5" "1"
		/// @DnDArgument : "var" "duration"
		/// @DnDArgument : "var_1" "target_room"
		/// @DnDArgument : "var_2" "color"
		/// @DnDArgument : "var_3" "timer"
		/// @DnDArgument : "var_4" "alpha"
		/// @DnDArgument : "var_5" "state"
		/// @DnDArgument : "var_6" "delete_timer"
		duration = 210;
		target_room = maze_1_rm;
		color = c_black;
		timer = 0;
		alpha = 0;
		state = 1;
		delete_timer = 0;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 2E174AE9
	/// @DnDParent : 2473C2A1
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 16FC71B7
		/// @DnDParent : 2E174AE9
		/// @DnDArgument : "var" "global.sys_check"
		/// @DnDArgument : "value" "1"
		if(global.sys_check == 1)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0D2C9680
			/// @DnDInput : 7
			/// @DnDParent : 16FC71B7
			/// @DnDArgument : "expr" "240"
			/// @DnDArgument : "expr_1" "maze_1_rm"
			/// @DnDArgument : "expr_2" "c_black"
			/// @DnDArgument : "expr_5" "1"
			/// @DnDArgument : "var" "duration"
			/// @DnDArgument : "var_1" "target_room"
			/// @DnDArgument : "var_2" "color"
			/// @DnDArgument : "var_3" "timer"
			/// @DnDArgument : "var_4" "alpha"
			/// @DnDArgument : "var_5" "state"
			/// @DnDArgument : "var_6" "delete_timer"
			duration = 240;
			target_room = maze_1_rm;
			color = c_black;
			timer = 0;
			alpha = 0;
			state = 1;
			delete_timer = 0;
		}
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 3CC07974
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6C77AA36
	/// @DnDInput : 7
	/// @DnDParent : 3CC07974
	/// @DnDArgument : "expr" "120"
	/// @DnDArgument : "expr_1" "maze_1_rm"
	/// @DnDArgument : "expr_2" "c_black"
	/// @DnDArgument : "expr_5" "1"
	/// @DnDArgument : "var" "duration"
	/// @DnDArgument : "var_1" "target_room"
	/// @DnDArgument : "var_2" "color"
	/// @DnDArgument : "var_3" "timer"
	/// @DnDArgument : "var_4" "alpha"
	/// @DnDArgument : "var_5" "state"
	/// @DnDArgument : "var_6" "delete_timer"
	duration = 120;
	target_room = maze_1_rm;
	color = c_black;
	timer = 0;
	alpha = 0;
	state = 1;
	delete_timer = 0;
}