/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 21960083
/// @DnDArgument : "obj" "store_screen_ob"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "store_screen_ob"
var l21960083_0 = false;
l21960083_0 = instance_exists(store_screen_ob);
if(!l21960083_0)
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 2ABAF19A
	/// @DnDParent : 21960083
	/// @DnDArgument : "obj" "sys_menu_ob"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "obj" "sys_menu_ob"
	var l2ABAF19A_0 = false;
	l2ABAF19A_0 = instance_exists(sys_menu_ob);
	if(!l2ABAF19A_0)
	{
		/// @DnDAction : YoYo Games.Game.End_Game
		/// @DnDVersion : 1
		/// @DnDHash : 7F25F1CF
		/// @DnDParent : 2ABAF19A
		game_end();
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 785A08DD
		/// @DnDParent : 2ABAF19A
		/// @DnDArgument : "var" "image_index"
		if(image_index == 0)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 0B5156C5
			/// @DnDParent : 785A08DD
			/// @DnDArgument : "value" "1"
			/// @DnDArgument : "instvar" "11"
			image_index = 1;
		}
	}
}