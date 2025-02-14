/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 267F7CC7
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "base_maze_ob"
/// @DnDSaveInfo : "object" "base_maze_ob"
var l267F7CC7_0 = instance_place(x + 0, y + 0, [base_maze_ob]);
if ((l267F7CC7_0 > 0))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7FF16B60
	/// @DnDParent : 267F7CC7
	instance_destroy();
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 43B554A5
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "base_start_ob"
/// @DnDSaveInfo : "object" "base_start_ob"
var l43B554A5_0 = instance_place(x + 0, y + 0, [base_start_ob]);
if ((l43B554A5_0 > 0))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6B05357B
	/// @DnDParent : 43B554A5
	instance_destroy();
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 78518DBE
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "base_puzzle_1_ob"
/// @DnDSaveInfo : "object" "base_puzzle_1_ob"
var l78518DBE_0 = instance_place(x + 0, y + 0, [base_puzzle_1_ob]);
if ((l78518DBE_0 > 0))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1F73EAFA
	/// @DnDParent : 78518DBE
	instance_destroy();
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 15AEF61E
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "base_puzzle_2_ob"
/// @DnDSaveInfo : "object" "base_puzzle_2_ob"
var l15AEF61E_0 = instance_place(x + 0, y + 0, [base_puzzle_2_ob]);
if ((l15AEF61E_0 > 0))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 2E91A0D1
	/// @DnDParent : 15AEF61E
	instance_destroy();
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 63805BA0
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "base_minotaur_ob"
/// @DnDSaveInfo : "object" "base_minotaur_ob"
var l63805BA0_0 = instance_place(x + 0, y + 0, [base_minotaur_ob]);
if ((l63805BA0_0 > 0))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 68B3A419
	/// @DnDParent : 63805BA0
	instance_destroy();
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 2AB63B53
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "invis_wall_rm_ob"
/// @DnDSaveInfo : "object" "invis_wall_rm_ob"
var l2AB63B53_0 = instance_place(x + 0, y + 0, [invis_wall_rm_ob]);
if ((l2AB63B53_0 > 0))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 17CACC46
	/// @DnDParent : 2AB63B53
	instance_destroy();
}

