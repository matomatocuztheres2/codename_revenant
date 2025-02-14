/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 08FFAA94
/// @DnDInput : 7
/// @DnDArgument : "expr" "audio_sound_length(scene_7_mw_so)"
/// @DnDArgument : "expr_1" "end_trans_timer*30"
/// @DnDArgument : "expr_2" "c_black"
/// @DnDArgument : "expr_5" "1"
/// @DnDArgument : "var" "end_trans_timer"
/// @DnDArgument : "var_1" "end_trans_timer"
/// @DnDArgument : "var_2" "color"
/// @DnDArgument : "var_3" "timer"
/// @DnDArgument : "var_4" "alpha"
/// @DnDArgument : "var_5" "state"
/// @DnDArgument : "var_6" "end_trans"
end_trans_timer = audio_sound_length(scene_7_mw_so);
end_trans_timer = end_trans_timer*30;
color = c_black;
timer = 0;
alpha = 0;
state = 1;
end_trans = 0;