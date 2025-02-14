/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 51B276E1
draw_self();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 52E6BA93
/// @DnDArgument : "var" "first_build_tut"
/// @DnDArgument : "value" "1"
if(first_build_tut == 1)
{
	/// @DnDAction : YoYo Games.Drawing.Set_Alignment
	/// @DnDVersion : 1.1
	/// @DnDHash : 3B8D3EEA
	/// @DnDParent : 52E6BA93
	/// @DnDArgument : "halign" "fa_center"
	/// @DnDArgument : "valign" "fa_middle"
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 3D6BD527
	/// @DnDParent : 52E6BA93
	/// @DnDArgument : "color" "$FF00E9FF"
	draw_set_colour($FF00E9FF & $ffffff);
	var l3D6BD527_0=($FF00E9FF >> 24);
	draw_set_alpha(l3D6BD527_0 / $ff);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0AFA28B0
	/// @DnDParent : 52E6BA93
	/// @DnDArgument : "var" "self.y"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "144"
	if(self.y > 144)
	{
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 480C4BF2
		/// @DnDParent : 0AFA28B0
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "-90"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "xscale" "1+(.5*sin(current_time/1000))"
		/// @DnDArgument : "yscale" "1+(.5*sin(current_time/1000))"
		/// @DnDArgument : "caption" ""Build Toward This""
		draw_text_transformed(x + 0, y + -90, string("Build Toward This") + "", 1+(.5*sin(current_time/1000)), 1+(.5*sin(current_time/1000)), 0);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 1430C993
	/// @DnDParent : 52E6BA93
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 22F76DF5
		/// @DnDParent : 1430C993
		/// @DnDArgument : "var" "self.y"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "936"
		if(self.y < 936)
		{
			/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
			/// @DnDVersion : 1
			/// @DnDHash : 61ED61A4
			/// @DnDParent : 22F76DF5
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y" "+90"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "xscale" "1+(.5*sin(current_time/1000))"
			/// @DnDArgument : "yscale" "1+(.5*sin(current_time/1000))"
			/// @DnDArgument : "caption" ""Build Toward This""
			draw_text_transformed(x + 0, y + +90, string("Build Toward This") + "", 1+(.5*sin(current_time/1000)), 1+(.5*sin(current_time/1000)), 0);
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 3EE52056
		/// @DnDParent : 1430C993
		else
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 59511399
			/// @DnDParent : 3EE52056
			/// @DnDArgument : "var" "self.y"
			/// @DnDArgument : "op" "4"
			/// @DnDArgument : "value" "540"
			if(self.y >= 540)
			{
				/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
				/// @DnDVersion : 1
				/// @DnDHash : 447D48CB
				/// @DnDParent : 59511399
				/// @DnDArgument : "x_relative" "1"
				/// @DnDArgument : "y" "+90"
				/// @DnDArgument : "y_relative" "1"
				/// @DnDArgument : "xscale" "1+(.5*sin(current_time/1000))"
				/// @DnDArgument : "yscale" "1+(.5*sin(current_time/1000))"
				/// @DnDArgument : "caption" ""Build Toward This""
				draw_text_transformed(x + 0, y + +90, string("Build Toward This") + "", 1+(.5*sin(current_time/1000)), 1+(.5*sin(current_time/1000)), 0);
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 501D9BB2
			/// @DnDParent : 3EE52056
			else
			{
				/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
				/// @DnDVersion : 1
				/// @DnDHash : 5E9E6FA4
				/// @DnDParent : 501D9BB2
				/// @DnDArgument : "x_relative" "1"
				/// @DnDArgument : "y" "-90"
				/// @DnDArgument : "y_relative" "1"
				/// @DnDArgument : "xscale" "1+(.5*sin(current_time/1000))"
				/// @DnDArgument : "yscale" "1+(.5*sin(current_time/1000))"
				/// @DnDArgument : "caption" ""Build Toward This""
				draw_text_transformed(x + 0, y + -90, string("Build Toward This") + "", 1+(.5*sin(current_time/1000)), 1+(.5*sin(current_time/1000)), 0);
			}
		}
	}
}