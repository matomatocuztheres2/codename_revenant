/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 57A7AE85
/// @DnDArgument : "var" "map_select_ob.card_id"
/// @DnDArgument : "value" "1"
if(map_select_ob.card_id == 1)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3E32B4D1
	/// @DnDParent : 57A7AE85
	/// @DnDArgument : "expr" "id"
	/// @DnDArgument : "var" "map_select_ob.id1"
	map_select_ob.id1 = id;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 437BE082
/// @DnDArgument : "var" "map_select_ob.card_id"
/// @DnDArgument : "value" "2"
if(map_select_ob.card_id == 2)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2D9996D6
	/// @DnDParent : 437BE082
	/// @DnDArgument : "expr" "id"
	/// @DnDArgument : "var" "map_select_ob.id2"
	map_select_ob.id2 = id;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6225E806
/// @DnDArgument : "var" "map_select_ob.card_id"
/// @DnDArgument : "value" "3"
if(map_select_ob.card_id == 3)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 53E1FE74
	/// @DnDParent : 6225E806
	/// @DnDArgument : "expr" "id"
	/// @DnDArgument : "var" "map_select_ob.id3"
	map_select_ob.id3 = id;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3B58BEBC
/// @DnDInput : 2
/// @DnDArgument : "expr_1" "1.25"
/// @DnDArgument : "var" "card_flip"
/// @DnDArgument : "var_1" "scale"
card_flip = 0;
scale = 1.25;

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 7B85E813
/// @DnDInput : 2
/// @DnDArgument : "value" "scale"
/// @DnDArgument : "value_1" "scale"
/// @DnDArgument : "instvar" "15"
/// @DnDArgument : "instvar_1" "16"
image_xscale = scale;
image_yscale = scale;