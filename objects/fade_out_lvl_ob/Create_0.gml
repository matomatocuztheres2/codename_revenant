/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5F22A1A4
/// @DnDArgument : "var" "global.play_diff_level"
/// @DnDArgument : "value" "1"
if(global.play_diff_level == 1)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3DEF14D5
	/// @DnDInput : 7
	/// @DnDParent : 5F22A1A4
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

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 5F7391DE
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7E747C5A
	/// @DnDParent : 5F7391DE
	/// @DnDArgument : "var" "global.play_diff_level"
	/// @DnDArgument : "value" "2"
	if(global.play_diff_level == 2)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 03121595
		/// @DnDParent : 7E747C5A
		/// @DnDArgument : "var" "global.sys_check"
		if(global.sys_check == 0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6C77AA36
			/// @DnDInput : 7
			/// @DnDParent : 03121595
			/// @DnDArgument : "expr" "434"
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
			duration = 434;
			target_room = maze_1_rm;
			color = c_black;
			timer = 0;
			alpha = 0;
			state = 1;
			delete_timer = 0;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 3BF04394
		/// @DnDParent : 7E747C5A
		else
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 526449EF
			/// @DnDParent : 3BF04394
			/// @DnDArgument : "var" "global.sys_check"
			/// @DnDArgument : "value" "1"
			if(global.sys_check == 1)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 0155DB6A
				/// @DnDInput : 7
				/// @DnDParent : 526449EF
				/// @DnDArgument : "expr" "217"
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
				duration = 217;
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
	/// @DnDHash : 3455395D
	/// @DnDParent : 5F7391DE
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 158C96CB
		/// @DnDInput : 7
		/// @DnDParent : 3455395D
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
}