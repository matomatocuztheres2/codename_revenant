/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 22402088
/// @DnDArgument : "var" "global.play_diff_level"
/// @DnDArgument : "value" "1"
if(global.play_diff_level == 1)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5BEF3412
	/// @DnDParent : 22402088
	/// @DnDArgument : "var" "coin_count"
	if(coin_count == 0)
	{
		/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
		/// @DnDVersion : 1
		/// @DnDHash : 4CA91007
		/// @DnDParent : 5BEF3412
		/// @DnDArgument : "soundid" "tut_7"
		/// @DnDSaveInfo : "soundid" "tut_7"
		var l4CA91007_0 = tut_7;
		if (audio_is_playing(l4CA91007_0))
		{
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 37343EC5
			/// @DnDApplyTo : {subtitle_ob}
			/// @DnDParent : 4CA91007
			with(subtitle_ob) instance_destroy();
		
			/// @DnDAction : YoYo Games.Audio.Stop_Audio
			/// @DnDVersion : 1
			/// @DnDHash : 34D57BEB
			/// @DnDParent : 4CA91007
			/// @DnDArgument : "soundid" "tut_7"
			/// @DnDSaveInfo : "soundid" "tut_7"
			audio_stop_sound(tut_7);
		}
	
		/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
		/// @DnDVersion : 1
		/// @DnDHash : 67FD9172
		/// @DnDParent : 5BEF3412
		/// @DnDArgument : "soundid" "tut_9"
		/// @DnDSaveInfo : "soundid" "tut_9"
		var l67FD9172_0 = tut_9;
		if (audio_is_playing(l67FD9172_0))
		{
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 2589D90D
			/// @DnDApplyTo : {subtitle_ob}
			/// @DnDParent : 67FD9172
			with(subtitle_ob) instance_destroy();
		
			/// @DnDAction : YoYo Games.Audio.Stop_Audio
			/// @DnDVersion : 1
			/// @DnDHash : 5A3938BF
			/// @DnDParent : 67FD9172
			/// @DnDArgument : "soundid" "tut_9"
			/// @DnDSaveInfo : "soundid" "tut_9"
			audio_stop_sound(tut_9);
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5B3DF1CF
		/// @DnDParent : 5BEF3412
		/// @DnDArgument : "expr" "8"
		/// @DnDArgument : "var" "global.aud_transfer"
		global.aud_transfer = 8;
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 51FA97B5
		/// @DnDParent : 5BEF3412
		/// @DnDArgument : "obj" "subtitle_ob"
		/// @DnDSaveInfo : "obj" "subtitle_ob"
		var l51FA97B5_0 = false;
		l51FA97B5_0 = instance_exists(subtitle_ob);
		if(l51FA97B5_0)
		{
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 6DBAE18C
			/// @DnDApplyTo : {subtitle_ob}
			/// @DnDParent : 51FA97B5
			with(subtitle_ob) instance_destroy();
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 62926201
		/// @DnDParent : 5BEF3412
		/// @DnDArgument : "var" "global.so_subt"
		/// @DnDArgument : "value" "1"
		if(global.so_subt == 1)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 31D969A5
			/// @DnDParent : 62926201
			/// @DnDArgument : "objectid" "subtitle_ob"
			/// @DnDArgument : "layer" ""Room_Start_L""
			/// @DnDSaveInfo : "objectid" "subtitle_ob"
			instance_create_layer(0, 0, "Room_Start_L", subtitle_ob);
		}
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 77F76AE8
		/// @DnDParent : 5BEF3412
		/// @DnDArgument : "obj" "subtitle_ob"
		/// @DnDSaveInfo : "obj" "subtitle_ob"
		var l77F76AE8_0 = false;
		l77F76AE8_0 = instance_exists(subtitle_ob);
		if(l77F76AE8_0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5894D2DC
			/// @DnDInput : 2
			/// @DnDParent : 77F76AE8
			/// @DnDArgument : "expr" "camera_ob.x+40"
			/// @DnDArgument : "expr_1" "camera_ob.y+280"
			/// @DnDArgument : "var" "subtitle_ob.x"
			/// @DnDArgument : "var_1" "subtitle_ob.y"
			subtitle_ob.x = camera_ob.x+40;
			subtitle_ob.y = camera_ob.y+280;
		}
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 23A25047
		/// @DnDParent : 5BEF3412
		/// @DnDArgument : "soundid" "tut_8"
		/// @DnDSaveInfo : "soundid" "tut_8"
		audio_play_sound(tut_8, 0, 0, 1.0, undefined, 1.0);
	}
}

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 32C9B665
/// @DnDArgument : "soundid" "coin_so"
/// @DnDSaveInfo : "soundid" "coin_so"
audio_play_sound(coin_so, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3D4665D8
/// @DnDApplyTo : {coin_ob}
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "coin_count"
with(coin_ob) {
coin_count += 1;

}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2DB04E6B
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "global.p_coin"
global.p_coin += 1;

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 07442134
instance_destroy();