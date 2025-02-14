/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
/// @DnDVersion : 1
/// @DnDHash : 6D637F2A
/// @DnDArgument : "speed" "0"
image_speed = 0;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3FA8FB22
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
/// @DnDHash : 4DDECDC5
/// @DnDArgument : "function" "mino_no_opt"
mino_no_opt();

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 18D50B00
/// @DnDArgument : "script" "maze_piece_name_sc"
/// @DnDSaveInfo : "script" "maze_piece_name_sc"
script_execute(maze_piece_name_sc);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 444EA9AA
/// @DnDApplyTo : {maze_no_option_highlight_ob}
/// @DnDArgument : "var" "box_show"
with(maze_no_option_highlight_ob) {
box_show = 0;

}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 65D470AD
/// @DnDInput : 6
/// @DnDArgument : "expr" "global.map_tap_transfer"
/// @DnDArgument : "expr_1" "global.temp_tap_transfer"
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
map_select = global.temp_tap_transfer;
map_name = level_map_selector[map_type][prev_map];
map_max = sprite_get_number(map_name)-1;
global.last_map_x = x;
global.last_map_y = y;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 19125F95
/// @DnDInput : 2
/// @DnDArgument : "var" "global.map_tap_transfer"
/// @DnDArgument : "var_1" "global.temp_tap_transfer"
global.map_tap_transfer = 0;
global.temp_tap_transfer = 0;

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 2AF3F710
/// @DnDInput : 2
/// @DnDArgument : "value" "map_name"
/// @DnDArgument : "value_1" "map_select"
/// @DnDArgument : "instvar" "10"
/// @DnDArgument : "instvar_1" "11"
sprite_index = map_name;
image_index = map_select;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3A8DB161
/// @DnDInput : 2
/// @DnDArgument : "var" "global.map_tap_transfer"
/// @DnDArgument : "var_1" "global.temp_tap_transfer"
global.map_tap_transfer = 0;
global.temp_tap_transfer = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 34842AB3
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
/// @DnDHash : 59BD790B
/// @DnDArgument : "var" "highlight_check"
highlight_check = 0;

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 1A1ECA04
/// @DnDArgument : "script" "map_organizer_sc"
/// @DnDSaveInfo : "script" "map_organizer_sc"
script_execute(map_organizer_sc);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2BA7A8D9
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

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 0C17A052
/// @DnDArgument : "script" "global_piece_changer_sc"
/// @DnDSaveInfo : "script" "global_piece_changer_sc"
script_execute(global_piece_changer_sc);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 1B8D7B39
/// @DnDArgument : "script" "no_option_highlighter_sc"
/// @DnDSaveInfo : "script" "no_option_highlighter_sc"
script_execute(no_option_highlighter_sc);

/// @DnDAction : YoYo Games.Audio.Audio_Set_Pitch
/// @DnDVersion : 1
/// @DnDHash : 203D7165
/// @DnDArgument : "sound" "tap_so"
/// @DnDArgument : "pitch" "random_range(.7,1)"
/// @DnDSaveInfo : "sound" "tap_so"
audio_sound_pitch(tap_so, random_range(.7,1));

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 70DDEB1E
/// @DnDArgument : "soundid" "tap_so"
/// @DnDSaveInfo : "soundid" "tap_so"
audio_play_sound(tap_so, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 78C4CBAD
/// @DnDArgument : "expr" "13"
/// @DnDArgument : "var" "maze_wall"
maze_wall = 13;

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 3B710E9A
/// @DnDArgument : "script" "maze_wall_sc"
/// @DnDSaveInfo : "script" "maze_wall_sc"
script_execute(maze_wall_sc);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 15A53432
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "maze_wall_ob"
/// @DnDArgument : "layer" ""Map_L""
/// @DnDSaveInfo : "objectid" "maze_wall_ob"
instance_create_layer(x + 0, y + 0, "Map_L", maze_wall_ob);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 31FD267C
/// @DnDInput : 2
/// @DnDArgument : "expr" ""temp_save_2.ini""
/// @DnDArgument : "expr_1" "1"
/// @DnDArgument : "var" "save_name"
/// @DnDArgument : "var_1" "maze_object"
save_name = "temp_save_2.ini";
maze_object = 1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 25BBCDCB
/// @DnDArgument : "var" "prev_map"
/// @DnDArgument : "op" "2"
if(prev_map > 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4714EF0E
	/// @DnDParent : 25BBCDCB
	/// @DnDArgument : "expr" "2"
	/// @DnDArgument : "var" "maze_object"
	maze_object = 2;
}

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 0F3A3CDE
/// @DnDArgument : "script" "save_sc"
/// @DnDSaveInfo : "script" "save_sc"
script_execute(save_sc);