/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 70A3D04C
draw_self();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3B833EAE
/// @DnDArgument : "var" "card_flip"
/// @DnDArgument : "value" "1"
if(card_flip == 1)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 684FB2AB
	/// @DnDParent : 3B833EAE
	/// @DnDArgument : "var" "scale"
	/// @DnDArgument : "op" "2"
	if(scale > 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 220C1496
		/// @DnDParent : 684FB2AB
		/// @DnDArgument : "expr" "-.1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "scale"
		scale += -.1;
	
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 368472D8
		/// @DnDParent : 684FB2AB
		/// @DnDArgument : "value" "scale"
		/// @DnDArgument : "instvar" "15"
		image_xscale = scale;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 3C7C6158
	/// @DnDParent : 3B833EAE
	else
	{
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 2BD7F591
		/// @DnDParent : 3C7C6158
		instance_destroy();
	}
}