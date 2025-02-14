/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3728E98B
/// @DnDInput : 6
/// @DnDArgument : "expr" "((mouse_x+72)/144)"
/// @DnDArgument : "expr_1" "round(h_grid)"
/// @DnDArgument : "expr_2" "(h_grid*144)"
/// @DnDArgument : "expr_3" "((mouse_y+36)/144)"
/// @DnDArgument : "expr_4" "round(v_grid)"
/// @DnDArgument : "expr_5" "(v_grid*144)"
/// @DnDArgument : "var" "h_grid"
/// @DnDArgument : "var_1" "h_grid"
/// @DnDArgument : "var_2" "h_grid"
/// @DnDArgument : "var_3" "v_grid"
/// @DnDArgument : "var_4" "v_grid"
/// @DnDArgument : "var_5" "v_grid"
h_grid = ((mouse_x+72)/144);
h_grid = round(h_grid);
h_grid = (h_grid*144);
v_grid = ((mouse_y+36)/144);
v_grid = round(v_grid);
v_grid = (v_grid*144);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 3A0F421C
/// @DnDArgument : "color" "$FF0000FF"
draw_set_colour($FF0000FF & $ffffff);
var l3A0F421C_0=($FF0000FF >> 24);
draw_set_alpha(l3A0F421C_0 / $ff);

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 2B417546
/// @DnDInput : 2
/// @DnDArgument : "value" "h_grid-72"
/// @DnDArgument : "value_1" "v_grid-36"
/// @DnDArgument : "instvar_1" "1"
x = h_grid-72;
y = v_grid-36;

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 3398F5FE
/// @DnDDisabled : 1
/// @DnDArgument : "obj" "sys_menu_ob"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "sys_menu_ob"
/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 0EAE9D9F
/// @DnDDisabled : 1
/// @DnDParent : 3398F5FE
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "maze_highlight_ob"
/// @DnDSaveInfo : "object" "maze_highlight_ob"
/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 3D94DDCF
/// @DnDDisabled : 1
/// @DnDParent : 0EAE9D9F

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 32F85BC3
/// @DnDDisabled : 1
/// @DnDParent : 3398F5FE
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "maze_no_option_highlight_ob"
/// @DnDSaveInfo : "object" "maze_no_option_highlight_ob"
/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 07CE5A66
/// @DnDDisabled : 1
/// @DnDParent : 32F85BC3
/// @DnDArgument : "expr" "instance_place(x,y,maze_no_option_highlight_ob)"
/// @DnDArgument : "var" "draw_check"


/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6EE7B82F
/// @DnDDisabled : 1
/// @DnDParent : 32F85BC3
/// @DnDArgument : "var" "draw_check.box_show"
/// @DnDArgument : "value" "1"
/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 0EE6893A
/// @DnDDisabled : 1
/// @DnDParent : 6EE7B82F