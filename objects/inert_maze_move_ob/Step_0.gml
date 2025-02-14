/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 052B8864
/// @DnDArgument : "var" "end_game_timer"
/// @DnDArgument : "op" "2"
if(end_game_timer > 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7A429958
	/// @DnDParent : 052B8864
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "end_game_timer"
	end_game_timer += -1;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 58BEC208
/// @DnDArgument : "var" "end_game_timer"
if(end_game_timer == 0)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 4B6FB5A6
	/// @DnDParent : 58BEC208
	/// @DnDArgument : "soundid" "end_game_prot"
	/// @DnDSaveInfo : "soundid" "end_game_prot"
	audio_play_sound(end_game_prot, 0, 0, 1.0, undefined, 1.0);

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 28563556
	/// @DnDParent : 58BEC208
	/// @DnDArgument : "code" "//Set Camera state to 0 and set ix/iy$(13_10)$(13_10)camera_ob.ix = 0;$(13_10)camera_ob.iy = 0;$(13_10)camera_ob.cam_state = 5;$(13_10)camera_ob.cam_pos = 1;$(13_10)"
	//Set Camera state to 0 and set ix/iy
	
	camera_ob.ix = 0;
	camera_ob.iy = 0;
	camera_ob.cam_state = 5;
	camera_ob.cam_pos = 1;

	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 3D2AA276
	/// @DnDParent : 58BEC208
	/// @DnDArgument : "room" "title_rm"
	/// @DnDSaveInfo : "room" "title_rm"
	room_goto(title_rm);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6B4BD56B
/// @DnDArgument : "var" "timer"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "1"
if(timer > 1)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3750D295
	/// @DnDParent : 6B4BD56B
	/// @DnDArgument : "expr" "-2"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "timer"
	timer += -2;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 202F49EA
/// @DnDArgument : "var" "timer"
if(timer == 0)
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 7641165E
	/// @DnDParent : 202F49EA
	/// @DnDArgument : "code" "mino_no_opt = function ()$(13_10){$(13_10)	i = 0;$(13_10)	noh_list = array_create(0);$(13_10)	$(13_10)	for (i=0; i < instance_number(maze_no_option_highlight_ob); i += 1)$(13_10)	{$(13_10)		noh_list[i] = instance_find(maze_no_option_highlight_ob,i)$(13_10)	}$(13_10)	$(13_10)	i = 0;$(13_10)	i1 = 0;$(13_10)	array_max = array_length(noh_list)$(13_10)	exit_list = [$(13_10)	exit_l,$(13_10)	exit_u,$(13_10)	exit_r,$(13_10)	exit_d]$(13_10)	$(13_10)	for (i = 0; i < array_max; i += 1)$(13_10)	{$(13_10)		while(i1 < 4)$(13_10)		{$(13_10)			if (exit_list[i1]>0)$(13_10)			{$(13_10)				if(noh_list[i].exit_check = exit_list[i1])$(13_10)				{$(13_10)					noh_list[i].box_show = 1;$(13_10)				}$(13_10)			}$(13_10)			$(13_10)			i1+=1;$(13_10)			$(13_10)		}$(13_10)		i1 = 0;$(13_10)	}$(13_10)	$(13_10)	i = 0;$(13_10)	i1 = 0;$(13_10)}$(13_10)$(13_10)noh_delete = function ()$(13_10){$(13_10)organizer_checklist = $(13_10)[$(13_10)base_maze_ob,$(13_10)inert_cross_ob,$(13_10)inert_maze_ob,$(13_10)inert_puzzle_1_ob,$(13_10)base_start_ob,$(13_10)base_minotaur_ob,$(13_10)base_puzzle_1_ob,$(13_10)base_puzzle_2_ob$(13_10)]$(13_10)$(13_10)	for (i = 0; i < array_max; i += 1)$(13_10)	{$(13_10)		while(i1 < 8)$(13_10)		if(place_meeting(noh_list[i].x,noh_list[i].y,organizer_checklist[i1]))$(13_10)		{$(13_10)			if(instance_exists(noh_list[i]))$(13_10)			{$(13_10)				instance_destroy(noh_list[i]);$(13_10)			}$(13_10)		}$(13_10)		else$(13_10)		{$(13_10)			i1 += 1;$(13_10)		}$(13_10)		i1 = 0;$(13_10)	}$(13_10)$(13_10)}$(13_10)"
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
					if(noh_list[i].exit_check = exit_list[i1])
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
			}
			else
			{
				i1 += 1;
			}
			i1 = 0;
		}
	
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6DE90ABA
	/// @DnDParent : 202F49EA
	/// @DnDArgument : "var" "global.aud_transfer"
	/// @DnDArgument : "value" "3"
	if(global.aud_transfer == 3)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 29712545
		/// @DnDInput : 2
		/// @DnDParent : 6DE90ABA
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_1" "1"
		/// @DnDArgument : "var" "maze_no_option_highlight_ob.first_build_tut"
		/// @DnDArgument : "var_1" "goal_highlighter_ob.first_build_tut"
		maze_no_option_highlight_ob.first_build_tut = 1;
		goal_highlighter_ob.first_build_tut = 1;
	}

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 7023CF3A
	/// @DnDParent : 202F49EA
	/// @DnDArgument : "function" "mino_no_opt"
	mino_no_opt();

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 1E4D26CC
	/// @DnDParent : 202F49EA
	/// @DnDArgument : "function" "noh_delete"
	noh_delete();

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2BFB6512
	/// @DnDInput : 2
	/// @DnDParent : 202F49EA
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_1" "1.1"
	/// @DnDArgument : "var" "timer"
	/// @DnDArgument : "var_1" "global.play_diff_level"
	timer = 1;
	global.play_diff_level = 1.1;
}