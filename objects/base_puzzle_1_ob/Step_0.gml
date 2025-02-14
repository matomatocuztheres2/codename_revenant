/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 4864294C
/// @DnDArgument : "obj" "base_maze_creator_ob"
/// @DnDSaveInfo : "obj" "base_maze_creator_ob"
var l4864294C_0 = false;
l4864294C_0 = instance_exists(base_maze_creator_ob);
if(l4864294C_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 24341791
	/// @DnDParent : 4864294C
	/// @DnDArgument : "var" "piece_check"
	if(piece_check == 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 14FD1CED
		/// @DnDParent : 24341791
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "piece_check"
		piece_check = 1;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 452924B6
/// @DnDArgument : "var" "piece_check"
/// @DnDArgument : "value" "1"
if(piece_check == 1)
{
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 0581834F
	/// @DnDParent : 452924B6
	/// @DnDArgument : "x" "-144"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "base_maze_ob"
	/// @DnDSaveInfo : "object" "base_maze_ob"
	var l0581834F_0 = instance_place(x + -144, y + 0, [base_maze_ob]);
	if ((l0581834F_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 34FACFDB
		/// @DnDParent : 0581834F
		/// @DnDArgument : "var" "exit_l"
		exit_l = 0;
	}

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 1731B08D
	/// @DnDParent : 452924B6
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-144"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "base_maze_ob"
	/// @DnDSaveInfo : "object" "base_maze_ob"
	var l1731B08D_0 = instance_place(x + 0, y + -144, [base_maze_ob]);
	if ((l1731B08D_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 667A7E41
		/// @DnDParent : 1731B08D
		/// @DnDArgument : "var" "exit_u"
		exit_u = 0;
	}

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 381C8FF7
	/// @DnDParent : 452924B6
	/// @DnDArgument : "x" "144"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "base_maze_ob"
	/// @DnDSaveInfo : "object" "base_maze_ob"
	var l381C8FF7_0 = instance_place(x + 144, y + 0, [base_maze_ob]);
	if ((l381C8FF7_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 51010E07
		/// @DnDParent : 381C8FF7
		/// @DnDArgument : "var" "exit_r"
		exit_r = 0;
	}

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 5182C36B
	/// @DnDParent : 452924B6
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "144"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "base_maze_ob"
	/// @DnDSaveInfo : "object" "base_maze_ob"
	var l5182C36B_0 = instance_place(x + 0, y + 144, [base_maze_ob]);
	if ((l5182C36B_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5490144A
		/// @DnDParent : 5182C36B
		/// @DnDArgument : "var" "exit_d"
		exit_d = 0;
	}

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 6B2792DE
	/// @DnDParent : 452924B6
	/// @DnDArgument : "x" "-144"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "inert_maze_ob"
	/// @DnDSaveInfo : "object" "inert_maze_ob"
	var l6B2792DE_0 = instance_place(x + -144, y + 0, [inert_maze_ob]);
	if ((l6B2792DE_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 611A06C2
		/// @DnDParent : 6B2792DE
		/// @DnDArgument : "var" "exit_l"
		exit_l = 0;
	}

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 5E09CA75
	/// @DnDParent : 452924B6
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-144"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "inert_maze_ob"
	/// @DnDSaveInfo : "object" "inert_maze_ob"
	var l5E09CA75_0 = instance_place(x + 0, y + -144, [inert_maze_ob]);
	if ((l5E09CA75_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 571D9660
		/// @DnDParent : 5E09CA75
		/// @DnDArgument : "var" "exit_u"
		exit_u = 0;
	}

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 4D6E29DD
	/// @DnDParent : 452924B6
	/// @DnDArgument : "x" "144"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "inert_maze_ob"
	/// @DnDSaveInfo : "object" "inert_maze_ob"
	var l4D6E29DD_0 = instance_place(x + 144, y + 0, [inert_maze_ob]);
	if ((l4D6E29DD_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 79FBFEC4
		/// @DnDParent : 4D6E29DD
		/// @DnDArgument : "var" "exit_r"
		exit_r = 0;
	}

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 58BC0667
	/// @DnDParent : 452924B6
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "144"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "inert_maze_ob"
	/// @DnDSaveInfo : "object" "inert_maze_ob"
	var l58BC0667_0 = instance_place(x + 0, y + 144, [inert_maze_ob]);
	if ((l58BC0667_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4C38703E
		/// @DnDParent : 58BC0667
		/// @DnDArgument : "var" "exit_d"
		exit_d = 0;
	}

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 6F9E02F3
	/// @DnDParent : 452924B6
	/// @DnDArgument : "x" "-144"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "outer_wall_ob"
	/// @DnDSaveInfo : "object" "outer_wall_ob"
	var l6F9E02F3_0 = instance_place(x + -144, y + 0, [outer_wall_ob]);
	if ((l6F9E02F3_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 78588CC2
		/// @DnDParent : 6F9E02F3
		/// @DnDArgument : "var" "exit_l"
		exit_l = 0;
	}

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 70EDCE93
	/// @DnDParent : 452924B6
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-144"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "outer_wall_ob"
	/// @DnDSaveInfo : "object" "outer_wall_ob"
	var l70EDCE93_0 = instance_place(x + 0, y + -144, [outer_wall_ob]);
	if ((l70EDCE93_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6B64D459
		/// @DnDParent : 70EDCE93
		/// @DnDArgument : "var" "exit_u"
		exit_u = 0;
	}

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 574E98AE
	/// @DnDParent : 452924B6
	/// @DnDArgument : "x" "144"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "outer_wall_ob"
	/// @DnDSaveInfo : "object" "outer_wall_ob"
	var l574E98AE_0 = instance_place(x + 144, y + 0, [outer_wall_ob]);
	if ((l574E98AE_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6CB852B1
		/// @DnDParent : 574E98AE
		/// @DnDArgument : "var" "exit_r"
		exit_r = 0;
	}

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 1871DA24
	/// @DnDParent : 452924B6
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "144"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "outer_wall_ob"
	/// @DnDSaveInfo : "object" "outer_wall_ob"
	var l1871DA24_0 = instance_place(x + 0, y + 144, [outer_wall_ob]);
	if ((l1871DA24_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 45871F4C
		/// @DnDParent : 1871DA24
		/// @DnDArgument : "var" "exit_d"
		exit_d = 0;
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 06F063B7
	/// @DnDInput : 2
	/// @DnDParent : 452924B6
	/// @DnDArgument : "expr" "exit_l+exit_u+exit_r+exit_d"
	/// @DnDArgument : "var" "piece_check_total"
	/// @DnDArgument : "var_1" "piece_check"
	piece_check_total = exit_l+exit_u+exit_r+exit_d;
	piece_check = 0;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 73EAC541
	/// @DnDParent : 452924B6
	/// @DnDArgument : "var" "piece_check_total"
	if(piece_check_total == 0)
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 2D4992E2
		/// @DnDParent : 73EAC541
		/// @DnDArgument : "soundid" "end_game_prot"
		/// @DnDSaveInfo : "soundid" "end_game_prot"
		audio_play_sound(end_game_prot, 0, 0, 1.0, undefined, 1.0);
	
		/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 1284A35B
		/// @DnDParent : 73EAC541
		/// @DnDArgument : "code" "//Set Camera state to 0 and set ix/iy$(13_10)$(13_10)camera_ob.ix = 0;$(13_10)camera_ob.iy = 0;$(13_10)camera_ob.cam_state = 5;$(13_10)camera_ob.cam_pos = 1;$(13_10)"
		//Set Camera state to 0 and set ix/iy
		
		camera_ob.ix = 0;
		camera_ob.iy = 0;
		camera_ob.cam_state = 5;
		camera_ob.cam_pos = 1;
	
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 34FC2B91
		/// @DnDParent : 73EAC541
		/// @DnDArgument : "room" "title_rm"
		/// @DnDSaveInfo : "room" "title_rm"
		room_goto(title_rm);
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3F7B6F3B
/// @DnDArgument : "var" "global.piece_selector"
/// @DnDArgument : "value" "base_minotaur_ob"
if(global.piece_selector == base_minotaur_ob)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0D570457
	/// @DnDParent : 3F7B6F3B
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "inert_puzzle_1_ob"
	/// @DnDArgument : "layer" ""Map_L""
	/// @DnDSaveInfo : "objectid" "inert_puzzle_1_ob"
	instance_create_layer(x + 0, y + 0, "Map_L", inert_puzzle_1_ob);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 78C771D4
	/// @DnDInput : 2
	/// @DnDParent : 3F7B6F3B
	/// @DnDArgument : "expr" "x"
	/// @DnDArgument : "expr_1" "y"
	/// @DnDArgument : "var" "global.last_map_x"
	/// @DnDArgument : "var_1" "global.last_map_y"
	global.last_map_x = x;
	global.last_map_y = y;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 12A98ECA
	/// @DnDParent : 3F7B6F3B
	instance_destroy();
}