/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
/// @DnDVersion : 1
/// @DnDHash : 118DDC94
/// @DnDArgument : "speed" "0"
image_speed = 0;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 585FA347
/// @DnDArgument : "code" "mino_no_opt = function ()$(13_10){$(13_10)	i = 0;$(13_10)	noh_list = array_create(0);$(13_10)	$(13_10)	for (i=0; i < instance_number(maze_no_option_highlight_ob); i += 1)$(13_10)	{$(13_10)		noh_list[i] = instance_find(maze_no_option_highlight_ob,i)$(13_10)	}$(13_10)	$(13_10)	i = 0;$(13_10)	array_max = array_length(noh_list)$(13_10)	noh_x_list = array_create(0);$(13_10)	noh_y_list = array_create(0);$(13_10)	$(13_10)	if (array_max > 0)$(13_10)	{$(13_10)		for (i = 0; i < array_max; i += 1)$(13_10)		{$(13_10)			noh_x_list[i] = noh_list[i].x$(13_10)			noh_y_list[i] = noh_list[i].y$(13_10)		}$(13_10)	}$(13_10)	$(13_10)	i = 0;$(13_10)	$(13_10)	if (array_max > 0)$(13_10)	{$(13_10)		for (i = 0; i < array_max; i += 1)$(13_10)		{$(13_10)			if (x = noh_x_list[i])$(13_10)			{$(13_10)				if (y = noh_y_list[i])$(13_10)				{$(13_10)					if (instance_exists(noh_list[i]))$(13_10)					{$(13_10)					instance_destroy(noh_list[i]);$(13_10)					}$(13_10)				}$(13_10)			}$(13_10)		}$(13_10)	}$(13_10)	$(13_10)	i = 0;$(13_10)	$(13_10)	if (array_max > 0)$(13_10)	{$(13_10)		for (i = 0; i < array_max; i += 1)$(13_10)		{$(13_10)		array_pop(noh_list);$(13_10)		array_pop(noh_x_list);$(13_10)		array_pop(noh_y_list);$(13_10)		}$(13_10)	}$(13_10)	$(13_10)	i = 0;$(13_10)}$(13_10)"
mino_no_opt = function ()
{
	i = 0;
	noh_list = array_create(0);
	
	for (i=0; i < instance_number(maze_no_option_highlight_ob); i += 1)
	{
		noh_list[i] = instance_find(maze_no_option_highlight_ob,i)
	}
	
	i = 0;
	array_max = array_length(noh_list)
	noh_x_list = array_create(0);
	noh_y_list = array_create(0);
	
	if (array_max > 0)
	{
		for (i = 0; i < array_max; i += 1)
		{
			noh_x_list[i] = noh_list[i].x
			noh_y_list[i] = noh_list[i].y
		}
	}
	
	i = 0;
	
	if (array_max > 0)
	{
		for (i = 0; i < array_max; i += 1)
		{
			if (x = noh_x_list[i])
			{
				if (y = noh_y_list[i])
				{
					if (instance_exists(noh_list[i]))
					{
					instance_destroy(noh_list[i]);
					}
				}
			}
		}
	}
	
	i = 0;
	
	if (array_max > 0)
	{
		for (i = 0; i < array_max; i += 1)
		{
		array_pop(noh_list);
		array_pop(noh_x_list);
		array_pop(noh_y_list);
		}
	}
	
	i = 0;
}

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 68B5E994
/// @DnDArgument : "function" "mino_no_opt"
mino_no_opt();

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 68265280
/// @DnDArgument : "script" "maze_piece_name_sc"
/// @DnDSaveInfo : "script" "maze_piece_name_sc"
script_execute(maze_piece_name_sc);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3D0993B0
/// @DnDInput : 6
/// @DnDArgument : "expr" "global.map_tap_transfer"
/// @DnDArgument : "expr_2" "level_map_selector[map_type][prev_map]"
/// @DnDArgument : "expr_3" "sprite_get_number(map_name)-1"
/// @DnDArgument : "expr_4" "x"
/// @DnDArgument : "expr_5" "y"
/// @DnDArgument : "var" "prev_map"
/// @DnDArgument : "var_1" "map_select"
/// @DnDArgument : "var_2" "map_name"
/// @DnDArgument : "var_3" "map_max"
/// @DnDArgument : "var_4" "global.last_map_x"
/// @DnDArgument : "var_5" "global.last_map_y"
prev_map = global.map_tap_transfer;
map_select = 0;
map_name = level_map_selector[map_type][prev_map];
map_max = sprite_get_number(map_name)-1;
global.last_map_x = x;
global.last_map_y = y;

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 00C0507F
/// @DnDInput : 2
/// @DnDArgument : "value" "map_name"
/// @DnDArgument : "value_1" "global.temp_tap_transfer"
/// @DnDArgument : "instvar" "10"
/// @DnDArgument : "instvar_1" "11"
sprite_index = map_name;
image_index = global.temp_tap_transfer;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3ED22BB6
/// @DnDInput : 2
/// @DnDArgument : "var" "global.map_tap_transfer"
/// @DnDArgument : "var_1" "global.temp_tap_transfer"
global.map_tap_transfer = 0;
global.temp_tap_transfer = 0;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 204399E0
/// @DnDDisabled : 1
/// @DnDArgument : "code" "// Below this line$(13_10)// assign exits$(13_10)"


/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6C9AC247
/// @DnDInput : 4
/// @DnDArgument : "var" "exit_u"
/// @DnDArgument : "var_1" "exit_r"
/// @DnDArgument : "var_2" "exit_d"
/// @DnDArgument : "var_3" "exit_l"
exit_u = 0;
exit_r = 0;
exit_d = 0;
exit_l = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3DA4F3B9
/// @DnDArgument : "var" "highlight_check"
highlight_check = 0;

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 37CF9203
/// @DnDArgument : "script" "map_organizer_sc"
/// @DnDSaveInfo : "script" "map_organizer_sc"
script_execute(map_organizer_sc);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7A43EFD7
/// @DnDInput : 4
/// @DnDArgument : "expr" "exit_u"
/// @DnDArgument : "expr_1" "exit_r"
/// @DnDArgument : "expr_2" "exit_d"
/// @DnDArgument : "expr_3" "exit_l"
/// @DnDArgument : "var" "global.temp_map_u"
/// @DnDArgument : "var_1" "global.temp_map_r"
/// @DnDArgument : "var_2" "global.temp_map_d"
/// @DnDArgument : "var_3" "global.temp_map_l"
global.temp_map_u = exit_u;
global.temp_map_r = exit_r;
global.temp_map_d = exit_d;
global.temp_map_l = exit_l;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4463A612
/// @DnDDisabled : 1
/// @DnDArgument : "code" "// Below this line$(13_10)// Create player turn$(13_10)"


