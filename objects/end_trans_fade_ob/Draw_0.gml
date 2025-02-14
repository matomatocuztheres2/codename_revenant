/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 75F3AAED
/// @DnDArgument : "color" "$FF000000"
draw_set_colour($FF000000 & $ffffff);
var l75F3AAED_0=($FF000000 >> 24);
draw_set_alpha(l75F3AAED_0 / $ff);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6BADF7A1
/// @DnDArgument : "var" "state"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "3"
if(state < 3)
{
	/// @DnDAction : YoYo Games.Drawing.Set_Alpha
	/// @DnDVersion : 1
	/// @DnDHash : 3D4F6779
	/// @DnDParent : 6BADF7A1
	/// @DnDArgument : "alpha" "alpha"
	draw_set_alpha(alpha);

	/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
	/// @DnDVersion : 1
	/// @DnDHash : 02A348BF
	/// @DnDParent : 6BADF7A1
	/// @DnDArgument : "x2" "1920"
	/// @DnDArgument : "y2" "1080"
	/// @DnDArgument : "fill" "1"
	draw_rectangle(0, 0, 1920, 1080, 0);
}