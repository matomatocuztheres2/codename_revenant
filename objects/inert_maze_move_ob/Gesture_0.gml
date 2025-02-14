/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 565BD09C
/// @DnDArgument : "var" "timer"
/// @DnDArgument : "value" "1"
if(timer == 1)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3D6EB83F
	/// @DnDParent : 565BD09C
	/// @DnDArgument : "var" "maze_no_option_highlight_ob.first_build_tut"
	/// @DnDArgument : "value" "1"
	if(maze_no_option_highlight_ob.first_build_tut == 1)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 49B16AFB
		/// @DnDParent : 3D6EB83F
		/// @DnDArgument : "var" "maze_no_option_highlight_ob.first_build_tut"
		maze_no_option_highlight_ob.first_build_tut = 0;
	}

	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 0A56AD35
	/// @DnDParent : 565BD09C
	/// @DnDArgument : "obj" "sys_menu_ob"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "obj" "sys_menu_ob"
	var l0A56AD35_0 = false;
	l0A56AD35_0 = instance_exists(sys_menu_ob);
	if(!l0A56AD35_0)
	{
		/// @DnDAction : YoYo Games.Collisions.If_Object_At
		/// @DnDVersion : 1.1
		/// @DnDHash : 7EFCA00F
		/// @DnDParent : 0A56AD35
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "object" "maze_highlight_ob"
		/// @DnDSaveInfo : "object" "maze_highlight_ob"
		var l7EFCA00F_0 = instance_place(x + 0, y + 0, [maze_highlight_ob]);
		if ((l7EFCA00F_0 > 0))
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 3B1024BD
			/// @DnDParent : 7EFCA00F
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "inert_maze_ob"
			/// @DnDArgument : "layer" ""Map_L""
			/// @DnDSaveInfo : "objectid" "inert_maze_ob"
			instance_create_layer(x + 0, y + 0, "Map_L", inert_maze_ob);
		
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 617ED7B7
			/// @DnDApplyTo : {maze_highlight_ob}
			/// @DnDParent : 7EFCA00F
			with(maze_highlight_ob) instance_destroy();
		
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 24EE24B6
			/// @DnDParent : 7EFCA00F
			instance_destroy();
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 0D535100
		/// @DnDParent : 0A56AD35
		else
		{
			/// @DnDAction : YoYo Games.Collisions.If_Object_At
			/// @DnDVersion : 1.1
			/// @DnDHash : 3DA6B870
			/// @DnDParent : 0D535100
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "object" "maze_no_option_highlight_ob"
			/// @DnDSaveInfo : "object" "maze_no_option_highlight_ob"
			var l3DA6B870_0 = instance_place(x + 0, y + 0, [maze_no_option_highlight_ob]);
			if ((l3DA6B870_0 > 0))
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 4B6FF587
				/// @DnDParent : 3DA6B870
				/// @DnDArgument : "expr" "instance_place(x,y,maze_no_option_highlight_ob)"
				/// @DnDArgument : "var" "draw_check"
				draw_check = instance_place(x,y,maze_no_option_highlight_ob);
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 063BAB34
				/// @DnDParent : 3DA6B870
				/// @DnDArgument : "var" "draw_check.box_show"
				/// @DnDArgument : "value" "1"
				if(draw_check.box_show == 1)
				{
					/// @DnDAction : YoYo Games.Instances.Create_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 22EF579A
					/// @DnDParent : 063BAB34
					/// @DnDArgument : "xpos_relative" "1"
					/// @DnDArgument : "ypos_relative" "1"
					/// @DnDArgument : "objectid" "inert_maze_ob"
					/// @DnDArgument : "layer" ""Map_L""
					/// @DnDSaveInfo : "objectid" "inert_maze_ob"
					instance_create_layer(x + 0, y + 0, "Map_L", inert_maze_ob);
				
					/// @DnDAction : YoYo Games.Instances.Destroy_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 2B4F9A3B
					/// @DnDApplyTo : {maze_highlight_ob}
					/// @DnDParent : 063BAB34
					with(maze_highlight_ob) instance_destroy();
				
					/// @DnDAction : YoYo Games.Instances.Destroy_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 5FD80D69
					/// @DnDParent : 063BAB34
					instance_destroy();
				}
			}
		}
	}
}