/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
/// @DnDVersion : 1
/// @DnDHash : 6D637F2A
/// @DnDArgument : "speed" "0"
image_speed = 0;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 442B2B3B
/// @DnDArgument : "code" "/*function to check if $(13_10)mino is building outside$(13_10)the bounds of the current$(13_10)maze area.$(13_10)*/$(13_10)$(13_10)i1 = 0;$(13_10)$(13_10)mino_no_opt = function ()$(13_10){$(13_10)	i = 0;$(13_10)	noh_list = array_create(0);$(13_10)	$(13_10)	for (i=0; i < instance_number(maze_no_option_highlight_ob); i += 1)$(13_10)	{$(13_10)		noh_list[i] = instance_find(maze_no_option_highlight_ob,i)$(13_10)	}$(13_10)	$(13_10)	i = 0;$(13_10)	$(13_10)	for (i=0; i < instance_number(maze_highlight_ob); i += 1)$(13_10)	{$(13_10)		array_push(noh_list,(instance_find(maze_no_option_highlight_ob,i)))$(13_10)	}$(13_10)	$(13_10)	i = 0;$(13_10)	array_max = array_length(noh_list)$(13_10)	noh_x_list = array_create(0);$(13_10)	noh_y_list = array_create(0);$(13_10)	$(13_10)	if (array_max > 0)$(13_10)	{$(13_10)		for (i = 0; i < array_max; i += 1)$(13_10)		{$(13_10)			noh_x_list[i] = noh_list[i].x$(13_10)			noh_y_list[i] = noh_list[i].y$(13_10)		}$(13_10)	}$(13_10)	else$(13_10)	{$(13_10)		show_debug_message("Set end game protocol.")$(13_10)		global.aud_transfer = 13;$(13_10)		instance_create_layer(0,0,"Room_Start_L",subtitle_ob);$(13_10)		audio_play_sound(end_game_prot,0,0);$(13_10)		camera_ob.ix = 0;$(13_10)		camera_ob.iy = 0;$(13_10)		camera_ob.cam_state = 5;$(13_10)		camera_ob.cam_pos = 1;$(13_10)		room_goto(title_rm);$(13_10)	}$(13_10)	$(13_10)	i = 0;$(13_10)	$(13_10)}$(13_10)$(13_10)$(13_10)noh_delete = function ()$(13_10){$(13_10)organizer_checklist = $(13_10)[$(13_10)base_maze_ob,$(13_10)inert_cross_ob,$(13_10)inert_maze_ob,$(13_10)inert_puzzle_1_ob,$(13_10)base_start_ob,$(13_10)base_minotaur_ob,$(13_10)base_puzzle_1_ob,$(13_10)base_puzzle_2_ob$(13_10)]$(13_10)$(13_10)	for (i = 0; i < array_max; i += 1)$(13_10)	{$(13_10)		while(i1 < 8)$(13_10)		if(place_meeting(noh_list[i].x,noh_list[i].y,organizer_checklist[i1]))$(13_10)		{$(13_10)			if(instance_exists(noh_list[i]))$(13_10)			{$(13_10)				instance_destroy(noh_list[i]);$(13_10)				array_pop(noh_x_list[i]);$(13_10)				array_pop(noh_y_list[i]);$(13_10)				array_pop(noh_list[i]);$(13_10)			}$(13_10)		}$(13_10)		else$(13_10)		{$(13_10)			i1 += 1;$(13_10)		}$(13_10)		i1 = 0;$(13_10)	}$(13_10)}$(13_10)$(13_10)$(13_10)mino_noh_select = function ()$(13_10){$(13_10)	i = 0;$(13_10)	$(13_10)	if(array_max > 0)$(13_10)	{$(13_10)		if(global.piece_selector = base_puzzle_1_ob)$(13_10)		{$(13_10)			for (i = 0; i < array_max; i += 1)$(13_10)			{$(13_10)			noh_list[i] = point_distance(noh_x_list[i],noh_y_list[i],global.puzz_1_x,global.puzz_1_y)$(13_10)			}$(13_10)		}$(13_10)	$(13_10)		if(global.piece_selector = base_minotaur_ob)$(13_10)		{$(13_10)			for (i = 0; i < array_max; i += 1)$(13_10)			{$(13_10)			noh_list[i] = point_distance(noh_x_list[i],noh_y_list[i],global.mino_x,global.mino_y)$(13_10)			}$(13_10)		}$(13_10)	$(13_10)		if(global.piece_selector = base_puzzle_2_ob)$(13_10)		{$(13_10)			for (i = 0; i < array_max; i += 1)$(13_10)			{$(13_10)			noh_list[i] = point_distance(noh_x_list[i],noh_y_list[i],global.puzz_2_x,global.puzz_2_y)$(13_10)			}$(13_10)		}$(13_10)		$(13_10)		i = 0;$(13_10)		dis_check = 144;$(13_10)		$(13_10)		while(dis_check < noh_list[i])$(13_10)		{$(13_10)			if (i < (array_max-1))$(13_10)			{$(13_10)				i += 1;$(13_10)			}$(13_10)			else$(13_10)			{$(13_10)				i = 0;$(13_10)				dis_check += 72;$(13_10)			}$(13_10)		}$(13_10)		$(13_10)		if (noh_x_list[i] = x)$(13_10)		{$(13_10)			if (noh_y_list[i] = y)$(13_10)			{$(13_10)				if(exit_l = 1)$(13_10)				{$(13_10)					instance_create_layer(x-144,y,"Map_L",base_maze_creator_ob);$(13_10)				}$(13_10)				else$(13_10)				{$(13_10)					if(exit_u = 2)$(13_10)					{$(13_10)						instance_create_layer(x,y-144,"Map_L",base_maze_creator_ob);$(13_10)					}$(13_10)					else$(13_10)					{$(13_10)						if(exit_r = 3)$(13_10)						{$(13_10)							instance_create_layer(x+144,y,"Map_L",base_maze_creator_ob);$(13_10)						}$(13_10)						else$(13_10)						{$(13_10)							if(exit_d = 4)$(13_10)							{$(13_10)								instance_create_layer(x,y+144,"Map_L",base_maze_creator_ob);$(13_10)							}$(13_10)							else$(13_10)							{$(13_10)								show_debug_message("Set end game protocol.");$(13_10)								global.aud_transfer = 13;$(13_10)								instance_create_layer(0,0,"Room_Start_L",subtitle_ob);$(13_10)								audio_play_sound(end_game_prot,0,0);$(13_10)								camera_ob.ix = 0;$(13_10)								camera_ob.iy = 0;$(13_10)								camera_ob.cam_state = 5;$(13_10)								camera_ob.cam_pos = 1;$(13_10)								room_goto(title_rm);	$(13_10)							}$(13_10)						}$(13_10)					}$(13_10)				}$(13_10)			}$(13_10)			else$(13_10)			{$(13_10)				instance_create_layer(noh_x_list[i],noh_y_list[i],"Map_L",inert_cross_ob);$(13_10)				instance_destroy(noh_list[i]);$(13_10)			}$(13_10)		}$(13_10)		else$(13_10)		{$(13_10)			instance_create_layer(noh_x_list[i],noh_y_list[i],"Map_L",inert_cross_ob);$(13_10)			instance_destroy(noh_list[i]);$(13_10)		}$(13_10)		$(13_10)		i = 0;$(13_10)		$(13_10)		for (i = 0; i < array_max; i += 1)$(13_10)		{$(13_10)		array_pop(noh_x_list);$(13_10)		array_pop(noh_y_list);$(13_10)		array_pop(noh_list);$(13_10)		}$(13_10)	$(13_10)		i = 0;$(13_10)		array_max = 0;$(13_10)	}$(13_10)	else$(13_10)	{$(13_10)		show_debug_message("Set end game protocol.");$(13_10)		global.aud_transfer = 13;$(13_10)		instance_create_layer(0,0,"Room_Start_L",subtitle_ob);$(13_10)		audio_play_sound(end_game_prot,0,0);$(13_10)		camera_ob.ix = 0;$(13_10)		camera_ob.iy = 0;$(13_10)		camera_ob.cam_state = 5;$(13_10)		camera_ob.cam_pos = 1;$(13_10)		room_goto(title_rm);$(13_10)	}$(13_10)	map_create = 0;$(13_10)}$(13_10)$(13_10)$(13_10)"
/*function to check if 
mino is building outside
the bounds of the current
maze area.
*/

