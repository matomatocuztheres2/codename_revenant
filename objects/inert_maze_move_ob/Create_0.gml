/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
/// @DnDVersion : 1
/// @DnDHash : 6D637F2A
/// @DnDArgument : "speed" "0"
image_speed = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1888083F
/// @DnDInput : 5
/// @DnDArgument : "expr" "60"
/// @DnDArgument : "expr_1" "global.temp_tap_transfer_2"
/// @DnDArgument : "expr_2" "global.piece_selector"
/// @DnDArgument : "var" "delay_timer"
/// @DnDArgument : "var_1" "last_map"
/// @DnDArgument : "var_2" "current_map"
/// @DnDArgument : "var_3" "highlight_check"
/// @DnDArgument : "var_4" "draw_check"
delay_timer = 60;
last_map = global.temp_tap_transfer_2;
current_map = global.piece_selector;
highlight_check = 0;
draw_check = 0;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1CF41B97
/// @DnDArgument : "var" "global.sys_check"
if(global.sys_check == 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 04909C63
	/// @DnDParent : 1CF41B97
	/// @DnDArgument : "expr" "7200"
	/// @DnDArgument : "var" "end_game_timer"
	end_game_timer = 7200;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 0D05AEA5
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1939668F
	/// @DnDParent : 0D05AEA5
	/// @DnDArgument : "var" "global.sys_check"
	/// @DnDArgument : "value" "1"
	if(global.sys_check == 1)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 17EAAFE7
		/// @DnDParent : 1939668F
		/// @DnDArgument : "expr" "3600"
		/// @DnDArgument : "var" "end_game_timer"
		end_game_timer = 3600;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 65F6E942
/// @DnDArgument : "var" "last_map"
/// @DnDArgument : "value" "current_map"
if(last_map == current_map)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1CD68494
	/// @DnDParent : 65F6E942
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "highlight_check"
	highlight_check = 1;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 443A62E8
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 477129E3
	/// @DnDParent : 443A62E8
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "highlight_check"
	highlight_check = 1;
}

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 48F020DF
/// @DnDArgument : "obj" "maze_no_option_highlight_ob"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "maze_no_option_highlight_ob"
var l48F020DF_0 = false;
l48F020DF_0 = instance_exists(maze_no_option_highlight_ob);
if(!l48F020DF_0)
{

}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 739F9381
/// @DnDArgument : "var" "highlight_check"
/// @DnDArgument : "op" "2"
if(highlight_check > 0)
{
	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 41817115
	/// @DnDParent : 739F9381
	/// @DnDArgument : "script" "maze_piece_name_sc"
	/// @DnDSaveInfo : "script" "maze_piece_name_sc"
	script_execute(maze_piece_name_sc);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 43CED40B
	/// @DnDInput : 4
	/// @DnDParent : 739F9381
	/// @DnDArgument : "expr" "global.map_tap_transfer"
	/// @DnDArgument : "expr_1" "global.temp_tap_transfer"
	/// @DnDArgument : "expr_2" "level_map_selector[map_type][prev_map]"
	/// @DnDArgument : "expr_3" "sprite_get_number(map_name)-1"
	/// @DnDArgument : "var" "prev_map"
	/// @DnDArgument : "var_1" "map_select"
	/// @DnDArgument : "var_2" "map_name"
	/// @DnDArgument : "var_3" "map_max"
	prev_map = global.map_tap_transfer;
	map_select = global.temp_tap_transfer;
	map_name = level_map_selector[map_type][prev_map];
	map_max = sprite_get_number(map_name)-1;

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 509A2087
	/// @DnDInput : 2
	/// @DnDParent : 739F9381
	/// @DnDArgument : "value" "map_name"
	/// @DnDArgument : "value_1" "map_select"
	/// @DnDArgument : "instvar" "10"
	/// @DnDArgument : "instvar_1" "11"
	sprite_index = map_name;
	image_index = map_select;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6B6B4877
	/// @DnDInput : 2
	/// @DnDParent : 739F9381
	/// @DnDArgument : "var" "h_grid"
	/// @DnDArgument : "var_1" "v_grid"
	h_grid = 0;
	v_grid = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 03D50B79
	/// @DnDInput : 4
	/// @DnDParent : 739F9381
	/// @DnDArgument : "var" "exit_l"
	/// @DnDArgument : "var_1" "exit_u"
	/// @DnDArgument : "var_2" "exit_r"
	/// @DnDArgument : "var_3" "exit_d"
	exit_l = 0;
	exit_u = 0;
	exit_r = 0;
	exit_d = 0;

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 0BFB6F31
	/// @DnDParent : 739F9381
	/// @DnDArgument : "script" "map_organizer_sc"
	/// @DnDSaveInfo : "script" "map_organizer_sc"
	script_execute(map_organizer_sc);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 107EBB28
	/// @DnDInput : 4
	/// @DnDParent : 739F9381
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

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 78D5734B
	/// @DnDParent : 739F9381
	/// @DnDArgument : "soundid" "tap_so"
	/// @DnDSaveInfo : "soundid" "tap_so"
	audio_play_sound(tap_so, 0, 0, 1.0, undefined, 1.0);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1393560F
	/// @DnDParent : 739F9381
	/// @DnDArgument : "var" "global.play_diff_level"
	/// @DnDArgument : "value" "1"
	if(global.play_diff_level == 1)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3E2368B8
		/// @DnDParent : 1393560F
		/// @DnDArgument : "expr" "3"
		/// @DnDArgument : "var" "global.aud_transfer"
		global.aud_transfer = 3;
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 5C8EF0DC
		/// @DnDParent : 1393560F
		/// @DnDArgument : "obj" "subtitle_ob"
		/// @DnDSaveInfo : "obj" "subtitle_ob"
		var l5C8EF0DC_0 = false;
		l5C8EF0DC_0 = instance_exists(subtitle_ob);
		if(l5C8EF0DC_0)
		{
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 78EDDFEC
			/// @DnDApplyTo : {subtitle_ob}
			/// @DnDParent : 5C8EF0DC
			with(subtitle_ob) instance_destroy();
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7BF24D96
		/// @DnDParent : 1393560F
		/// @DnDArgument : "var" "global.so_subt"
		/// @DnDArgument : "value" "1"
		if(global.so_subt == 1)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 3FA8F703
			/// @DnDParent : 7BF24D96
			/// @DnDArgument : "objectid" "subtitle_ob"
			/// @DnDArgument : "layer" ""Room_Start_L""
			/// @DnDSaveInfo : "objectid" "subtitle_ob"
			instance_create_layer(0, 0, "Room_Start_L", subtitle_ob);
		}
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 21E469B5
		/// @DnDParent : 1393560F
		/// @DnDArgument : "soundid" "tut_3"
		/// @DnDSaveInfo : "soundid" "tut_3"
		audio_play_sound(tut_3, 0, 0, 1.0, undefined, 1.0);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 69B5249B
		/// @DnDParent : 1393560F
		/// @DnDArgument : "expr" "480"
		/// @DnDArgument : "var" "timer"
		timer = 480;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 13D91125
	/// @DnDParent : 739F9381
	else
	{
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 6120DD9F
		/// @DnDParent : 13D91125
		/// @DnDArgument : "obj" "subtitle_ob"
		/// @DnDSaveInfo : "obj" "subtitle_ob"
		var l6120DD9F_0 = false;
		l6120DD9F_0 = instance_exists(subtitle_ob);
		if(l6120DD9F_0)
		{
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 7F8E4777
			/// @DnDApplyTo : {subtitle_ob}
			/// @DnDParent : 6120DD9F
			with(subtitle_ob) instance_destroy();
		}
	
		/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 790B6D13
		/// @DnDParent : 13D91125
		/// @DnDArgument : "code" "mino_no_opt = function ()$(13_10){$(13_10)	i = 0;$(13_10)	noh_list = array_create(0);$(13_10)	$(13_10)	for (i=0; i < instance_number(maze_no_option_highlight_ob); i += 1)$(13_10)	{$(13_10)		noh_list[i] = instance_find(maze_no_option_highlight_ob,i)$(13_10)	}$(13_10)	$(13_10)	i = 0;$(13_10)	i1 = 0;$(13_10)	array_max = array_length(noh_list)$(13_10)	exit_list = [$(13_10)	exit_l,$(13_10)	exit_u,$(13_10)	exit_r,$(13_10)	exit_d]$(13_10)	$(13_10)	for (i = 0; i < array_max; i += 1)$(13_10)	{$(13_10)		while(i1 < 4)$(13_10)		{$(13_10)			if (exit_list[i1]>0)$(13_10)			{$(13_10)				if(noh_list[i].exit_list[i1] = exit_list[i1])$(13_10)				{$(13_10)					noh_list[i].box_show = 1;$(13_10)				}$(13_10)			}$(13_10)			$(13_10)			i1+=1;$(13_10)			$(13_10)		}$(13_10)		i1 = 0;$(13_10)	}$(13_10)	$(13_10)	i = 0;$(13_10)	i1 = 0;$(13_10)}$(13_10)$(13_10)noh_delete = function ()$(13_10){$(13_10)organizer_checklist = $(13_10)[$(13_10)base_maze_ob,$(13_10)inert_cross_ob,$(13_10)inert_maze_ob,$(13_10)inert_puzzle_1_ob,$(13_10)base_start_ob,$(13_10)base_minotaur_ob,$(13_10)base_puzzle_1_ob,$(13_10)base_puzzle_2_ob$(13_10)]$(13_10)$(13_10)	for (i = 0; i < array_max; i += 1)$(13_10)	{$(13_10)		while(i1 < 8)$(13_10)		if(place_meeting(noh_list[i].x,noh_list[i].y,organizer_checklist[i1]))$(13_10)		{$(13_10)			if(instance_exists(noh_list[i]))$(13_10)			{$(13_10)				instance_destroy(noh_list[i]);$(13_10)			}$(13_10)			if(noh_list[i].x < 0)$(13_10)			{$(13_10)				instance_destroy(noh_list[i]);$(13_10)			}$(13_10)			if(noh_list[i].y < 0)$(13_10)			{$(13_10)				instance_destroy(noh_list[i]);$(13_10)			}$(13_10)		}$(13_10)		else$(13_10)		{$(13_10)			i1 += 1;$(13_10)		}$(13_10)		i1 = 0;$(13_10)	}$(13_10)	var l48F020DF_0 = false;$(13_10)	l48F020DF_0 = instance_exists(maze_no_option_highlight_ob);$(13_10)	if(!l48F020DF_0)$(13_10)	{$(13_10)		camera_ob.ix = 0;$(13_10)		camera_ob.iy = 0;$(13_10)		camera_ob.cam_state = 5;$(13_10)		camera_ob.cam_pos = 1;$(13_10)		room_goto(title_rm);$(13_10)		global.aud_transfer = 13;$(13_10)		instance_create_layer(0,0,"Room_Start_L",subtitle_ob);$(13_10)		audio_play_sound(end_game_prot,0,0);$(13_10)	}$(13_10)}$(13_10)"
		mino_no_opt = function ()
		{
			i = 0;
			noh_list = array_create(0);
			
			for (i=0; i < instance_number(maze_no_option_highlight_ob); i += 1)
			{
				noh_list[i] = instance_find(maze_no_option_highlight_ob,i)
			}
			
			i = 0;
			i1 = 0;
			array_max = array_length(noh_list)
			exit_list = [
			exit_l,
			exit_u,
			exit_r,
			exit_d]
			
			for (i = 0; i < array_max; i += 1)
			{
				while(i1 < 4)
				{
					if (exit_list[i1]>0)
					{
						if(noh_list[i].exit_list[i1] = exit_list[i1])
						{
							noh_list[i].box_show = 1;
						}
					}
					
					i1+=1;
					
				}
				i1 = 0;
			}
			
			i = 0;
			i1 = 0;
		}
		
		noh_delete = function ()
		{
		organizer_checklist = 
		[
		base_maze_ob,
		inert_cross_ob,
		inert_maze_ob,
		inert_puzzle_1_ob,
		base_start_ob,
		base_minotaur_ob,
		base_puzzle_1_ob,
		base_puzzle_2_ob
		]
		
			for (i = 0; i < array_max; i += 1)
			{
				while(i1 < 8)
				if(place_meeting(noh_list[i].x,noh_list[i].y,organizer_checklist[i1]))
				{
					if(instance_exists(noh_list[i]))
					{
						instance_destroy(noh_list[i]);
					}
					if(noh_list[i].x < 0)
					{
						instance_destroy(noh_list[i]);
					}
					if(noh_list[i].y < 0)
					{
						instance_destroy(noh_list[i]);
					}
				}
				else
				{
					i1 += 1;
				}
				i1 = 0;
			}
			var l48F020DF_0 = false;
			l48F020DF_0 = instance_exists(maze_no_option_highlight_ob);
			if(!l48F020DF_0)
			{
				camera_ob.ix = 0;
				camera_ob.iy = 0;
				camera_ob.cam_state = 5;
				camera_ob.cam_pos = 1;
				room_goto(title_rm);
				global.aud_transfer = 13;
				instance_create_layer(0,0,"Room_Start_L",subtitle_ob);
				audio_play_sound(end_game_prot,0,0);
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 55A07841
		/// @DnDParent : 13D91125
		/// @DnDArgument : "function" "mino_no_opt"
		mino_no_opt();
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 47320023
		/// @DnDParent : 13D91125
		/// @DnDArgument : "function" "noh_delete"
		noh_delete();
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3D09A9A7
		/// @DnDParent : 13D91125
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "timer"
		timer = 1;
	}
}