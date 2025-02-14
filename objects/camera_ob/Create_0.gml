/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1CB4BE46
/// @DnDInput : 14
/// @DnDArgument : "expr" "camera_get_view_width(0)"
/// @DnDArgument : "expr_1" "camera_get_view_height(0)"
/// @DnDArgument : "expr_2" "view_get_xport(0)"
/// @DnDArgument : "expr_3" "view_get_yport(0)"
/// @DnDArgument : "expr_4" "5"
/// @DnDArgument : "expr_12" "room_start_ob.version_update"
/// @DnDArgument : "var" "cam_width"
/// @DnDArgument : "var_1" "cam_height"
/// @DnDArgument : "var_2" "ix"
/// @DnDArgument : "var_3" "iy"
/// @DnDArgument : "var_4" "cam_state"
/// @DnDArgument : "var_5" "cam_last"
/// @DnDArgument : "var_6" "icw"
/// @DnDArgument : "var_7" "ich"
/// @DnDArgument : "var_8" "cam_pos"
/// @DnDArgument : "var_9" "cam_x"
/// @DnDArgument : "var_10" "cam_y"
/// @DnDArgument : "var_11" "cam_zoom"
/// @DnDArgument : "var_12" "version_update"
/// @DnDArgument : "var_13" "temp_diff_hold"
cam_width = camera_get_view_width(0);
cam_height = camera_get_view_height(0);
ix = view_get_xport(0);
iy = view_get_yport(0);
cam_state = 5;
cam_last = 0;
icw = 0;
ich = 0;
cam_pos = 0;
cam_x = 0;
cam_y = 0;
cam_zoom = 0;
version_update = room_start_ob.version_update;
temp_diff_hold = 0;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 75329656
/// @DnDArgument : "code" "cam_state_def_w = [1920,1280,640,1280,640,1920]$(13_10)cam_state_def_h = [1080,720,360,720,360,1080]$(13_10)cam_state_corr_w = [1920,640,1280,640,1280,1920]$(13_10)cam_state_corr_h = [1080,360,720,360,720,1080]"
cam_state_def_w = [1920,1280,640,1280,640,1920]
cam_state_def_h = [1080,720,360,720,360,1080]
cam_state_corr_w = [1920,640,1280,640,1280,1920]
cam_state_corr_h = [1080,360,720,360,720,1080]