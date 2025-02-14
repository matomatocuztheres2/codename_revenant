/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 571123FD
/// @DnDArgument : "var" "state"
/// @DnDArgument : "value" "1"
if(state == 1)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 44D567FB
	/// @DnDInput : 2
	/// @DnDParent : 571123FD
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "expr_1" ".010"
	/// @DnDArgument : "expr_relative_1" "1"
	/// @DnDArgument : "var" "timer"
	/// @DnDArgument : "var_1" "alpha"
	timer += 1;
	alpha += .010;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 629657C5
	/// @DnDParent : 571123FD
	/// @DnDArgument : "var" "timer"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "duration"
	if(timer > duration)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 61717611
		/// @DnDInput : 2
		/// @DnDParent : 629657C5
		/// @DnDArgument : "expr" "3"
		/// @DnDArgument : "expr_1" "1"
		/// @DnDArgument : "var" "state"
		/// @DnDArgument : "var_1" "duration"
		state = 3;
		duration = 1;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 1781BFA1
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 354BC8C3
	/// @DnDParent : 1781BFA1
	/// @DnDArgument : "var" "state"
	/// @DnDArgument : "value" "2"
	if(state == 2)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4BE0BA1E
		/// @DnDInput : 2
		/// @DnDParent : 354BC8C3
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "expr_1" "-.025"
		/// @DnDArgument : "expr_relative_1" "1"
		/// @DnDArgument : "var" "timer"
		/// @DnDArgument : "var_1" "alpha"
		timer += -1;
		alpha += -.025;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0672A9FB
		/// @DnDParent : 354BC8C3
		/// @DnDArgument : "var" "timer"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "duration"
		if(timer < duration)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 28D30881
			/// @DnDParent : 0672A9FB
			/// @DnDArgument : "expr" "3"
			/// @DnDArgument : "var" "state"
			state = 3;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 101BB7D1
	/// @DnDParent : 1781BFA1
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 47190DA3
		/// @DnDParent : 101BB7D1
		/// @DnDArgument : "var" "state"
		/// @DnDArgument : "value" "3"
		if(state == 3)
		{
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 6D0B769B
			/// @DnDParent : 47190DA3
			/// @DnDArgument : "obj" "story_board_ob"
			/// @DnDArgument : "not" "1"
			/// @DnDSaveInfo : "obj" "story_board_ob"
			var l6D0B769B_0 = false;
			l6D0B769B_0 = instance_exists(story_board_ob);
			if(!l6D0B769B_0)
			{
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 2442A255
				/// @DnDParent : 6D0B769B
				/// @DnDArgument : "objectid" "story_board_ob"
				/// @DnDArgument : "layer" ""Room_Start_L""
				/// @DnDSaveInfo : "objectid" "story_board_ob"
				instance_create_layer(0, 0, "Room_Start_L", story_board_ob);
			}
		
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 46BCA37B
			/// @DnDParent : 47190DA3
			instance_destroy();
		}
	}
}