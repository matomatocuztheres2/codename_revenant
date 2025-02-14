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
	/// @DnDArgument : "expr_1" "-.025"
	/// @DnDArgument : "expr_relative_1" "1"
	/// @DnDArgument : "var" "timer"
	/// @DnDArgument : "var_1" "alpha"
	timer += 1;
	alpha += -.025;

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
		/// @DnDParent : 629657C5
		/// @DnDArgument : "expr" "2"
		/// @DnDArgument : "var" "state"
		state = 2;
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
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 633DC449
		/// @DnDParent : 354BC8C3
		instance_destroy();
	}
}