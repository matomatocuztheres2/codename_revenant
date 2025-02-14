/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 34C8F2CC
/// @DnDArgument : "expr" "global.temp_tap_transfer_3"
/// @DnDArgument : "var" "wall_rotate"
wall_rotate = global.temp_tap_transfer_3;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4F2DBDD7
/// @DnDArgument : "var" "wall_rotate"
/// @DnDArgument : "value" "4"
if(wall_rotate == 4)
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 453DC028
	/// @DnDParent : 4F2DBDD7
	/// @DnDArgument : "instvar" "12"
	image_angle = 0;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 47D9C24F
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 746FE090
	/// @DnDParent : 47D9C24F
	/// @DnDArgument : "var" "wall_rotate"
	/// @DnDArgument : "value" "3"
	if(wall_rotate == 3)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 06C737D3
		/// @DnDParent : 746FE090
		/// @DnDArgument : "value" "90"
		/// @DnDArgument : "instvar" "12"
		image_angle = 90;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 3D5D1E43
	/// @DnDParent : 47D9C24F
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2E85BCC8
		/// @DnDParent : 3D5D1E43
		/// @DnDArgument : "var" "wall_rotate"
		/// @DnDArgument : "value" "2"
		if(wall_rotate == 2)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 09C267F8
			/// @DnDParent : 2E85BCC8
			/// @DnDArgument : "value" "180"
			/// @DnDArgument : "instvar" "12"
			image_angle = 180;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 422B3BDA
		/// @DnDParent : 3D5D1E43
		else
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7B7F11C6
			/// @DnDParent : 422B3BDA
			/// @DnDArgument : "var" "wall_rotate"
			/// @DnDArgument : "value" "1"
			if(wall_rotate == 1)
			{
				/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
				/// @DnDVersion : 1
				/// @DnDHash : 3B78587A
				/// @DnDParent : 7B7F11C6
				/// @DnDArgument : "value" "270"
				/// @DnDArgument : "instvar" "12"
				image_angle = 270;
			}
		}
	}
}