/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5DF4423F
/// @DnDArgument : "code" "animation_select = [$(13_10)play_death_sp$(13_10)]$(13_10)"
animation_select = [
play_death_sp
]

/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
/// @DnDVersion : 1
/// @DnDHash : 720D139B
image_speed = 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 32AEFB2D
/// @DnDInput : 2
/// @DnDArgument : "expr" "global.temp_tap_transfer"
/// @DnDArgument : "var" "animation"
/// @DnDArgument : "var_1" "sprite_name"
animation = global.temp_tap_transfer;
sprite_name = 0;

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 62539753
/// @DnDArgument : "value" "animation_select[animation]"
/// @DnDArgument : "instvar" "10"
sprite_index = animation_select[animation];

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6C4B223A
/// @DnDArgument : "expr" "animation_select[animation]"
/// @DnDArgument : "var" "sprite_name"
sprite_name = animation_select[animation];