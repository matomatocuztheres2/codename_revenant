/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 10438D08
/// @DnDArgument : "var" "global.turn_control"
if(global.turn_control == 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 59DB34CB
	/// @DnDParent : 10438D08
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "global.turn_control"
	global.turn_control = 1;

	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 4FAA77BA
	/// @DnDParent : 10438D08
	/// @DnDArgument : "obj" "subtitle_ob"
	/// @DnDSaveInfo : "obj" "subtitle_ob"
	var l4FAA77BA_0 = false;
	l4FAA77BA_0 = instance_exists(subtitle_ob);
	if(l4FAA77BA_0)
	{
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 3F791543
		/// @DnDApplyTo : {subtitle_ob}
		/// @DnDParent : 4FAA77BA
		with(subtitle_ob) instance_destroy();
	}

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 68F5C95A
	/// @DnDParent : 10438D08
	/// @DnDArgument : "code" "/*function to check if $(13_10)mino is building outside$(13_10)the bounds of the current$(13_10)maze area.$(13_10)*/$(13_10)$(13_10)$(13_10)$(13_10)mino_no_opt = function ()$(13_10){$(13_10)	i = 0;$(13_10)	noh_list = array_create(0);$(13_10)	$(13_10)	for (i=0; i < instance_number(maze_no_option_highlight_ob); i += 1)$(13_10)	{$(13_10)		noh_list[i] = instance_find(maze_no_option_highlight_ob,i)$(13_10)	}$(13_10)	$(13_10)	i = 0;$(13_10)	$(13_10)	for (i=0; i < instance_number(maze_highlight_ob); i += 1)$(13_10)	{$(13_10)		array_push(noh_list,(instance_find(maze_no_option_highlight_ob,i)))$(13_10)	}$(13_10)	$(13_10)	i = 0;$(13_10)	array_max = array_length(noh_list)$(13_10)	noh_x_list = array_create(0);$(13_10)	noh_y_list = array_create(0);$(13_10)	$(13_10)	if (array_max > 0)$(13_10)	{$(13_10)		for (i = 0; i < array_max; i += 1)$(13_10)		{$(13_10)			noh_x_list[i] = noh_list[i].x$(13_10)			noh_y_list[i] = noh_list[i].y$(13_10)		}$(13_10)	}$(13_10)	else$(13_10)	{$(13_10)		show_debug_message("Set end game protocol.");$(13_10)		global.aud_transfer = 13;$(13_10)		instance_create_layer(0,0,"Room_Start_L",subtitle_ob);$(13_10)		audio_play_sound(end_game_prot,0,0);$(13_10)		camera_ob.ix = 0;$(13_10)		camera_ob.iy = 0;$(13_10)		camera_ob.cam_state = 5;$(13_10)		camera_ob.cam_pos = 1;$(13_10)		room_goto(title_rm);$(13_10)	}$(13_10)	$(13_10)	i = 0;$(13_10)	$(13_10)}$(13_10)$(13_10)$(13_10)noh_delete = function ()$(13_10){$(13_10)organizer_checklist = $(13_10)[$(13_10)base_maze_ob,$(13_10)inert_cross_ob,$(13_10)inert_maze_ob,$(13_10)inert_puzzle_1_ob,$(13_10)base_start_ob,$(13_10)base_minotaur_ob,$(13_10)base_puzzle_1_ob,$(13_10)base_puzzle_2_ob$(13_10)]$(13_10)$(13_10)i1 = 0;$(13_10)$(13_10)	for (i = 0; i < array_max; i += 1)$(13_10)	{$(13_10)		while(i1 < 8)$(13_10)		if(place_meeting(noh_list[i].x,noh_list[i].y,organizer_checklist[i1]))$(13_10)		{$(13_10)			if(instance_exists(noh_list[i]))$(13_10)			{$(13_10)				instance_destroy(noh_list[i]);$(13_10)				array_pop(noh_x_list[i]);$(13_10)				array_pop(noh_y_list[i]);$(13_10)				array_pop(noh_list[i]);$(13_10)			}$(13_10)		}$(13_10)		else$(13_10)		{$(13_10)			i1 += 1;$(13_10)		}$(13_10)		i1 = 0;$(13_10)	}$(13_10)}$(13_10)$(13_10)$(13_10)mino_noh_select = function ()$(13_10){$(13_10)	i = 0;$(13_10)	$(13_10)	if(array_max > 0)$(13_10)	{$(13_10)		if(global.piece_selector = base_puzzle_1_ob)$(13_10)		{$(13_10)			for (i = 0; i < array_max; i += 1)$(13_10)			{$(13_10)			noh_list[i] = point_distance(noh_x_list[i],noh_y_list[i],global.puzz_1_x,global.puzz_1_y)$(13_10)			}$(13_10)		}$(13_10)	$(13_10)		if(global.piece_selector = base_minotaur_ob)$(13_10)		{$(13_10)			for (i = 0; i < array_max; i += 1)$(13_10)			{$(13_10)			noh_list[i] = point_distance(noh_x_list[i],noh_y_list[i],global.mino_x,global.mino_y)$(13_10)			}$(13_10)		}$(13_10)	$(13_10)		if(global.piece_selector = base_puzzle_2_ob)$(13_10)		{$(13_10)			for (i = 0; i < array_max; i += 1)$(13_10)			{$(13_10)			noh_list[i] = point_distance(noh_x_list[i],noh_y_list[i],global.puzz_2_x,global.puzz_2_y)$(13_10)			}$(13_10)		}$(13_10)		$(13_10)		i = 0;$(13_10)		dis_check = 144;$(13_10)		$(13_10)		while(dis_check < noh_list[i])$(13_10)		{$(13_10)			if (i < (array_max-1))$(13_10)			{$(13_10)				i += 1;$(13_10)			}$(13_10)			else$(13_10)			{$(13_10)				i = 0;$(13_10)				dis_check += 72;$(13_10)			}$(13_10)		}$(13_10)		$(13_10)		if (noh_x_list[i] = x)$(13_10)		{$(13_10)			if (noh_y_list[i] = y)$(13_10)			{$(13_10)				if(exit_l = 1)$(13_10)				{$(13_10)					instance_create_layer(x-144,y,"Map_L",base_maze_creator_ob);$(13_10)				}$(13_10)				else$(13_10)				{$(13_10)					if(exit_u = 2)$(13_10)					{$(13_10)						instance_create_layer(x,y-144,"Map_L",base_maze_creator_ob);$(13_10)					}$(13_10)					else$(13_10)					{$(13_10)						if(exit_r = 3)$(13_10)						{$(13_10)							instance_create_layer(x+144,y,"Map_L",base_maze_creator_ob);$(13_10)						}$(13_10)						else$(13_10)						{$(13_10)							if(exit_d = 4)$(13_10)							{$(13_10)								instance_create_layer(x,y+144,"Map_L",base_maze_creator_ob);$(13_10)							}$(13_10)							else$(13_10)							{$(13_10)								show_debug_message("Set end game protocol.");$(13_10)								global.aud_transfer = 13;$(13_10)								instance_create_layer(0,0,"Room_Start_L",subtitle_ob);$(13_10)								audio_play_sound(end_game_prot,0,0);$(13_10)								camera_ob.ix = 0;$(13_10)								camera_ob.iy = 0;$(13_10)								camera_ob.cam_state = 5;$(13_10)								camera_ob.cam_pos = 1;$(13_10)								room_goto(title_rm);	$(13_10)							}$(13_10)						}$(13_10)					}$(13_10)				}$(13_10)			}$(13_10)			else$(13_10)			{$(13_10)				instance_create_layer(noh_x_list[i],noh_y_list[i],"Map_L",inert_cross_ob);$(13_10)				instance_destroy(noh_list[i]);$(13_10)			}$(13_10)		}$(13_10)		else$(13_10)		{$(13_10)			instance_create_layer(noh_x_list[i],noh_y_list[i],"Map_L",inert_cross_ob);$(13_10)			instance_destroy(noh_list[i]);$(13_10)		}$(13_10)		$(13_10)		i = 0;$(13_10)		$(13_10)		for (i = 0; i < array_max; i += 1)$(13_10)		{$(13_10)		array_pop(noh_x_list);$(13_10)		array_pop(noh_y_list);$(13_10)		array_pop(noh_list);$(13_10)		}$(13_10)	$(13_10)		i = 0;$(13_10)		array_max = 0;$(13_10)	}$(13_10)	else$(13_10)	{$(13_10)		show_debug_message("Set end game protocol.");$(13_10)		global.aud_transfer = 13;$(13_10)		instance_create_layer(0,0,"Room_Start_L",subtitle_ob);$(13_10)		audio_play_sound(end_game_prot,0,0);$(13_10)		camera_ob.ix = 0;$(13_10)		camera_ob.iy = 0;$(13_10)		camera_ob.cam_state = 5;$(13_10)		camera_ob.cam_pos = 1;$(13_10)		room_goto(title_rm);$(13_10)	}$(13_10)	map_create = 0;$(13_10)}$(13_10)$(13_10)$(13_10)"
	/*function to check if 
	mino is building outside
	the bounds of the current
	maze area.
	*/
	
	
	
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
	
	i1 = 0;
	
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

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 3907DE55
	/// @DnDParent : 10438D08
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "base_maze_ob"
	/// @DnDSaveInfo : "object" "base_maze_ob"
	var l3907DE55_0 = instance_place(x + 0, y + 0, [base_maze_ob]);
	if ((l3907DE55_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 3E579B95
		/// @DnDParent : 3907DE55
		/// @DnDArgument : "function" "mino_no_opt"
		mino_no_opt();
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 523DD932
		/// @DnDParent : 3907DE55
		/// @DnDArgument : "function" "noh_delete"
		noh_delete();
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 70A5AE3C
		/// @DnDParent : 3907DE55
		/// @DnDArgument : "function" "mino_noh_select"
		mino_noh_select();
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 77C3E659
		/// @DnDParent : 3907DE55
		instance_destroy();
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 322CEAD6
	/// @DnDParent : 10438D08
	else
	{
		/// @DnDAction : YoYo Games.Collisions.If_Object_At
		/// @DnDVersion : 1.1
		/// @DnDHash : 3F013EB0
		/// @DnDParent : 322CEAD6
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "object" "base_start_ob"
		/// @DnDSaveInfo : "object" "base_start_ob"
		var l3F013EB0_0 = instance_place(x + 0, y + 0, [base_start_ob]);
		if ((l3F013EB0_0 > 0))
		{
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 334477AF
			/// @DnDParent : 3F013EB0
			/// @DnDArgument : "function" "mino_no_opt"
			mino_no_opt();
		
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 6F631385
			/// @DnDParent : 3F013EB0
			/// @DnDArgument : "function" "noh_delete"
			noh_delete();
		
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 63F30AD6
			/// @DnDParent : 3F013EB0
			/// @DnDArgument : "function" "mino_noh_select"
			mino_noh_select();
		
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 503B95C2
			/// @DnDParent : 3F013EB0
			instance_destroy();
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 6D4A8CA0
		/// @DnDParent : 322CEAD6
		else
		{
			/// @DnDAction : YoYo Games.Collisions.If_Object_At
			/// @DnDVersion : 1.1
			/// @DnDHash : 57D6BD56
			/// @DnDParent : 6D4A8CA0
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "object" "base_puzzle_1_ob"
			/// @DnDSaveInfo : "object" "base_puzzle_1_ob"
			var l57D6BD56_0 = instance_place(x + 0, y + 0, [base_puzzle_1_ob]);
			if ((l57D6BD56_0 > 0))
			{
				/// @DnDAction : YoYo Games.Common.Function_Call
				/// @DnDVersion : 1
				/// @DnDHash : 5C5AEBF4
				/// @DnDParent : 57D6BD56
				/// @DnDArgument : "function" "mino_no_opt"
				mino_no_opt();
			
				/// @DnDAction : YoYo Games.Common.Function_Call
				/// @DnDVersion : 1
				/// @DnDHash : 56B6D54A
				/// @DnDParent : 57D6BD56
				/// @DnDArgument : "function" "noh_delete"
				noh_delete();
			
				/// @DnDAction : YoYo Games.Common.Function_Call
				/// @DnDVersion : 1
				/// @DnDHash : 0460C619
				/// @DnDParent : 57D6BD56
				/// @DnDArgument : "function" "mino_noh_select"
				mino_noh_select();
			
				/// @DnDAction : YoYo Games.Instances.Destroy_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 263B4CD2
				/// @DnDParent : 57D6BD56
				instance_destroy();
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 61C04CB3
			/// @DnDParent : 6D4A8CA0
			else
			{
				/// @DnDAction : YoYo Games.Collisions.If_Object_At
				/// @DnDVersion : 1.1
				/// @DnDHash : 758AD1B1
				/// @DnDParent : 61C04CB3
				/// @DnDArgument : "x_relative" "1"
				/// @DnDArgument : "y_relative" "1"
				/// @DnDArgument : "object" "base_puzzle_2_ob"
				/// @DnDSaveInfo : "object" "base_puzzle_2_ob"
				var l758AD1B1_0 = instance_place(x + 0, y + 0, [base_puzzle_2_ob]);
				if ((l758AD1B1_0 > 0))
				{
					/// @DnDAction : YoYo Games.Common.Function_Call
					/// @DnDVersion : 1
					/// @DnDHash : 438699F0
					/// @DnDParent : 758AD1B1
					/// @DnDArgument : "function" "mino_no_opt"
					mino_no_opt();
				
					/// @DnDAction : YoYo Games.Common.Function_Call
					/// @DnDVersion : 1
					/// @DnDHash : 5C0A7CAB
					/// @DnDParent : 758AD1B1
					/// @DnDArgument : "function" "noh_delete"
					noh_delete();
				
					/// @DnDAction : YoYo Games.Common.Function_Call
					/// @DnDVersion : 1
					/// @DnDHash : 088B891D
					/// @DnDParent : 758AD1B1
					/// @DnDArgument : "function" "mino_noh_select"
					mino_noh_select();
				
					/// @DnDAction : YoYo Games.Instances.Destroy_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 59B05238
					/// @DnDParent : 758AD1B1
					instance_destroy();
				}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 59BE8682
				/// @DnDParent : 61C04CB3
				else
				{
					/// @DnDAction : YoYo Games.Collisions.If_Object_At
					/// @DnDVersion : 1.1
					/// @DnDHash : 458B46AD
					/// @DnDParent : 59BE8682
					/// @DnDArgument : "x_relative" "1"
					/// @DnDArgument : "y_relative" "1"
					/// @DnDArgument : "object" "base_minotaur_ob"
					/// @DnDSaveInfo : "object" "base_minotaur_ob"
					var l458B46AD_0 = instance_place(x + 0, y + 0, [base_minotaur_ob]);
					if ((l458B46AD_0 > 0))
					{
						/// @DnDAction : YoYo Games.Common.Function_Call
						/// @DnDVersion : 1
						/// @DnDHash : 200676C0
						/// @DnDParent : 458B46AD
						/// @DnDArgument : "function" "mino_no_opt"
						mino_no_opt();
					
						/// @DnDAction : YoYo Games.Common.Function_Call
						/// @DnDVersion : 1
						/// @DnDHash : 2A166597
						/// @DnDParent : 458B46AD
						/// @DnDArgument : "function" "noh_delete"
						noh_delete();
					
						/// @DnDAction : YoYo Games.Common.Function_Call
						/// @DnDVersion : 1
						/// @DnDHash : 2CC03990
						/// @DnDParent : 458B46AD
						/// @DnDArgument : "function" "mino_noh_select"
						mino_noh_select();
					
						/// @DnDAction : YoYo Games.Instances.Destroy_Instance
						/// @DnDVersion : 1
						/// @DnDHash : 50D01506
						/// @DnDParent : 458B46AD
						instance_destroy();
					}
				
					/// @DnDAction : YoYo Games.Common.Else
					/// @DnDVersion : 1
					/// @DnDHash : 61FDFCD3
					/// @DnDParent : 59BE8682
					else
					{
						/// @DnDAction : YoYo Games.Collisions.If_Object_At
						/// @DnDVersion : 1.1
						/// @DnDHash : 2B66FC87
						/// @DnDParent : 61FDFCD3
						/// @DnDArgument : "x_relative" "1"
						/// @DnDArgument : "y_relative" "1"
						/// @DnDArgument : "object" "invis_wall_rm_ob"
						/// @DnDSaveInfo : "object" "invis_wall_rm_ob"
						var l2B66FC87_0 = instance_place(x + 0, y + 0, [invis_wall_rm_ob]);
						if ((l2B66FC87_0 > 0))
						{
							/// @DnDAction : YoYo Games.Common.Function_Call
							/// @DnDVersion : 1
							/// @DnDHash : 124F5920
							/// @DnDParent : 2B66FC87
							/// @DnDArgument : "function" "mino_no_opt"
							mino_no_opt();
						
							/// @DnDAction : YoYo Games.Common.Function_Call
							/// @DnDVersion : 1
							/// @DnDHash : 46BB0A05
							/// @DnDParent : 2B66FC87
							/// @DnDArgument : "function" "noh_delete"
							noh_delete();
						
							/// @DnDAction : YoYo Games.Common.Function_Call
							/// @DnDVersion : 1
							/// @DnDHash : 26E5F01B
							/// @DnDParent : 2B66FC87
							/// @DnDArgument : "function" "mino_noh_select"
							mino_noh_select();
						
							/// @DnDAction : YoYo Games.Instances.Destroy_Instance
							/// @DnDVersion : 1
							/// @DnDHash : 6162330A
							/// @DnDParent : 2B66FC87
							instance_destroy();
						}
					
						/// @DnDAction : YoYo Games.Common.Else
						/// @DnDVersion : 1
						/// @DnDHash : 74BFA85B
						/// @DnDParent : 61FDFCD3
						else
						{
							/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
							/// @DnDVersion : 1
							/// @DnDHash : 118DDC94
							/// @DnDParent : 74BFA85B
							/// @DnDArgument : "speed" "0"
							image_speed = 0;
						
							/// @DnDAction : YoYo Games.Common.Variable
							/// @DnDVersion : 1
							/// @DnDHash : 5A0B14D3
							/// @DnDInput : 2
							/// @DnDParent : 74BFA85B
							/// @DnDArgument : "expr" "y"
							/// @DnDArgument : "expr_1" "x"
							/// @DnDArgument : "var" "global.last_map_y"
							/// @DnDArgument : "var_1" "global.last_map_x"
							global.last_map_y = y;
							global.last_map_x = x;
						
							/// @DnDAction : YoYo Games.Common.Execute_Script
							/// @DnDVersion : 1.1
							/// @DnDHash : 69175C54
							/// @DnDParent : 74BFA85B
							/// @DnDArgument : "script" "maze_piece_name_sc"
							/// @DnDSaveInfo : "script" "maze_piece_name_sc"
							script_execute(maze_piece_name_sc);
						
							/// @DnDAction : YoYo Games.Common.Variable
							/// @DnDVersion : 1
							/// @DnDHash : 3D0993B0
							/// @DnDInput : 4
							/// @DnDParent : 74BFA85B
							/// @DnDArgument : "expr" "global.map_tap_transfer"
							/// @DnDArgument : "expr_2" "level_map_selector[map_type][prev_map]"
							/// @DnDArgument : "expr_3" "sprite_get_number(map_name)-1"
							/// @DnDArgument : "var" "prev_map"
							/// @DnDArgument : "var_1" "map_select"
							/// @DnDArgument : "var_2" "map_name"
							/// @DnDArgument : "var_3" "map_max"
							prev_map = global.map_tap_transfer;
							map_select = 0;
							map_name = level_map_selector[map_type][prev_map];
							map_max = sprite_get_number(map_name)-1;
						
							/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
							/// @DnDVersion : 1
							/// @DnDHash : 00C0507F
							/// @DnDParent : 74BFA85B
							/// @DnDArgument : "value" "map_name"
							/// @DnDArgument : "instvar" "10"
							sprite_index = map_name;
						
							/// @DnDAction : YoYo Games.Common.Variable
							/// @DnDVersion : 1
							/// @DnDHash : 51BCE01C
							/// @DnDInput : 4
							/// @DnDParent : 74BFA85B
							/// @DnDArgument : "expr" "irandom(map_max)"
							/// @DnDArgument : "expr_1" "irandom(map_max)"
							/// @DnDArgument : "expr_2" "irandom(map_max)"
							/// @DnDArgument : "var" "mino_map_1"
							/// @DnDArgument : "var_1" "mino_map_2"
							/// @DnDArgument : "var_2" "mino_map_3"
							/// @DnDArgument : "var_3" "mino_map_select"
							mino_map_1 = irandom(map_max);
							mino_map_2 = irandom(map_max);
							mino_map_3 = irandom(map_max);
							mino_map_select = 0;
						
							/// @DnDAction : YoYo Games.Common.Execute_Script
							/// @DnDVersion : 1.1
							/// @DnDHash : 419BB051
							/// @DnDParent : 74BFA85B
							/// @DnDArgument : "script" "mino_map_selector_sc"
							/// @DnDSaveInfo : "script" "mino_map_selector_sc"
							script_execute(mino_map_selector_sc);
						
							/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
							/// @DnDVersion : 1
							/// @DnDHash : 7EB996A7
							/// @DnDParent : 74BFA85B
							/// @DnDArgument : "value" "mino_map_select"
							/// @DnDArgument : "instvar" "11"
							image_index = mino_map_select;
						
							/// @DnDAction : YoYo Games.Common.Variable
							/// @DnDVersion : 1
							/// @DnDHash : 3F281428
							/// @DnDParent : 74BFA85B
							/// @DnDArgument : "expr" "mino_map_select"
							/// @DnDArgument : "var" "global.temp_tap_transfer"
							global.temp_tap_transfer = mino_map_select;
						
							/// @DnDAction : YoYo Games.Common.Variable
							/// @DnDVersion : 1
							/// @DnDHash : 32A597ED
							/// @DnDParent : 74BFA85B
							/// @DnDArgument : "expr" "2"
							/// @DnDArgument : "var" "global.turn_control"
							global.turn_control = 2;
						
							/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
							/// @DnDVersion : 1
							/// @DnDHash : 6D7A4921
							/// @DnDParent : 74BFA85B
							/// @DnDArgument : "obj" "maze_no_option_highlight_ob"
							/// @DnDSaveInfo : "obj" "maze_no_option_highlight_ob"
							var l6D7A4921_0 = false;
							l6D7A4921_0 = instance_exists(maze_no_option_highlight_ob);
							if(l6D7A4921_0)
							{
								/// @DnDAction : YoYo Games.Common.Variable
								/// @DnDVersion : 1
								/// @DnDHash : 5EA77C34
								/// @DnDParent : 6D7A4921
								/// @DnDArgument : "var" "maze_no_option_highlight_ob.box_show"
								maze_no_option_highlight_ob.box_show = 0;
							}
						
							/// @DnDAction : YoYo Games.Instances.Create_Instance
							/// @DnDVersion : 1
							/// @DnDHash : 1D3C0C55
							/// @DnDParent : 74BFA85B
							/// @DnDArgument : "xpos_relative" "1"
							/// @DnDArgument : "ypos_relative" "1"
							/// @DnDArgument : "objectid" "base_maze_ob"
							/// @DnDArgument : "layer" ""Map_L""
							/// @DnDSaveInfo : "objectid" "base_maze_ob"
							instance_create_layer(x + 0, y + 0, "Map_L", base_maze_ob);
						
							/// @DnDAction : YoYo Games.Instances.Destroy_Instance
							/// @DnDVersion : 1
							/// @DnDHash : 73705F6D
							/// @DnDParent : 74BFA85B
							instance_destroy();
						}
					}
				}
			}
		}
	}
}