/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 00CBE57D
/// @DnDArgument : "color" "$FF000000"
draw_set_colour($FF000000 & $ffffff);
var l00CBE57D_0=($FF000000 >> 24);
draw_set_alpha(l00CBE57D_0 / $ff);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4A68BCA1
/// @DnDArgument : "var" "state"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "3"
if(state < 3)
{
	/// @DnDAction : YoYo Games.Drawing.Set_Alpha
	/// @DnDVersion : 1
	/// @DnDHash : 44C4FEAB
	/// @DnDParent : 4A68BCA1
	/// @DnDArgument : "alpha" "alpha"
	draw_set_alpha(alpha);

	/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
	/// @DnDVersion : 1
	/// @DnDHash : 248E450D
	/// @DnDParent : 4A68BCA1
	/// @DnDArgument : "x2" "1920"
	/// @DnDArgument : "y2" "1080"
	/// @DnDArgument : "fill" "1"
	draw_rectangle(0, 0, 1920, 1080, 0);
}