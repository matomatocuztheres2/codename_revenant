/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 65DFFF97
/// @DnDArgument : "var" "sprite_name"
/// @DnDArgument : "not" "1"
if(!(sprite_name == 0))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 69FF1D86
	/// @DnDParent : 65DFFF97
	instance_destroy();
}