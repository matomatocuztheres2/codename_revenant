/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0E21EEB3
/// @DnDArgument : "var" "global.piece_selector"
/// @DnDArgument : "value" "base_start_ob"
if(global.piece_selector == base_start_ob)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 78E5FE6C
	/// @DnDParent : 0E21EEB3
	instance_destroy();
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 06BECAB8
else
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 66560D44
	/// @DnDParent : 06BECAB8
	/// @DnDArgument : "obj" "base_puzzle_1_ob"
	/// @DnDSaveInfo : "obj" "base_puzzle_1_ob"
	var l66560D44_0 = false;
	l66560D44_0 = instance_exists(base_puzzle_1_ob);
	if(l66560D44_0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 09CA1801
		/// @DnDParent : 66560D44
		/// @DnDArgument : "var" "global.piece_selector"
		/// @DnDArgument : "value" "base_puzzle_1_ob"
		if(global.piece_selector == base_puzzle_1_ob)
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2C7C2A30
			/// @DnDParent : 09CA1801
			/// @DnDArgument : "var" "x"
			/// @DnDArgument : "value" "global.puzz_1_x"
			if(x == global.puzz_1_x)
			{
			
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 5020D0D7
			/// @DnDParent : 09CA1801
			else
			{
				/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
				/// @DnDVersion : 1
				/// @DnDHash : 6A9C0AEC
				/// @DnDInput : 3
				/// @DnDParent : 5020D0D7
				/// @DnDArgument : "value" "global.puzz_1_x"
				/// @DnDArgument : "value_1" "global.puzz_1_y"
				/// @DnDArgument : "value_2" "base_puzzle_1_ob.depth-10"
				/// @DnDArgument : "instvar_1" "1"
				/// @DnDArgument : "instvar_2" "9"
				x = global.puzz_1_x;
				y = global.puzz_1_y;
				depth = base_puzzle_1_ob.depth-10;
			}
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 30D5C1B4
	/// @DnDParent : 06BECAB8
	else
	{
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 34E7A083
		/// @DnDParent : 30D5C1B4
		/// @DnDArgument : "obj" "base_minotaur_ob"
		/// @DnDSaveInfo : "obj" "base_minotaur_ob"
		var l34E7A083_0 = false;
		l34E7A083_0 = instance_exists(base_minotaur_ob);
		if(l34E7A083_0)
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 05AD0C27
			/// @DnDParent : 34E7A083
			/// @DnDArgument : "var" "global.piece_selector"
			/// @DnDArgument : "value" "base_minotaur_ob"
			if(global.piece_selector == base_minotaur_ob)
			{
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 65DD4CAB
				/// @DnDParent : 05AD0C27
				/// @DnDArgument : "var" "x"
				/// @DnDArgument : "value" "global.mino_x"
				if(x == global.mino_x)
				{
				
				}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 47461D23
				/// @DnDParent : 05AD0C27
				else
				{
					/// @DnDAction : YoYo Games.Common.If_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 6D04517D
					/// @DnDParent : 47461D23
					/// @DnDArgument : "var" "global.play_diff_level"
					/// @DnDArgument : "value" "1.1"
					if(global.play_diff_level == 1.1)
					{
						/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
						/// @DnDVersion : 1
						/// @DnDHash : 04525583
						/// @DnDParent : 6D04517D
						/// @DnDArgument : "soundid" "tut_3"
						/// @DnDSaveInfo : "soundid" "tut_3"
						var l04525583_0 = tut_3;
						if (audio_is_playing(l04525583_0))
						{
							/// @DnDAction : YoYo Games.Instances.Destroy_Instance
							/// @DnDVersion : 1
							/// @DnDHash : 7AFEDB49
							/// @DnDApplyTo : {subtitle_ob}
							/// @DnDParent : 04525583
							with(subtitle_ob) instance_destroy();
						
							/// @DnDAction : YoYo Games.Audio.Stop_Audio
							/// @DnDVersion : 1
							/// @DnDHash : 62B06520
							/// @DnDParent : 04525583
							/// @DnDArgument : "soundid" "tut_3"
							/// @DnDSaveInfo : "soundid" "tut_3"
							audio_stop_sound(tut_3);
						}
					
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 0F142F7C
						/// @DnDParent : 6D04517D
						/// @DnDArgument : "expr" "4"
						/// @DnDArgument : "var" "global.aud_transfer"
						global.aud_transfer = 4;
					
						/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
						/// @DnDVersion : 1
						/// @DnDHash : 1C9C882F
						/// @DnDParent : 6D04517D
						/// @DnDArgument : "obj" "subtitle_ob"
						/// @DnDSaveInfo : "obj" "subtitle_ob"
						var l1C9C882F_0 = false;
						l1C9C882F_0 = instance_exists(subtitle_ob);
						if(l1C9C882F_0)
						{
							/// @DnDAction : YoYo Games.Instances.Destroy_Instance
							/// @DnDVersion : 1
							/// @DnDHash : 7A792E11
							/// @DnDApplyTo : {subtitle_ob}
							/// @DnDParent : 1C9C882F
							with(subtitle_ob) instance_destroy();
						}
					
						/// @DnDAction : YoYo Games.Common.If_Variable
						/// @DnDVersion : 1
						/// @DnDHash : 1A546F63
						/// @DnDParent : 6D04517D
						/// @DnDArgument : "var" "global.so_subt"
						/// @DnDArgument : "value" "1"
						if(global.so_subt == 1)
						{
							/// @DnDAction : YoYo Games.Instances.Create_Instance
							/// @DnDVersion : 1
							/// @DnDHash : 7417D0E2
							/// @DnDParent : 1A546F63
							/// @DnDArgument : "objectid" "subtitle_ob"
							/// @DnDArgument : "layer" ""Room_Start_L""
							/// @DnDSaveInfo : "objectid" "subtitle_ob"
							instance_create_layer(0, 0, "Room_Start_L", subtitle_ob);
						}
					
						/// @DnDAction : YoYo Games.Audio.Play_Audio
						/// @DnDVersion : 1.1
						/// @DnDHash : 7BCF3E5B
						/// @DnDParent : 6D04517D
						/// @DnDArgument : "soundid" "tut_4"
						/// @DnDSaveInfo : "soundid" "tut_4"
						audio_play_sound(tut_4, 0, 0, 1.0, undefined, 1.0);
					
						/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
						/// @DnDVersion : 1
						/// @DnDHash : 22E15FBB
						/// @DnDInput : 3
						/// @DnDParent : 6D04517D
						/// @DnDArgument : "value" "global.mino_x"
						/// @DnDArgument : "value_1" "global.mino_y"
						/// @DnDArgument : "value_2" "base_minotaur_ob.depth-10"
						/// @DnDArgument : "instvar_1" "1"
						/// @DnDArgument : "instvar_2" "9"
						x = global.mino_x;
						y = global.mino_y;
						depth = base_minotaur_ob.depth-10;
					
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 20539A43
						/// @DnDParent : 6D04517D
						/// @DnDArgument : "expr" "1.2"
						/// @DnDArgument : "var" "global.play_diff_level"
						global.play_diff_level = 1.2;
					}
				
					/// @DnDAction : YoYo Games.Common.Else
					/// @DnDVersion : 1
					/// @DnDHash : 5C3A05A7
					/// @DnDParent : 47461D23
					else
					{
						/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
						/// @DnDVersion : 1
						/// @DnDHash : 4536E290
						/// @DnDInput : 3
						/// @DnDParent : 5C3A05A7
						/// @DnDArgument : "value" "global.mino_x"
						/// @DnDArgument : "value_1" "global.mino_y"
						/// @DnDArgument : "value_2" "base_minotaur_ob.depth-10"
						/// @DnDArgument : "instvar_1" "1"
						/// @DnDArgument : "instvar_2" "9"
						x = global.mino_x;
						y = global.mino_y;
						depth = base_minotaur_ob.depth-10;
					}
				}
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 044D2D42
		/// @DnDParent : 30D5C1B4
		else
		{
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 7A9EF06F
			/// @DnDParent : 044D2D42
			/// @DnDArgument : "obj" "base_puzzle_2_ob"
			/// @DnDSaveInfo : "obj" "base_puzzle_2_ob"
			var l7A9EF06F_0 = false;
			l7A9EF06F_0 = instance_exists(base_puzzle_2_ob);
			if(l7A9EF06F_0)
			{
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 4ECCD2B0
				/// @DnDParent : 7A9EF06F
				/// @DnDArgument : "var" "global.piece_selector"
				/// @DnDArgument : "value" "base_puzzle_2_ob"
				if(global.piece_selector == base_puzzle_2_ob)
				{
					/// @DnDAction : YoYo Games.Common.If_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 60AEF646
					/// @DnDParent : 4ECCD2B0
					/// @DnDArgument : "var" "x"
					/// @DnDArgument : "value" "global.puzz_2_x"
					if(x == global.puzz_2_x)
					{
					
					}
				
					/// @DnDAction : YoYo Games.Common.Else
					/// @DnDVersion : 1
					/// @DnDHash : 3782B34B
					/// @DnDParent : 4ECCD2B0
					else
					{
						/// @DnDAction : YoYo Games.Common.If_Variable
						/// @DnDVersion : 1
						/// @DnDHash : 4E3157BE
						/// @DnDParent : 3782B34B
						/// @DnDArgument : "var" "global.play_diff_level"
						/// @DnDArgument : "value" "1.2"
						if(global.play_diff_level == 1.2)
						{
							/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
							/// @DnDVersion : 1
							/// @DnDHash : 3B783A3B
							/// @DnDParent : 4E3157BE
							/// @DnDArgument : "soundid" "tut_4"
							/// @DnDSaveInfo : "soundid" "tut_4"
							var l3B783A3B_0 = tut_4;
							if (audio_is_playing(l3B783A3B_0))
							{
								/// @DnDAction : YoYo Games.Instances.Destroy_Instance
								/// @DnDVersion : 1
								/// @DnDHash : 0F8FBA4B
								/// @DnDApplyTo : {subtitle_ob}
								/// @DnDParent : 3B783A3B
								with(subtitle_ob) instance_destroy();
							
								/// @DnDAction : YoYo Games.Audio.Stop_Audio
								/// @DnDVersion : 1
								/// @DnDHash : 1E966DAD
								/// @DnDParent : 3B783A3B
								/// @DnDArgument : "soundid" "tut_4"
								/// @DnDSaveInfo : "soundid" "tut_4"
								audio_stop_sound(tut_4);
							}
						
							/// @DnDAction : YoYo Games.Common.Variable
							/// @DnDVersion : 1
							/// @DnDHash : 695A3652
							/// @DnDParent : 4E3157BE
							/// @DnDArgument : "expr" "5"
							/// @DnDArgument : "var" "global.aud_transfer"
							global.aud_transfer = 5;
						
							/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
							/// @DnDVersion : 1
							/// @DnDHash : 4F522DB7
							/// @DnDParent : 4E3157BE
							/// @DnDArgument : "obj" "subtitle_ob"
							/// @DnDSaveInfo : "obj" "subtitle_ob"
							var l4F522DB7_0 = false;
							l4F522DB7_0 = instance_exists(subtitle_ob);
							if(l4F522DB7_0)
							{
								/// @DnDAction : YoYo Games.Instances.Destroy_Instance
								/// @DnDVersion : 1
								/// @DnDHash : 739B9E05
								/// @DnDApplyTo : {subtitle_ob}
								/// @DnDParent : 4F522DB7
								with(subtitle_ob) instance_destroy();
							}
						
							/// @DnDAction : YoYo Games.Common.If_Variable
							/// @DnDVersion : 1
							/// @DnDHash : 7DADBA1B
							/// @DnDParent : 4E3157BE
							/// @DnDArgument : "var" "global.so_subt"
							/// @DnDArgument : "value" "1"
							if(global.so_subt == 1)
							{
								/// @DnDAction : YoYo Games.Instances.Create_Instance
								/// @DnDVersion : 1
								/// @DnDHash : 6D23BE50
								/// @DnDParent : 7DADBA1B
								/// @DnDArgument : "objectid" "subtitle_ob"
								/// @DnDArgument : "layer" ""Room_Start_L""
								/// @DnDSaveInfo : "objectid" "subtitle_ob"
								instance_create_layer(0, 0, "Room_Start_L", subtitle_ob);
							}
						
							/// @DnDAction : YoYo Games.Audio.Play_Audio
							/// @DnDVersion : 1.1
							/// @DnDHash : 3D176CAE
							/// @DnDParent : 4E3157BE
							/// @DnDArgument : "soundid" "tut_5"
							/// @DnDSaveInfo : "soundid" "tut_5"
							audio_play_sound(tut_5, 0, 0, 1.0, undefined, 1.0);
						
							/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
							/// @DnDVersion : 1
							/// @DnDHash : 06DF6035
							/// @DnDInput : 3
							/// @DnDParent : 4E3157BE
							/// @DnDArgument : "value" "global.puzz_2_x"
							/// @DnDArgument : "value_1" "global.puzz_2_y"
							/// @DnDArgument : "value_2" "base_puzzle_2_ob.depth-10"
							/// @DnDArgument : "instvar_1" "1"
							/// @DnDArgument : "instvar_2" "9"
							x = global.puzz_2_x;
							y = global.puzz_2_y;
							depth = base_puzzle_2_ob.depth-10;
						}
					
						/// @DnDAction : YoYo Games.Common.Else
						/// @DnDVersion : 1
						/// @DnDHash : 647DD9E5
						/// @DnDParent : 3782B34B
						else
						{
							/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
							/// @DnDVersion : 1
							/// @DnDHash : 579029A9
							/// @DnDInput : 3
							/// @DnDParent : 647DD9E5
							/// @DnDArgument : "value" "global.puzz_2_x"
							/// @DnDArgument : "value_1" "global.puzz_2_y"
							/// @DnDArgument : "value_2" "base_puzzle_2_ob.depth-10"
							/// @DnDArgument : "instvar_1" "1"
							/// @DnDArgument : "instvar_2" "9"
							x = global.puzz_2_x;
							y = global.puzz_2_y;
							depth = base_puzzle_2_ob.depth-10;
						}
					}
				}
			}
		}
	}
}