/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 380FC25F
/// @DnDArgument : "var" "state"
/// @DnDArgument : "value" "1"
if(state == 1)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 40BE3335
	/// @DnDInput : 2
	/// @DnDParent : 380FC25F
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "expr_1" ".010"
	/// @DnDArgument : "expr_relative_1" "1"
	/// @DnDArgument : "var" "timer"
	/// @DnDArgument : "var_1" "alpha"
	timer += 1;
	alpha += .010;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 385B015B
	/// @DnDParent : 380FC25F
	/// @DnDArgument : "var" "timer"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "end_trans_timer"
	if(timer > end_trans_timer)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 228D1A23
		/// @DnDInput : 2
		/// @DnDParent : 385B015B
		/// @DnDArgument : "expr" "3"
		/// @DnDArgument : "expr_1" "1"
		/// @DnDArgument : "var" "state"
		/// @DnDArgument : "var_1" "end_trans_timer"
		state = 3;
		end_trans_timer = 1;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 074E4B82
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3EBBCF3D
	/// @DnDParent : 074E4B82
	/// @DnDArgument : "var" "state"
	/// @DnDArgument : "value" "3"
	if(state == 3)
	{
		/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 301756F8
		/// @DnDParent : 3EBBCF3D
		/// @DnDArgument : "code" "//Set Camera state to 0 and set ix/iy$(13_10)$(13_10)camera_ob.ix = 0;$(13_10)camera_ob.iy = 0;$(13_10)camera_ob.cam_state = 5;$(13_10)camera_ob.cam_pos = 1;$(13_10)"
		//Set Camera state to 0 and set ix/iy
		
		camera_ob.ix = 0;
		camera_ob.iy = 0;
		camera_ob.cam_state = 5;
		camera_ob.cam_pos = 1;
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 571A0AD2
		/// @DnDInput : 5
		/// @DnDParent : 3EBBCF3D
		/// @DnDArgument : "value" "1"
		/// @DnDArgument : "value_1" "3"
		/// @DnDArgument : "var" "play_diff_level"
		/// @DnDArgument : "var_1" "p_health"
		/// @DnDArgument : "var_2" "p_coin"
		/// @DnDArgument : "var_3" "p_leather"
		/// @DnDArgument : "var_4" "p_metal"
		global.play_diff_level = 1;
		global.p_health = 3;
		global.p_coin = 0;
		global.p_leather = 0;
		global.p_metal = 0;
	
		/// @DnDAction : YoYo Games.Files.Open_Ini
		/// @DnDVersion : 1
		/// @DnDHash : 0E215605
		/// @DnDParent : 3EBBCF3D
		/// @DnDArgument : "filename" ""options_lab.ini""
		ini_open("options_lab.ini");
	
		/// @DnDAction : YoYo Games.Files.Ini_Write
		/// @DnDVersion : 1
		/// @DnDHash : 2035BF4C
		/// @DnDParent : 3EBBCF3D
		/// @DnDArgument : "type" "1"
		/// @DnDArgument : "section" ""Player""
		/// @DnDArgument : "key" ""Level""
		/// @DnDArgument : "value" "global.play_diff_level"
		ini_write_real("Player", "Level", global.play_diff_level);
	
		/// @DnDAction : YoYo Games.Files.Ini_Write
		/// @DnDVersion : 1
		/// @DnDHash : 1A717028
		/// @DnDParent : 3EBBCF3D
		/// @DnDArgument : "type" "1"
		/// @DnDArgument : "section" ""Player""
		/// @DnDArgument : "key" ""Health""
		/// @DnDArgument : "value" "global.p_health"
		ini_write_real("Player", "Health", global.p_health);
	
		/// @DnDAction : YoYo Games.Files.Ini_Write
		/// @DnDVersion : 1
		/// @DnDHash : 39A439D9
		/// @DnDParent : 3EBBCF3D
		/// @DnDArgument : "type" "1"
		/// @DnDArgument : "section" ""Player""
		/// @DnDArgument : "key" ""Coin""
		/// @DnDArgument : "value" "global.p_coin"
		ini_write_real("Player", "Coin", global.p_coin);
	
		/// @DnDAction : YoYo Games.Files.Ini_Write
		/// @DnDVersion : 1
		/// @DnDHash : 7848510D
		/// @DnDParent : 3EBBCF3D
		/// @DnDArgument : "type" "1"
		/// @DnDArgument : "section" ""Player""
		/// @DnDArgument : "key" ""Leather""
		/// @DnDArgument : "value" "global.p_leather"
		ini_write_real("Player", "Leather", global.p_leather);
	
		/// @DnDAction : YoYo Games.Files.Ini_Write
		/// @DnDVersion : 1
		/// @DnDHash : 48D8DB07
		/// @DnDParent : 3EBBCF3D
		/// @DnDArgument : "type" "1"
		/// @DnDArgument : "section" ""Player""
		/// @DnDArgument : "key" ""Metal""
		/// @DnDArgument : "value" "global.p_metal"
		ini_write_real("Player", "Metal", global.p_metal);
	
		/// @DnDAction : YoYo Games.Files.Close_Ini
		/// @DnDVersion : 1
		/// @DnDHash : 2E7007DB
		/// @DnDParent : 3EBBCF3D
		ini_close();
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7BEDAB33
		/// @DnDParent : 3EBBCF3D
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "end_trans"
		end_trans = 1;
	
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 2F1B5CCF
		/// @DnDParent : 3EBBCF3D
		/// @DnDArgument : "room" "title_rm"
		/// @DnDSaveInfo : "room" "title_rm"
		room_goto(title_rm);
	}
}