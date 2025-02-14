/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 571123FD
/// @DnDArgument : "var" "state"
/// @DnDArgument : "value" "1"
if(state == 1)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 44D567FB
	/// @DnDInput : 2
	/// @DnDParent : 571123FD
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "expr_1" ".025"
	/// @DnDArgument : "expr_relative_1" "1"
	/// @DnDArgument : "var" "timer"
	/// @DnDArgument : "var_1" "alpha"
	timer += 1;
	alpha += .025;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 629657C5
	/// @DnDParent : 571123FD
	/// @DnDArgument : "var" "timer"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "duration"
	if(timer > duration)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 61717611
		/// @DnDInput : 2
		/// @DnDParent : 629657C5
		/// @DnDArgument : "expr" "2"
		/// @DnDArgument : "expr_1" "1"
		/// @DnDArgument : "var" "state"
		/// @DnDArgument : "var_1" "duration"
		state = 2;
		duration = 1;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 1781BFA1
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 354BC8C3
	/// @DnDParent : 1781BFA1
	/// @DnDArgument : "var" "state"
	/// @DnDArgument : "value" "2"
	if(state == 2)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4BE0BA1E
		/// @DnDInput : 2
		/// @DnDParent : 354BC8C3
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "expr_1" "-.025"
		/// @DnDArgument : "expr_relative_1" "1"
		/// @DnDArgument : "var" "timer"
		/// @DnDArgument : "var_1" "alpha"
		timer += -1;
		alpha += -.025;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0672A9FB
		/// @DnDParent : 354BC8C3
		/// @DnDArgument : "var" "timer"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "duration"
		if(timer < duration)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 28D30881
			/// @DnDParent : 0672A9FB
			/// @DnDArgument : "expr" "3"
			/// @DnDArgument : "var" "state"
			state = 3;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 101BB7D1
	/// @DnDParent : 1781BFA1
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 47190DA3
		/// @DnDParent : 101BB7D1
		/// @DnDArgument : "var" "state"
		/// @DnDArgument : "value" "3"
		if(state == 3)
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3C34AAB2
			/// @DnDParent : 47190DA3
			/// @DnDArgument : "var" "global.play_diff_level"
			/// @DnDArgument : "value" "1.2"
			if(global.play_diff_level == 1.2)
			{
				/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
				/// @DnDVersion : 1
				/// @DnDHash : 4D14B9AE
				/// @DnDParent : 3C34AAB2
				/// @DnDArgument : "soundid" "tut_6"
				/// @DnDSaveInfo : "soundid" "tut_6"
				var l4D14B9AE_0 = tut_6;
				if (audio_is_playing(l4D14B9AE_0))
				{
					/// @DnDAction : YoYo Games.Instances.Destroy_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 64C85B5B
					/// @DnDApplyTo : {subtitle_ob}
					/// @DnDParent : 4D14B9AE
					with(subtitle_ob) instance_destroy();
				
					/// @DnDAction : YoYo Games.Audio.Stop_Audio
					/// @DnDVersion : 1
					/// @DnDHash : 79776F7B
					/// @DnDParent : 4D14B9AE
					/// @DnDArgument : "soundid" "tut_6"
					/// @DnDSaveInfo : "soundid" "tut_6"
					audio_stop_sound(tut_6);
				}
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 021C7D25
				/// @DnDParent : 3C34AAB2
				/// @DnDArgument : "expr" "7"
				/// @DnDArgument : "var" "global.aud_transfer"
				global.aud_transfer = 7;
			
				/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
				/// @DnDVersion : 1
				/// @DnDHash : 572D4803
				/// @DnDParent : 3C34AAB2
				/// @DnDArgument : "obj" "subtitle_ob"
				/// @DnDSaveInfo : "obj" "subtitle_ob"
				var l572D4803_0 = false;
				l572D4803_0 = instance_exists(subtitle_ob);
				if(l572D4803_0)
				{
					/// @DnDAction : YoYo Games.Instances.Destroy_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 7A39FC77
					/// @DnDApplyTo : {subtitle_ob}
					/// @DnDParent : 572D4803
					with(subtitle_ob) instance_destroy();
				}
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 10C52ACB
				/// @DnDParent : 3C34AAB2
				/// @DnDArgument : "var" "global.so_subt"
				/// @DnDArgument : "value" "1"
				if(global.so_subt == 1)
				{
					/// @DnDAction : YoYo Games.Instances.Create_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 1B7BC750
					/// @DnDParent : 10C52ACB
					/// @DnDArgument : "objectid" "subtitle_ob"
					/// @DnDArgument : "layer" ""Room_Start_L""
					/// @DnDSaveInfo : "objectid" "subtitle_ob"
					instance_create_layer(0, 0, "Room_Start_L", subtitle_ob);
				}
			
				/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
				/// @DnDVersion : 1
				/// @DnDHash : 6E3CAE29
				/// @DnDParent : 3C34AAB2
				/// @DnDArgument : "obj" "subtitle_ob"
				/// @DnDSaveInfo : "obj" "subtitle_ob"
				var l6E3CAE29_0 = false;
				l6E3CAE29_0 = instance_exists(subtitle_ob);
				if(l6E3CAE29_0)
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 3FF6A58E
					/// @DnDInput : 2
					/// @DnDParent : 6E3CAE29
					/// @DnDArgument : "expr" "camera_ob.x+40"
					/// @DnDArgument : "expr_1" "camera_ob.y+280"
					/// @DnDArgument : "var" "subtitle_ob.x"
					/// @DnDArgument : "var_1" "subtitle_ob.y"
					subtitle_ob.x = camera_ob.x+40;
					subtitle_ob.y = camera_ob.y+280;
				}
			
				/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1.1
				/// @DnDHash : 0BBF0FDC
				/// @DnDParent : 3C34AAB2
				/// @DnDArgument : "soundid" "tut_7"
				/// @DnDSaveInfo : "soundid" "tut_7"
				audio_play_sound(tut_7, 0, 0, 1.0, undefined, 1.0);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 3AB5AA2D
				/// @DnDInput : 2
				/// @DnDParent : 3C34AAB2
				/// @DnDArgument : "expr" "1"
				/// @DnDArgument : "expr_1" "1"
				/// @DnDArgument : "var" "global.play_diff_level"
				/// @DnDArgument : "var_1" "play_view_port_ob.first_build_tut"
				global.play_diff_level = 1;
				play_view_port_ob.first_build_tut = 1;
			
				/// @DnDAction : YoYo Games.Instances.Destroy_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 6B019EFB
				/// @DnDParent : 3C34AAB2
				instance_destroy();
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 53800DCD
			/// @DnDParent : 47190DA3
			else
			{
				/// @DnDAction : YoYo Games.Instances.Destroy_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 46BCA37B
				/// @DnDParent : 53800DCD
				instance_destroy();
			}
		}
	}
}