/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4183F947
/// @DnDArgument : "var" "global.init_end_maze"
if(global.init_end_maze == 0)
{
	/// @DnDAction : YoYo Games.Audio.Audio_Set_Pitch
	/// @DnDVersion : 1
	/// @DnDHash : 4AC41ACB
	/// @DnDParent : 4183F947
	/// @DnDArgument : "sound" "tap_so"
	/// @DnDArgument : "pitch" "random_range(.7,1)"
	/// @DnDSaveInfo : "sound" "tap_so"
	audio_sound_pitch(tap_so, random_range(.7,1));

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 618B4BDA
	/// @DnDParent : 4183F947
	/// @DnDArgument : "soundid" "tap_so"
	/// @DnDSaveInfo : "soundid" "tap_so"
	audio_play_sound(tap_so, 0, 0, 1.0, undefined, 1.0);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 05B8C58D
/// @DnDArgument : "var" "global.play_diff_level"
/// @DnDArgument : "value" "1"
if(global.play_diff_level == 1)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4DFDC92C
	/// @DnDParent : 05B8C58D
	/// @DnDArgument : "var" "room"
	/// @DnDArgument : "value" "maze_1_rm"
	if(room == maze_1_rm)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3C526125
		/// @DnDParent : 4DFDC92C
		/// @DnDArgument : "expr" "640"
		/// @DnDArgument : "var" "timer"
		timer = 640;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2B5DB602
		/// @DnDParent : 4DFDC92C
		/// @DnDArgument : "expr" "2"
		/// @DnDArgument : "var" "global.aud_transfer"
		global.aud_transfer = 2;
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 33FFC5F4
		/// @DnDParent : 4DFDC92C
		/// @DnDArgument : "obj" "subtitle_ob"
		/// @DnDSaveInfo : "obj" "subtitle_ob"
		var l33FFC5F4_0 = false;
		l33FFC5F4_0 = instance_exists(subtitle_ob);
		if(l33FFC5F4_0)
		{
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 71153C6C
			/// @DnDApplyTo : {subtitle_ob}
			/// @DnDParent : 33FFC5F4
			with(subtitle_ob) instance_destroy();
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5AABF3F0
		/// @DnDParent : 4DFDC92C
		/// @DnDArgument : "var" "global.so_subt"
		/// @DnDArgument : "value" "1"
		if(global.so_subt == 1)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 5B05DFFE
			/// @DnDParent : 5AABF3F0
			/// @DnDArgument : "objectid" "subtitle_ob"
			/// @DnDArgument : "layer" ""Room_Start_L""
			/// @DnDSaveInfo : "objectid" "subtitle_ob"
			instance_create_layer(0, 0, "Room_Start_L", subtitle_ob);
		}
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 488601EE
		/// @DnDParent : 4DFDC92C
		/// @DnDArgument : "soundid" "tut_2"
		/// @DnDSaveInfo : "soundid" "tut_2"
		audio_play_sound(tut_2, 0, 0, 1.0, undefined, 1.0);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 6DB46F8F
	/// @DnDParent : 05B8C58D
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 54C012DD
		/// @DnDParent : 6DB46F8F
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "timer"
		timer = 1;
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 41C16D30
		/// @DnDParent : 6DB46F8F
		/// @DnDArgument : "script" "global_piece_changer_sc"
		/// @DnDSaveInfo : "script" "global_piece_changer_sc"
		script_execute(global_piece_changer_sc);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 3C396382
		/// @DnDParent : 6DB46F8F
		/// @DnDArgument : "script" "no_option_highlighter_sc"
		/// @DnDSaveInfo : "script" "no_option_highlighter_sc"
		script_execute(no_option_highlighter_sc);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2D1DB38E
		/// @DnDInput : 2
		/// @DnDParent : 6DB46F8F
		/// @DnDArgument : "expr" "13"
		/// @DnDArgument : "var" "maze_wall"
		/// @DnDArgument : "var_1" "maze_object"
		maze_wall = 13;
		maze_object = 0;
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 20AAD280
		/// @DnDParent : 6DB46F8F
		/// @DnDArgument : "script" "maze_wall_sc"
		/// @DnDSaveInfo : "script" "maze_wall_sc"
		script_execute(maze_wall_sc);
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 6BD59CBD
		/// @DnDParent : 6DB46F8F
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "maze_wall_ob"
		/// @DnDArgument : "layer" ""Map_L""
		/// @DnDSaveInfo : "objectid" "maze_wall_ob"
		instance_create_layer(x + 0, y + 0, "Map_L", maze_wall_ob);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0FA5D73A
		/// @DnDInput : 2
		/// @DnDParent : 6DB46F8F
		/// @DnDArgument : "expr" ""temp_save_2.ini""
		/// @DnDArgument : "expr_1" "1"
		/// @DnDArgument : "var" "save_name"
		/// @DnDArgument : "var_1" "maze_object"
		save_name = "temp_save_2.ini";
		maze_object = 1;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 787D9ECD
		/// @DnDParent : 6DB46F8F
		/// @DnDArgument : "var" "prev_map"
		/// @DnDArgument : "op" "2"
		if(prev_map > 0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 02DDBA00
			/// @DnDParent : 787D9ECD
			/// @DnDArgument : "expr" "2"
			/// @DnDArgument : "var" "maze_object"
			maze_object = 2;
		}
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 4E0C8ECD
		/// @DnDParent : 6DB46F8F
		/// @DnDArgument : "script" "save_sc"
		/// @DnDSaveInfo : "script" "save_sc"
		script_execute(save_sc);
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 24EE8C51
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3C9480FC
	/// @DnDParent : 24EE8C51
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "timer"
	timer = 1;

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 55DBD557
	/// @DnDParent : 24EE8C51
	/// @DnDArgument : "script" "global_piece_changer_sc"
	/// @DnDSaveInfo : "script" "global_piece_changer_sc"
	script_execute(global_piece_changer_sc);

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 0FFF9462
	/// @DnDParent : 24EE8C51
	/// @DnDArgument : "script" "no_option_highlighter_sc"
	/// @DnDSaveInfo : "script" "no_option_highlighter_sc"
	script_execute(no_option_highlighter_sc);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6C0E277D
	/// @DnDInput : 2
	/// @DnDParent : 24EE8C51
	/// @DnDArgument : "expr" "13"
	/// @DnDArgument : "var" "maze_wall"
	/// @DnDArgument : "var_1" "maze_object"
	maze_wall = 13;
	maze_object = 0;

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 29AEEAA7
	/// @DnDParent : 24EE8C51
	/// @DnDArgument : "script" "maze_wall_sc"
	/// @DnDSaveInfo : "script" "maze_wall_sc"
	script_execute(maze_wall_sc);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5A6A29E7
	/// @DnDParent : 24EE8C51
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "maze_wall_ob"
	/// @DnDArgument : "layer" ""Map_L""
	/// @DnDSaveInfo : "objectid" "maze_wall_ob"
	instance_create_layer(x + 0, y + 0, "Map_L", maze_wall_ob);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2AB31396
	/// @DnDInput : 2
	/// @DnDParent : 24EE8C51
	/// @DnDArgument : "expr" ""temp_save_2.ini""
	/// @DnDArgument : "expr_1" "1"
	/// @DnDArgument : "var" "save_name"
	/// @DnDArgument : "var_1" "maze_object"
	save_name = "temp_save_2.ini";
	maze_object = 1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 05952EE7
	/// @DnDParent : 24EE8C51
	/// @DnDArgument : "var" "prev_map"
	/// @DnDArgument : "op" "2"
	if(prev_map > 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 11DFA1CA
		/// @DnDParent : 05952EE7
		/// @DnDArgument : "expr" "2"
		/// @DnDArgument : "var" "maze_object"
		maze_object = 2;
	}

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 572D2BAD
	/// @DnDParent : 24EE8C51
	/// @DnDArgument : "script" "save_sc"
	/// @DnDSaveInfo : "script" "save_sc"
	script_execute(save_sc);
}