i1 = 0;

mino_no_opt = function ()
{
	i = 0;
	noh_list = array_create(0);
	
	for (i=0; i < instance_number(maze_no_option_highlight_ob); i += 1)
	{
		noh_list[i] = instance_find(maze_no_option_highlight_ob,i)
	}
	
	i = 0;
	
	for (i=0; i < instance_number(maze_highlight_ob); i += 1)
	{
		array_push(noh_list,(instance_find(maze_no_option_highlight_ob,i)))
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
	else
	{
		show_debug_message("Set end game protocol.")
		global.aud_transfer = 13;
		instance_create_layer(0,0,"Room_Start_L",subtitle_ob);
		audio_play_sound(end_game_prot,0,0);
		camera_ob.ix = 0;
		camera_ob.iy = 0;
		camera_ob.cam_state = 5;
		camera_ob.cam_pos = 1;
		room_goto(title_rm);
	}
	
	i = 0;
	
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
				array_pop(noh_x_list[i]);
				array_pop(noh_y_list[i]);
				array_pop(noh_list[i]);
			}
		}
		else
		{
			i1 += 1;
		}
		i1 = 0;
	}
}


mino_noh_select = function ()
{
	i = 0;
	
	if(array_max > 0)
	{
		if(global.piece_selector = base_puzzle_1_ob)
		{
			for (i = 0; i < array_max; i += 1)
			{
			noh_list[i] = point_distance(noh_x_list[i],noh_y_list[i],global.puzz_1_x,global.puzz_1_y)
			}
		}
	
		if(global.piece_selector = base_minotaur_ob)
		{
			for (i = 0; i < array_max; i += 1)
			{
			noh_list[i] = point_distance(noh_x_list[i],noh_y_list[i],global.mino_x,global.mino_y)
			}
		}
	
		if(global.piece_selector = base_puzzle_2_ob)
		{
			for (i = 0; i < array_max; i += 1)
			{
			noh_list[i] = point_distance(noh_x_list[i],noh_y_list[i],global.puzz_2_x,global.puzz_2_y)
			}
		}
		
		i = 0;
		dis_check = 144;
		
		while(dis_check < noh_list[i])
		{
			if (i < (array_max-1))
			{
				i += 1;
			}
			else
			{
				i = 0;
				dis_check += 72;
			}
		}
		
		if (noh_x_list[i] = x)
		{
			if (noh_y_list[i] = y)
			{
				if(exit_l = 1)
				{
					instance_create_layer(x-144,y,"Map_L",base_maze_creator_ob);
				}
				else
				{
					if(exit_u = 2)
					{
						instance_create_layer(x,y-144,"Map_L",base_maze_creator_ob);
					}
					else
					{
						if(exit_r = 3)
						{
							instance_create_layer(x+144,y,"Map_L",base_maze_creator_ob);
						}
						else
						{
							if(exit_d = 4)
							{
								instance_create_layer(x,y+144,"Map_L",base_maze_creator_ob);
							}
							else
							{
								show_debug_message("Set end game protocol.");
								global.aud_transfer = 13;
								instance_create_layer(0,0,"Room_Start_L",subtitle_ob);
								audio_play_sound(end_game_prot,0,0);
								camera_ob.ix = 0;
								camera_ob.iy = 0;
								camera_ob.cam_state = 5;
								camera_ob.cam_pos = 1;
								room_goto(title_rm);	
							}
						}
					}
				}
			}
			else
			{
				instance_create_layer(noh_x_list[i],noh_y_list[i],"Map_L",inert_cross_ob);
				instance_destroy(noh_list[i]);
			}
		}
		else
		{
			instance_create_layer(noh_x_list[i],noh_y_list[i],"Map_L",inert_cross_ob);
			instance_destroy(noh_list[i]);
		}
		
		i = 0;
		
		for (i = 0; i < array_max; i += 1)
		{
		array_pop(noh_x_list);
		array_pop(noh_y_list);
		array_pop(noh_list);
		}
	
		i = 0;
		array_max = 0;
	}
	else
	{
		show_debug_message("Set end game protocol.");
		global.aud_transfer = 13;
		instance_create_layer(0,0,"Room_Start_L",subtitle_ob);
		audio_play_sound(end_game_prot,0,0);
		camera_ob.ix = 0;
		camera_ob.iy = 0;
		camera_ob.cam_state = 5;
		camera_ob.cam_pos = 1;
		room_goto(title_rm);
	}
	map_create = 0;
}


