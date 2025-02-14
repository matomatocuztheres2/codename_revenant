/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 279740AD
/// @DnDArgument : "var" "timer"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "1"
if(timer > 1)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4B16C909
	/// @DnDParent : 279740AD
	/// @DnDArgument : "expr" "-2"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "timer"
	timer += -2;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 58AB0A21
/// @DnDArgument : "var" "timer"
/// @DnDArgument : "value" "118"
if(timer == 118)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5BE70C52
	/// @DnDParent : 58AB0A21
	/// @DnDArgument : "objectid" "goal_highlighter_ob"
	/// @DnDArgument : "layer" ""Map_L""
	/// @DnDSaveInfo : "objectid" "goal_highlighter_ob"
	instance_create_layer(0, 0, "Map_L", goal_highlighter_ob);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 69E61366
/// @DnDArgument : "var" "timer"
if(timer == 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7A2EEBF1
	/// @DnDParent : 69E61366
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "timer"
	timer = 1;

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7DD38D5F
	/// @DnDParent : 69E61366
	/// @DnDArgument : "xpos" "0+144"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "base_maze_creator_ob"
	/// @DnDArgument : "layer" ""Map_L""
	/// @DnDSaveInfo : "objectid" "base_maze_creator_ob"
	instance_create_layer(x + 0+144, y + 0, "Map_L", base_maze_creator_ob);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 527347AA
	/// @DnDParent : 69E61366
	/// @DnDArgument : "var" "global.play_diff_level"
	/// @DnDArgument : "value" "1"
	if(global.play_diff_level == 1)
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 7178D5F5
		/// @DnDParent : 527347AA
		/// @DnDArgument : "soundid" "mino_warning_so"
		/// @DnDSaveInfo : "soundid" "mino_warning_so"
		audio_play_sound(mino_warning_so, 0, 0, 1.0, undefined, 1.0);
	}
}