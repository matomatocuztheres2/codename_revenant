/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 15D6ED0B
/// @DnDArgument : "function" "texture_prefetch"
/// @DnDArgument : "arg" ""window_2""
texture_prefetch("window_2");

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6C77AA36
/// @DnDInput : 7
/// @DnDArgument : "expr" "120"
/// @DnDArgument : "expr_1" "maze_1_rm"
/// @DnDArgument : "expr_2" "c_black"
/// @DnDArgument : "expr_4" "1"
/// @DnDArgument : "expr_5" "1"
/// @DnDArgument : "expr_6" "irandom(7)"
/// @DnDArgument : "var" "duration"
/// @DnDArgument : "var_1" "target_room"
/// @DnDArgument : "var_2" "color"
/// @DnDArgument : "var_3" "timer"
/// @DnDArgument : "var_4" "alpha"
/// @DnDArgument : "var_5" "state"
/// @DnDArgument : "var_6" "puzz_pick"
duration = 120;
target_room = maze_1_rm;
color = c_black;
timer = 0;
alpha = 1;
state = 1;
puzz_pick = irandom(7);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 18D960A8
/// @DnDArgument : "code" "//Set random position for Map Built pieces.$(13_10)puzz_1_x_opt = [$(13_10)360,$(13_10)504,$(13_10)504,$(13_10)504,$(13_10)360,$(13_10)504,$(13_10)360,$(13_10)216$(13_10)]$(13_10)$(13_10)puzz_1_y_opt = [$(13_10)108,$(13_10)252,$(13_10)396,$(13_10)540,$(13_10)684,$(13_10)828,$(13_10)972,$(13_10)828$(13_10)]$(13_10)$(13_10)puzz_2_x_opt = [$(13_10)1512,$(13_10)1656,$(13_10)1512,$(13_10)1656,$(13_10)1512,$(13_10)1656,$(13_10)1512,$(13_10)1800$(13_10)]$(13_10)$(13_10)puzz_2_y_opt = [$(13_10)108,$(13_10)252,$(13_10)396,$(13_10)540,$(13_10)684,$(13_10)828,$(13_10)972,$(13_10)396$(13_10)]$(13_10)$(13_10)puzz_mino_x_opt = [$(13_10)792,$(13_10)1080,$(13_10)792,$(13_10)1080,$(13_10)792,$(13_10)1080,$(13_10)792,$(13_10)1080$(13_10)]$(13_10)$(13_10)puzz_mino_y_opt = [$(13_10)108,$(13_10)108,$(13_10)396,$(13_10)396,$(13_10)684,$(13_10)684,$(13_10)972,$(13_10)972$(13_10)]$(13_10)$(13_10)randomize();$(13_10)instance_create_layer(puzz_1_x_opt[puzz_pick],puzz_1_y_opt[puzz_pick],"Map_L",base_puzzle_1_ob);$(13_10)puzz_pick = irandom(7);$(13_10)instance_create_layer(puzz_mino_x_opt[puzz_pick],puzz_mino_y_opt[puzz_pick],"Map_L",base_minotaur_ob);$(13_10)puzz_pick = irandom(7);$(13_10)instance_create_layer(puzz_2_x_opt[puzz_pick],puzz_2_y_opt[puzz_pick],"Map_L",base_puzzle_2_ob);$(13_10)"
//Set random position for Map Built pieces.
puzz_1_x_opt = [
360,
504,
504,
504,
360,
504,
360,
216
]

puzz_1_y_opt = [
108,
252,
396,
540,
684,
828,
972,
828
]

puzz_2_x_opt = [
1512,
1656,
1512,
1656,
1512,
1656,
1512,
1800
]

puzz_2_y_opt = [
108,
252,
396,
540,
684,
828,
972,
396
]

puzz_mino_x_opt = [
792,
1080,
792,
1080,
792,
1080,
792,
1080
]

puzz_mino_y_opt = [
108,
108,
396,
396,
684,
684,
972,
972
]

randomize();
instance_create_layer(puzz_1_x_opt[puzz_pick],puzz_1_y_opt[puzz_pick],"Map_L",base_puzzle_1_ob);
puzz_pick = irandom(7);
instance_create_layer(puzz_mino_x_opt[puzz_pick],puzz_mino_y_opt[puzz_pick],"Map_L",base_minotaur_ob);
puzz_pick = irandom(7);
instance_create_layer(puzz_2_x_opt[puzz_pick],puzz_2_y_opt[puzz_pick],"Map_L",base_puzzle_2_ob);