/**/

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4B10C068
/// @DnDArgument : "var" "global.turn_control"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "4"
if(global.turn_control < 4)
{
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 3E3DBB2A
	/// @DnDParent : 4B10C068
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "base_maze_ob"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "object" "base_maze_ob"
	var l3E3DBB2A_0 = instance_place(x + 0, y + 0, [base_maze_ob]);
	if (!(l3E3DBB2A_0 > 0))
	{
		/// @DnDAction : YoYo Games.Collisions.If_Object_At
		/// @DnDVersion : 1.1
		/// @DnDHash : 3365BC9D
		/// @DnDParent : 3E3DBB2A
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "object" "inert_cross_ob"
		/// @DnDArgument : "not" "1"
		/// @DnDSaveInfo : "object" "inert_cross_ob"
		var l3365BC9D_0 = instance_place(x + 0, y + 0, [inert_cross_ob]);
		if (!(l3365BC9D_0 > 0))
		{
			/// @DnDAction : YoYo Games.Collisions.If_Object_At
			/// @DnDVersion : 1.1
			/// @DnDHash : 2C60BC7A
			/// @DnDParent : 3365BC9D
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "object" "inert_maze_ob"
			/// @DnDArgument : "not" "1"
			/// @DnDSaveInfo : "object" "inert_maze_ob"
			var l2C60BC7A_0 = instance_place(x + 0, y + 0, [inert_maze_ob]);
			if (!(l2C60BC7A_0 > 0))
			{
				/// @DnDAction : YoYo Games.Collisions.If_Object_At
				/// @DnDVersion : 1.1
				/// @DnDHash : 3FAE0ED3
				/// @DnDParent : 2C60BC7A
				/// @DnDArgument : "x_relative" "1"
				/// @DnDArgument : "y_relative" "1"
				/// @DnDArgument : "object" "inert_minotaur_ob"
				/// @DnDArgument : "not" "1"
				/// @DnDSaveInfo : "object" "inert_minotaur_ob"
				var l3FAE0ED3_0 = instance_place(x + 0, y + 0, [inert_minotaur_ob]);
				if (!(l3FAE0ED3_0 > 0))
				{
					/// @DnDAction : YoYo Games.Collisions.If_Object_At
					/// @DnDVersion : 1.1
					/// @DnDHash : 5CCF4AEC
					/// @DnDParent : 3FAE0ED3
					/// @DnDArgument : "x_relative" "1"
					/// @DnDArgument : "y_relative" "1"
					/// @DnDArgument : "object" "inert_puzzle_1_ob"
					/// @DnDArgument : "not" "1"
					/// @DnDSaveInfo : "object" "inert_puzzle_1_ob"
					var l5CCF4AEC_0 = instance_place(x + 0, y + 0, [inert_puzzle_1_ob]);
					if (!(l5CCF4AEC_0 > 0))
					{
						/// @DnDAction : YoYo Games.Collisions.If_Object_At
						/// @DnDVersion : 1.1
						/// @DnDHash : 3F44B37A
						/// @DnDParent : 5CCF4AEC
						/// @DnDArgument : "x_relative" "1"
						/// @DnDArgument : "y_relative" "1"
						/// @DnDArgument : "object" "base_puzzle_2_ob"
						/// @DnDArgument : "not" "1"
						/// @DnDSaveInfo : "object" "base_puzzle_2_ob"
						var l3F44B37A_0 = instance_place(x + 0, y + 0, [base_puzzle_2_ob]);
						if (!(l3F44B37A_0 > 0))
						{
							/// @DnDAction : YoYo Games.Collisions.If_Object_At
							/// @DnDVersion : 1.1
							/// @DnDHash : 4D283AF8
							/// @DnDParent : 3F44B37A
							/// @DnDArgument : "x_relative" "1"
							/// @DnDArgument : "y_relative" "1"
							/// @DnDArgument : "object" "base_start_ob"
							/// @DnDArgument : "not" "1"
							/// @DnDSaveInfo : "object" "base_start_ob"
							var l4D283AF8_0 = instance_place(x + 0, y + 0, [base_start_ob]);
							if (!(l4D283AF8_0 > 0))
							{
								/// @DnDAction : YoYo Games.Common.If_Variable
								/// @DnDVersion : 1
								/// @DnDHash : 00217807
								/// @DnDParent : 4D283AF8
								/// @DnDArgument : "var" "global.play_diff_level"
								/// @DnDArgument : "op" "1"
								/// @DnDArgument : "value" "3"
								if(global.play_diff_level < 3)
								{
									/// @DnDAction : YoYo Games.Common.Variable
									/// @DnDVersion : 1
									/// @DnDHash : 4D5CD308
									/// @DnDParent : 00217807
									/// @DnDArgument : "expr" "vine_maze_sp"
									/// @DnDArgument : "var" "map_type"
									map_type = vine_maze_sp;
								}
							
								/// @DnDAction : YoYo Games.Common.Else
								/// @DnDVersion : 1
								/// @DnDHash : 074936FE
								/// @DnDParent : 4D283AF8
								else
								{
									/// @DnDAction : YoYo Games.Common.If_Variable
									/// @DnDVersion : 1
									/// @DnDHash : 4459FD27
									/// @DnDParent : 074936FE
									/// @DnDArgument : "var" "global.play_diff_level"
									/// @DnDArgument : "op" "1"
									/// @DnDArgument : "value" "5"
									if(global.play_diff_level < 5)
									{
										/// @DnDAction : YoYo Games.Common.Variable
										/// @DnDVersion : 1
										/// @DnDHash : 42D9BFED
										/// @DnDParent : 4459FD27
										/// @DnDArgument : "expr" "broke_maze_sp"
										/// @DnDArgument : "var" "map_type"
										map_type = broke_maze_sp;
									}
								
									/// @DnDAction : YoYo Games.Common.Else
									/// @DnDVersion : 1
									/// @DnDHash : 219AAAE2
									/// @DnDParent : 074936FE
									else
									{
										/// @DnDAction : YoYo Games.Common.If_Variable
										/// @DnDVersion : 1
										/// @DnDHash : 642C0257
										/// @DnDParent : 219AAAE2
										/// @DnDArgument : "var" "global.play_diff_level"
										/// @DnDArgument : "op" "3"
										/// @DnDArgument : "value" "7"
										if(global.play_diff_level <= 7)
										{
											/// @DnDAction : YoYo Games.Common.Variable
											/// @DnDVersion : 1
											/// @DnDHash : 51676F52
											/// @DnDParent : 642C0257
											/// @DnDArgument : "expr" "base_maze_sp"
											/// @DnDArgument : "var" "map_type"
											map_type = base_maze_sp;
										}
									}
								}
							
								/// @DnDAction : YoYo Games.Common.If_Variable
								/// @DnDVersion : 1
								/// @DnDHash : 7ED464AE
								/// @DnDParent : 4D283AF8
								/// @DnDArgument : "var" "room"
								/// @DnDArgument : "value" "maze_1_rm"
								if(room == maze_1_rm)
								{
									/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
									/// @DnDVersion : 1
									/// @DnDHash : 32025B3B
									/// @DnDParent : 7ED464AE
									/// @DnDArgument : "value" "map_type"
									/// @DnDArgument : "instvar" "10"
									sprite_index = map_type;
								}
							
								/// @DnDAction : YoYo Games.Common.Else
								/// @DnDVersion : 1
								/// @DnDHash : 08EB3EA3
								/// @DnDParent : 4D283AF8
								else
								{
									/// @DnDAction : YoYo Games.Common.Variable
									/// @DnDVersion : 1
									/// @DnDHash : 7AB5A2D4
									/// @DnDParent : 08EB3EA3
									/// @DnDArgument : "expr" "vine_maze_sp"
									/// @DnDArgument : "var" "map_type"
									map_type = vine_maze_sp;
								
									/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
									/// @DnDVersion : 1
									/// @DnDHash : 0E707521
									/// @DnDParent : 08EB3EA3
									/// @DnDArgument : "value" "map_type"
									/// @DnDArgument : "instvar" "10"
									sprite_index = map_type;
								}
							
								/// @DnDAction : YoYo Games.Common.Execute_Code
								/// @DnDVersion : 1
								/// @DnDHash : 153F49B2
								/// @DnDParent : 4D283AF8
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
								/// @DnDHash : 17E88774
								/// @DnDParent : 4D283AF8
								/// @DnDArgument : "function" "mino_no_opt"
								mino_no_opt();
							
								/// @DnDAction : YoYo Games.Common.Variable
								/// @DnDVersion : 1
								/// @DnDHash : 3EB3ED7D
								/// @DnDParent : 4D283AF8
								/// @DnDArgument : "expr" "1"
								/// @DnDArgument : "var" "global.turn_control"
								global.turn_control = 1;
							
								/// @DnDAction : YoYo Games.Common.Execute_Script
								/// @DnDVersion : 1.1
								/// @DnDHash : 5F9F9D04
								/// @DnDParent : 4D283AF8
								/// @DnDArgument : "script" "maze_piece_name_sc"
								/// @DnDSaveInfo : "script" "maze_piece_name_sc"
								script_execute(maze_piece_name_sc);
							
								/// @DnDAction : YoYo Games.Common.Variable
								/// @DnDVersion : 1
								/// @DnDHash : 7B0DEC85
								/// @DnDInput : 8
								/// @DnDParent : 4D283AF8
								/// @DnDArgument : "expr_1" "1"
								/// @DnDArgument : "expr_2" "x"
								/// @DnDArgument : "expr_3" "y"
								/// @DnDArgument : "expr_4" "level_map_selector[map_type][0]"
								/// @DnDArgument : "expr_5" "x"
								/// @DnDArgument : "expr_6" "y"
								/// @DnDArgument : "expr_7" "5"
								/// @DnDArgument : "var" "uncomplete_maze"
								/// @DnDArgument : "var_1" "cross_activate"
								/// @DnDArgument : "var_2" "map_x"
								/// @DnDArgument : "var_3" "map_y"
								/// @DnDArgument : "var_4" "map_name"
								/// @DnDArgument : "var_5" "global.last_map_x"
								/// @DnDArgument : "var_6" "global.last_map_y"
								/// @DnDArgument : "var_7" "image_index"
								uncomplete_maze = 0;
								cross_activate = 1;
								map_x = x;
								map_y = y;
								map_name = level_map_selector[map_type][0];
								global.last_map_x = x;
								global.last_map_y = y;
								image_index = 5;
							
								/// @DnDAction : YoYo Games.Common.Variable
								/// @DnDVersion : 1
								/// @DnDHash : 3F8B60A2
								/// @DnDInput : 4
								/// @DnDParent : 4D283AF8
								/// @DnDArgument : "var" "exit_l"
								/// @DnDArgument : "var_1" "exit_u"
								/// @DnDArgument : "var_2" "exit_r"
								/// @DnDArgument : "var_3" "exit_d"
								exit_l = 0;
								exit_u = 0;
								exit_r = 0;
								exit_d = 0;
							
								/// @DnDAction : YoYo Games.Common.Variable
								/// @DnDVersion : 1
								/// @DnDHash : 575D525E
								/// @DnDParent : 4D283AF8
								/// @DnDArgument : "var" "highlight_check"
								highlight_check = 0;
							
								/// @DnDAction : YoYo Games.Common.Execute_Script
								/// @DnDVersion : 1.1
								/// @DnDHash : 7808D191
								/// @DnDParent : 4D283AF8
								/// @DnDArgument : "script" "map_organizer_sc"
								/// @DnDSaveInfo : "script" "map_organizer_sc"
								script_execute(map_organizer_sc);
							
								/// @DnDAction : YoYo Games.Common.Variable
								/// @DnDVersion : 1
								/// @DnDHash : 630EB232
								/// @DnDInput : 4
								/// @DnDParent : 4D283AF8
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
							
								/// @DnDAction : YoYo Games.Common.Variable
								/// @DnDVersion : 1
								/// @DnDHash : 699A197F
								/// @DnDInput : 2
								/// @DnDParent : 4D283AF8
								/// @DnDArgument : "var" "global.map_tap_transfer"
								/// @DnDArgument : "var_1" "global.temp_tap_transfer"
								global.map_tap_transfer = 0;
								global.temp_tap_transfer = 0;
							
								/// @DnDAction : YoYo Games.Common.Variable
								/// @DnDVersion : 1
								/// @DnDHash : 7D5289C4
								/// @DnDParent : 4D283AF8
								/// @DnDArgument : "expr" "2"
								/// @DnDArgument : "var" "global.turn_control"
								global.turn_control = 2;
							
								/// @DnDAction : YoYo Games.Common.Execute_Script
								/// @DnDVersion : 1.1
								/// @DnDHash : 4E4071D0
								/// @DnDParent : 4D283AF8
								/// @DnDArgument : "script" "global_piece_changer_sc"
								/// @DnDSaveInfo : "script" "global_piece_changer_sc"
								script_execute(global_piece_changer_sc);
							
								/// @DnDAction : YoYo Games.Common.Execute_Script
								/// @DnDVersion : 1.1
								/// @DnDHash : 355033F9
								/// @DnDParent : 4D283AF8
								/// @DnDArgument : "script" "no_option_highlighter_sc"
								/// @DnDSaveInfo : "script" "no_option_highlighter_sc"
								script_execute(no_option_highlighter_sc);
							
								/// @DnDAction : YoYo Games.Common.Variable
								/// @DnDVersion : 1
								/// @DnDHash : 710EBF93
								/// @DnDParent : 4D283AF8
								/// @DnDArgument : "expr" "5"
								/// @DnDArgument : "var" "maze_wall"
								maze_wall = 5;
							
								/// @DnDAction : YoYo Games.Common.Execute_Script
								/// @DnDVersion : 1.1
								/// @DnDHash : 3A3B138C
								/// @DnDParent : 4D283AF8
								/// @DnDArgument : "script" "maze_wall_sc"
								/// @DnDSaveInfo : "script" "maze_wall_sc"
								script_execute(maze_wall_sc);
							
								/// @DnDAction : YoYo Games.Audio.Audio_Set_Pitch
								/// @DnDVersion : 1
								/// @DnDHash : 559E5706
								/// @DnDParent : 4D283AF8
								/// @DnDArgument : "sound" "tap_so"
								/// @DnDArgument : "pitch" "random_range(.7,1)"
								/// @DnDSaveInfo : "sound" "tap_so"
								audio_sound_pitch(tap_so, random_range(.7,1));
							
								/// @DnDAction : YoYo Games.Audio.Play_Audio
								/// @DnDVersion : 1.1
								/// @DnDHash : 7218E8A0
								/// @DnDParent : 4D283AF8
								/// @DnDArgument : "soundid" "tap_so"
								/// @DnDSaveInfo : "soundid" "tap_so"
								audio_play_sound(tap_so, 0, 0, 1.0, undefined, 1.0);
							
								/// @DnDAction : YoYo Games.Instances.Create_Instance
								/// @DnDVersion : 1
								/// @DnDHash : 4DAD9B7F
								/// @DnDParent : 4D283AF8
								/// @DnDArgument : "xpos_relative" "1"
								/// @DnDArgument : "ypos_relative" "1"
								/// @DnDArgument : "objectid" "maze_wall_ob"
								/// @DnDArgument : "layer" ""Map_L""
								/// @DnDSaveInfo : "objectid" "maze_wall_ob"
								instance_create_layer(x + 0, y + 0, "Map_L", maze_wall_ob);
							
								/// @DnDAction : YoYo Games.Common.Variable
								/// @DnDVersion : 1
								/// @DnDHash : 49EF1F15
								/// @DnDInput : 2
								/// @DnDParent : 4D283AF8
								/// @DnDArgument : "expr" ""temp_save_2.ini""
								/// @DnDArgument : "expr_1" "1"
								/// @DnDArgument : "var" "save_name"
								/// @DnDArgument : "var_1" "maze_object"
								save_name = "temp_save_2.ini";
								maze_object = 1;
							
								/// @DnDAction : YoYo Games.Common.Variable
								/// @DnDVersion : 1
								/// @DnDHash : 2833154C
								/// @DnDParent : 4D283AF8
								/// @DnDArgument : "var" "prev_map"
								prev_map = 0;
							
								/// @DnDAction : YoYo Games.Common.If_Variable
								/// @DnDVersion : 1
								/// @DnDHash : 679EEC5F
								/// @DnDParent : 4D283AF8
								/// @DnDArgument : "var" "prev_map"
								/// @DnDArgument : "op" "2"
								if(prev_map > 0)
								{
									/// @DnDAction : YoYo Games.Common.Variable
									/// @DnDVersion : 1
									/// @DnDHash : 3EBE8278
									/// @DnDParent : 679EEC5F
									/// @DnDArgument : "expr" "2"
									/// @DnDArgument : "var" "maze_object"
									maze_object = 2;
								}
							
								/// @DnDAction : YoYo Games.Common.Execute_Script
								/// @DnDVersion : 1.1
								/// @DnDHash : 15F29690
								/// @DnDParent : 4D283AF8
								/// @DnDArgument : "script" "save_sc"
								/// @DnDSaveInfo : "script" "save_sc"
								script_execute(save_sc);
							}
						
							/// @DnDAction : YoYo Games.Common.Else
							/// @DnDVersion : 1
							/// @DnDHash : 1122CD0D
							/// @DnDParent : 3F44B37A
							else
							{
								/// @DnDAction : YoYo Games.Common.Function_Call
								/// @DnDVersion : 1
								/// @DnDHash : 696D712D
								/// @DnDParent : 1122CD0D
								/// @DnDArgument : "function" "mino_no_opt"
								mino_no_opt();
							
								/// @DnDAction : YoYo Games.Common.Function_Call
								/// @DnDVersion : 1
								/// @DnDHash : 75F52306
								/// @DnDParent : 1122CD0D
								/// @DnDArgument : "function" "noh_delete"
								noh_delete();
							
								/// @DnDAction : YoYo Games.Common.Function_Call
								/// @DnDVersion : 1
								/// @DnDHash : 07FB4DAA
								/// @DnDParent : 1122CD0D
								/// @DnDArgument : "function" "mino_noh_select"
								mino_noh_select();
							
								/// @DnDAction : YoYo Games.Instances.Destroy_Instance
								/// @DnDVersion : 1
								/// @DnDHash : 59AE5910
								/// @DnDParent : 1122CD0D
								instance_destroy();
							}
						}
					
						/// @DnDAction : YoYo Games.Common.Else
						/// @DnDVersion : 1
						/// @DnDHash : 445C1232
						/// @DnDParent : 5CCF4AEC
						else
						{
							/// @DnDAction : YoYo Games.Common.Function_Call
							/// @DnDVersion : 1
							/// @DnDHash : 4F249EA3
							/// @DnDParent : 445C1232
							/// @DnDArgument : "function" "mino_no_opt"
							mino_no_opt();
						
							/// @DnDAction : YoYo Games.Common.Function_Call
							/// @DnDVersion : 1
							/// @DnDHash : 05B43A2B
							/// @DnDParent : 445C1232
							/// @DnDArgument : "function" "noh_delete"
							noh_delete();
						
							/// @DnDAction : YoYo Games.Common.Function_Call
							/// @DnDVersion : 1
							/// @DnDHash : 2800267B
							/// @DnDParent : 445C1232
							/// @DnDArgument : "function" "mino_noh_select"
							mino_noh_select();
						
							/// @DnDAction : YoYo Games.Instances.Destroy_Instance
							/// @DnDVersion : 1
							/// @DnDHash : 2C0AEACC
							/// @DnDParent : 445C1232
							instance_destroy();
						}
					}
				
					/// @DnDAction : YoYo Games.Common.Else
					/// @DnDVersion : 1
					/// @DnDHash : 45DEE379
					/// @DnDParent : 3FAE0ED3
					else
					{
						/// @DnDAction : YoYo Games.Common.Function_Call
						/// @DnDVersion : 1
						/// @DnDHash : 50222027
						/// @DnDParent : 45DEE379
						/// @DnDArgument : "function" "mino_no_opt"
						mino_no_opt();
					
						/// @DnDAction : YoYo Games.Common.Function_Call
						/// @DnDVersion : 1
						/// @DnDHash : 38C7DC8E
						/// @DnDParent : 45DEE379
						/// @DnDArgument : "function" "noh_delete"
						noh_delete();
					
						/// @DnDAction : YoYo Games.Common.Function_Call
						/// @DnDVersion : 1
						/// @DnDHash : 0D069F07
						/// @DnDParent : 45DEE379
						/// @DnDArgument : "function" "mino_noh_select"
						mino_noh_select();
					
						/// @DnDAction : YoYo Games.Instances.Destroy_Instance
						/// @DnDVersion : 1
						/// @DnDHash : 69DAF316
						/// @DnDParent : 45DEE379
						instance_destroy();
					}
				}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 35169446
				/// @DnDParent : 2C60BC7A
				else
				{
					/// @DnDAction : YoYo Games.Common.Function_Call
					/// @DnDVersion : 1
					/// @DnDHash : 5201BDAE
					/// @DnDParent : 35169446
					/// @DnDArgument : "function" "mino_no_opt"
					mino_no_opt();
				
					/// @DnDAction : YoYo Games.Common.Function_Call
					/// @DnDVersion : 1
					/// @DnDHash : 6BFDD012
					/// @DnDParent : 35169446
					/// @DnDArgument : "function" "noh_delete"
					noh_delete();
				
					/// @DnDAction : YoYo Games.Common.Function_Call
					/// @DnDVersion : 1
					/// @DnDHash : 75A973BE
					/// @DnDParent : 35169446
					/// @DnDArgument : "function" "mino_noh_select"
					mino_noh_select();
				
					/// @DnDAction : YoYo Games.Instances.Destroy_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 0A51F697
					/// @DnDParent : 35169446
					instance_destroy();
				}
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 3FEA5C24
			/// @DnDParent : 3365BC9D
			else
			{
				/// @DnDAction : YoYo Games.Common.Function_Call
				/// @DnDVersion : 1
				/// @DnDHash : 2D29B858
				/// @DnDParent : 3FEA5C24
				/// @DnDArgument : "function" "mino_no_opt"
				mino_no_opt();
			
				/// @DnDAction : YoYo Games.Common.Function_Call
				/// @DnDVersion : 1
				/// @DnDHash : 6D55FB5E
				/// @DnDParent : 3FEA5C24
				/// @DnDArgument : "function" "noh_delete"
				noh_delete();
			
				/// @DnDAction : YoYo Games.Common.Function_Call
				/// @DnDVersion : 1
				/// @DnDHash : 401DE451
				/// @DnDParent : 3FEA5C24
				/// @DnDArgument : "function" "mino_noh_select"
				mino_noh_select();
			
				/// @DnDAction : YoYo Games.Instances.Destroy_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 00BCCB40
				/// @DnDParent : 3FEA5C24
				instance_destroy();
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 7C974A08
		/// @DnDParent : 3E3DBB2A
		else
		{
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 4DCE28F3
			/// @DnDParent : 7C974A08
			/// @DnDArgument : "function" "mino_no_opt"
			mino_no_opt();
		
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 030F8EB1
			/// @DnDParent : 7C974A08
			/// @DnDArgument : "function" "noh_delete"
			noh_delete();
		
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 777F0E00
			/// @DnDParent : 7C974A08
			/// @DnDArgument : "function" "mino_noh_select"
			mino_noh_select();
		
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 41B14C19
			/// @DnDParent : 7C974A08
			instance_destroy();
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 5DBFA194
	/// @DnDParent : 4B10C068
	else
	{
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 02642C17
		/// @DnDParent : 5DBFA194
		/// @DnDArgument : "function" "mino_no_opt"
		mino_no_opt();
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 6FAE0CF9
		/// @DnDParent : 5DBFA194
		/// @DnDArgument : "function" "noh_delete"
		noh_delete();
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 0FA368C8
		/// @DnDParent : 5DBFA194
		/// @DnDArgument : "function" "mino_noh_select"
		mino_noh_select();
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 4EDA101F
		/// @DnDParent : 5DBFA194
		instance_destroy();
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 4CF07BC4
else
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 5DC95304
	/// @DnDParent : 4CF07BC4
	/// @DnDArgument : "code" "i = 0;$(13_10)delete_check = 0;$(13_10)organizer_checklist =$(13_10)[$(13_10)base_maze_ob,$(13_10)inert_cross_ob,$(13_10)inert_maze_ob,$(13_10)inert_puzzle_1_ob,$(13_10)inert_minotaur_ob,$(13_10)base_start_ob,$(13_10)base_puzzle_2_ob$(13_10)]$(13_10)$(13_10)for (i = 0; i < 7 ; i += 1)$(13_10){$(13_10)	if(place_meeting(x,y,organizer_checklist[i]))$(13_10)		{$(13_10)			instance_destroy();$(13_10)			i = 7;$(13_10)			delete_check = 1$(13_10)		}$(13_10)}$(13_10)"
	i = 0;
	delete_check = 0;
	organizer_checklist =
	[
	base_maze_ob,
	inert_cross_ob,
	inert_maze_ob,
	inert_puzzle_1_ob,
	inert_minotaur_ob,
	base_start_ob,
	base_puzzle_2_ob
	]
	
	for (i = 0; i < 7 ; i += 1)
	{
		if(place_meeting(x,y,organizer_checklist[i]))
			{
				instance_destroy();
				i = 7;
				delete_check = 1
			}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3A12BDAA
	/// @DnDParent : 4CF07BC4
	/// @DnDArgument : "var" "delete_check"
	if(delete_check == 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3893A3B3
		/// @DnDParent : 3A12BDAA
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "delay_timer"
		delay_timer = 1;
	
		/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 3BCBAF89
		/// @DnDParent : 3A12BDAA
		/// @DnDArgument : "code" "maze_piece_1 = [$(13_10)2,$(13_10)3,$(13_10)5,$(13_10)7,$(13_10)8$(13_10)];$(13_10)$(13_10)maze_piece = irandom(4)$(13_10)prev_map = 0$(13_10)"
		maze_piece_1 = [
		2,
		3,
		5,
		7,
		8
		];
		
		maze_piece = irandom(4)
		prev_map = 0
	
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 3E26B4B4
		/// @DnDParent : 3A12BDAA
		/// @DnDArgument : "value" "maze_piece_1[maze_piece]"
		/// @DnDArgument : "instvar" "11"
		image_index = maze_piece_1[maze_piece];
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6DAC64FB
		/// @DnDInput : 2
		/// @DnDParent : 3A12BDAA
		/// @DnDArgument : "expr" "13"
		/// @DnDArgument : "expr_1" "1"
		/// @DnDArgument : "var" "maze_wall"
		/// @DnDArgument : "var_1" "maze_object"
		maze_wall = 13;
		maze_object = 1;
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 0D764F6B
		/// @DnDParent : 3A12BDAA
		/// @DnDArgument : "script" "maze_wall_sc"
		/// @DnDSaveInfo : "script" "maze_wall_sc"
		script_execute(maze_wall_sc);
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 0791A619
		/// @DnDParent : 3A12BDAA
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "maze_wall_ob"
		/// @DnDArgument : "layer" ""Map_L""
		/// @DnDSaveInfo : "objectid" "maze_wall_ob"
		instance_create_layer(x + 0, y + 0, "Map_L", maze_wall_ob);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 53C7F7DD
		/// @DnDInput : 2
		/// @DnDParent : 3A12BDAA
		/// @DnDArgument : "expr" ""temp_save_2.ini""
		/// @DnDArgument : "expr_1" "1"
		/// @DnDArgument : "var" "save_name"
		/// @DnDArgument : "var_1" "maze_object"
		save_name = "temp_save_2.ini";
		maze_object = 1;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1ED46035
		/// @DnDParent : 3A12BDAA
		/// @DnDArgument : "var" "prev_map"
		/// @DnDArgument : "op" "2"
		if(prev_map > 0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 12F26098
			/// @DnDParent : 1ED46035
			/// @DnDArgument : "expr" "2"
			/// @DnDArgument : "var" "maze_object"
			maze_object = 2;
		}
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 7007D985
		/// @DnDParent : 3A12BDAA
		/// @DnDArgument : "script" "save_sc"
		/// @DnDSaveInfo : "script" "save_sc"
		script_execute(save_sc);
	}
}