/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 0FBEDBBF
/// @DnDArgument : "obj" "base_maze_creator_ob"
/// @DnDSaveInfo : "obj" "base_maze_creator_ob"
var l0FBEDBBF_0 = false;
l0FBEDBBF_0 = instance_exists(base_maze_creator_ob);
if(l0FBEDBBF_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 02F19A6A
	/// @DnDParent : 0FBEDBBF
	/// @DnDArgument : "var" "piece_check"
	if(piece_check == 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2A586B31
		/// @DnDParent : 02F19A6A
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "piece_check"
		piece_check = 1;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 189C5B29
/// @DnDArgument : "var" "piece_check"
/// @DnDArgument : "value" "1"
if(piece_check == 1)
{
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 2C3621A2
	/// @DnDParent : 189C5B29
	/// @DnDArgument : "x" "-144"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "base_maze_ob"
	/// @DnDSaveInfo : "object" "base_maze_ob"
	var l2C3621A2_0 = instance_place(x + -144, y + 0, [base_maze_ob]);
	if ((l2C3621A2_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 433212C6
		/// @DnDParent : 2C3621A2
		/// @DnDArgument : "var" "exit_l"
		exit_l = 0;
	}

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 24D22E28
	/// @DnDParent : 189C5B29
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-144"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "base_maze_ob"
	/// @DnDSaveInfo : "object" "base_maze_ob"
	var l24D22E28_0 = instance_place(x + 0, y + -144, [base_maze_ob]);
	if ((l24D22E28_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2E5E5C01
		/// @DnDParent : 24D22E28
		/// @DnDArgument : "var" "exit_u"
		exit_u = 0;
	}

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 3AD9F9B9
	/// @DnDParent : 189C5B29
	/// @DnDArgument : "x" "144"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "base_maze_ob"
	/// @DnDSaveInfo : "object" "base_maze_ob"
	var l3AD9F9B9_0 = instance_place(x + 144, y + 0, [base_maze_ob]);
	if ((l3AD9F9B9_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4CC7641C
		/// @DnDParent : 3AD9F9B9
		/// @DnDArgument : "var" "exit_r"
		exit_r = 0;
	}

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 73B2E865
	/// @DnDParent : 189C5B29
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "144"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "base_maze_ob"
	/// @DnDSaveInfo : "object" "base_maze_ob"
	var l73B2E865_0 = instance_place(x + 0, y + 144, [base_maze_ob]);
	if ((l73B2E865_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 41364D60
		/// @DnDParent : 73B2E865
		/// @DnDArgument : "var" "exit_d"
		exit_d = 0;
	}

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 67319CD0
	/// @DnDParent : 189C5B29
	/// @DnDArgument : "x" "-144"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "inert_maze_ob"
	/// @DnDSaveInfo : "object" "inert_maze_ob"
	var l67319CD0_0 = instance_place(x + -144, y + 0, [inert_maze_ob]);
	if ((l67319CD0_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 652002F2
		/// @DnDParent : 67319CD0
		/// @DnDArgument : "var" "exit_l"
		exit_l = 0;
	}

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 150512FC
	/// @DnDParent : 189C5B29
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-144"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "inert_maze_ob"
	/// @DnDSaveInfo : "object" "inert_maze_ob"
	var l150512FC_0 = instance_place(x + 0, y + -144, [inert_maze_ob]);
	if ((l150512FC_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 07116A20
		/// @DnDParent : 150512FC
		/// @DnDArgument : "var" "exit_u"
		exit_u = 0;
	}

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 708C7D0E
	/// @DnDParent : 189C5B29
	/// @DnDArgument : "x" "144"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "inert_maze_ob"
	/// @DnDSaveInfo : "object" "inert_maze_ob"
	var l708C7D0E_0 = instance_place(x + 144, y + 0, [inert_maze_ob]);
	if ((l708C7D0E_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 44CD37F1
		/// @DnDParent : 708C7D0E
		/// @DnDArgument : "var" "exit_r"
		exit_r = 0;
	}

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 26B85978
	/// @DnDParent : 189C5B29
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "144"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "inert_maze_ob"
	/// @DnDSaveInfo : "object" "inert_maze_ob"
	var l26B85978_0 = instance_place(x + 0, y + 144, [inert_maze_ob]);
	if ((l26B85978_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 12186955
		/// @DnDParent : 26B85978
		/// @DnDArgument : "var" "exit_d"
		exit_d = 0;
	}

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 67244574
	/// @DnDParent : 189C5B29
	/// @DnDArgument : "x" "-144"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "outer_wall_ob"
	/// @DnDSaveInfo : "object" "outer_wall_ob"
	var l67244574_0 = instance_place(x + -144, y + 0, [outer_wall_ob]);
	if ((l67244574_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 43082EEB
		/// @DnDParent : 67244574
		/// @DnDArgument : "var" "exit_l"
		exit_l = 0;
	}

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 672C01E2
	/// @DnDParent : 189C5B29
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-144"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "outer_wall_ob"
	/// @DnDSaveInfo : "object" "outer_wall_ob"
	var l672C01E2_0 = instance_place(x + 0, y + -144, [outer_wall_ob]);
	if ((l672C01E2_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0D3C4FD3
		/// @DnDParent : 672C01E2
		/// @DnDArgument : "var" "exit_u"
		exit_u = 0;
	}

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 174BFEBC
	/// @DnDParent : 189C5B29
	/// @DnDArgument : "x" "144"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "outer_wall_ob"
	/// @DnDSaveInfo : "object" "outer_wall_ob"
	var l174BFEBC_0 = instance_place(x + 144, y + 0, [outer_wall_ob]);
	if ((l174BFEBC_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 204E6417
		/// @DnDParent : 174BFEBC
		/// @DnDArgument : "var" "exit_r"
		exit_r = 0;
	}

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 74E8A1B9
	/// @DnDParent : 189C5B29
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "144"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "outer_wall_ob"
	/// @DnDSaveInfo : "object" "outer_wall_ob"
	var l74E8A1B9_0 = instance_place(x + 0, y + 144, [outer_wall_ob]);
	if ((l74E8A1B9_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 243D0A0A
		/// @DnDParent : 74E8A1B9
		/// @DnDArgument : "var" "exit_d"
		exit_d = 0;
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 17B0F682
	/// @DnDInput : 2
	/// @DnDParent : 189C5B29
	/// @DnDArgument : "expr" "exit_l+exit_u+exit_r+exit_d"
	/// @DnDArgument : "var" "piece_check_total"
	/// @DnDArgument : "var_1" "piece_check"
	piece_check_total = exit_l+exit_u+exit_r+exit_d;
	piece_check = 0;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 657206C0
	/// @DnDParent : 189C5B29
	/// @DnDArgument : "var" "piece_check_total"
	if(piece_check_total == 0)
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 5FA5231B
		/// @DnDParent : 657206C0
		/// @DnDArgument : "soundid" "end_game_prot"
		/// @DnDSaveInfo : "soundid" "end_game_prot"
		audio_play_sound(end_game_prot, 0, 0, 1.0, undefined, 1.0);
	
		/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 2D449725
		/// @DnDParent : 657206C0
		/// @DnDArgument : "code" "//Set Camera state to 0 and set ix/iy$(13_10)$(13_10)camera_ob.ix = 0;$(13_10)camera_ob.iy = 0;$(13_10)camera_ob.cam_state = 5;$(13_10)camera_ob.cam_pos = 1;$(13_10)"
		//Set Camera state to 0 and set ix/iy
		
		camera_ob.ix = 0;
		camera_ob.iy = 0;
		camera_ob.cam_state = 5;
		camera_ob.cam_pos = 1;
	
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 33240D3D
		/// @DnDParent : 657206C0
		/// @DnDArgument : "room" "title_rm"
		/// @DnDSaveInfo : "room" "title_rm"
		room_goto(title_rm);
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6EA62701
/// @DnDArgument : "var" "global.piece_selector"
/// @DnDArgument : "value" "base_puzzle_2_ob"
if(global.piece_selector == base_puzzle_2_ob)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 72014CCD
	/// @DnDParent : 6EA62701
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "inert_minotaur_ob"
	/// @DnDArgument : "layer" ""Map_L""
	/// @DnDSaveInfo : "objectid" "inert_minotaur_ob"
	instance_create_layer(x + 0, y + 0, "Map_L", inert_minotaur_ob);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6EE0F521
	/// @DnDInput : 2
	/// @DnDParent : 6EA62701
	/// @DnDArgument : "expr" "x"
	/// @DnDArgument : "expr_1" "y"
	/// @DnDArgument : "var" "global.last_map_x"
	/// @DnDArgument : "var_1" "global.last_map_y"
	global.last_map_x = x;
	global.last_map_y = y;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 711EB14E
	/// @DnDParent : 6EA62701
	instance_destroy();
}