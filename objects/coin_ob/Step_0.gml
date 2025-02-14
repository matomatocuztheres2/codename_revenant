/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 124556B6
/// @DnDArgument : "var" "timer"
/// @DnDArgument : "op" "2"
if(timer > 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 23529287
	/// @DnDParent : 124556B6
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "timer"
	timer += -1;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 56A63AA6
/// @DnDArgument : "var" "timer"
if(timer == 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7107C280
	/// @DnDParent : 56A63AA6
	/// @DnDArgument : "expr" "irandom_range(60,240)"
	/// @DnDArgument : "var" "timer"
	timer = irandom_range(60,240);

	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 23FB5066
	/// @DnDParent : 56A63AA6
	image_speed = 1;
}