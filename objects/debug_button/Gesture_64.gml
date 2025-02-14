/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 020D2587
/// @DnDDisabled : 1
/// @DnDArgument : "code" "//Delete this troubleshooting tool$(13_10)"


/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7AF6FB61
/// @DnDDisabled : 1
/// @DnDArgument : "var" "mouse_y"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "396"
/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 734E2BAE
/// @DnDDisabled : 1
/// @DnDParent : 7AF6FB61
/// @DnDArgument : "var" "mouse_y"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "684"
/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0FECFCE2
/// @DnDDisabled : 1
/// @DnDParent : 734E2BAE
/// @DnDArgument : "var" "mouse_x"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "36"
/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1868E93E
/// @DnDDisabled : 1
/// @DnDParent : 0FECFCE2
/// @DnDArgument : "var" "but_press"
/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 60BE8269
/// @DnDInput : 2
/// @DnDDisabled : 1
/// @DnDParent : 1868E93E
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_1" "120"
/// @DnDArgument : "var" "but_press"
/// @DnDArgument : "var_1" "timer"

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 662CF543
/// @DnDDisabled : 1
/// @DnDParent : 0FECFCE2
/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3351A459
/// @DnDDisabled : 1
/// @DnDParent : 662CF543
/// @DnDArgument : "var" "but_press"

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 6F66CF3F
/// @DnDDisabled : 1
/// @DnDParent : 734E2BAE
/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 43B0D05C
/// @DnDDisabled : 1
/// @DnDParent : 6F66CF3F
/// @DnDArgument : "var" "mouse_x"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "1884"
/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 141B8D62
/// @DnDDisabled : 1
/// @DnDParent : 43B0D05C
/// @DnDArgument : "var" "but_press"
/// @DnDArgument : "value" "1"
/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0492181C
/// @DnDInput : 2
/// @DnDDisabled : 1
/// @DnDParent : 141B8D62
/// @DnDArgument : "expr" "2"
/// @DnDArgument : "expr_1" "120"
/// @DnDArgument : "var" "but_press"
/// @DnDArgument : "var_1" "timer"

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 0AF44107
/// @DnDDisabled : 1
/// @DnDParent : 43B0D05C
/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 632ACAEC
/// @DnDDisabled : 1
/// @DnDParent : 0AF44107
/// @DnDArgument : "var" "but_press"

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 75BA6450
/// @DnDDisabled : 1
/// @DnDParent : 7AF6FB61
/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2ACF1E86
/// @DnDDisabled : 1
/// @DnDParent : 75BA6450
/// @DnDArgument : "var" "mouse_y"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "1044"
/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 30C0F74B
/// @DnDDisabled : 1
/// @DnDParent : 2ACF1E86
/// @DnDArgument : "var" "mouse_x"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "816"
/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3B9760DC
/// @DnDDisabled : 1
/// @DnDParent : 30C0F74B
/// @DnDArgument : "var" "mouse_x"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "1104"
/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7A29655C
/// @DnDDisabled : 1
/// @DnDParent : 3B9760DC
/// @DnDArgument : "var" "but_press"
/// @DnDArgument : "value" "3"
/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 32803F61
/// @DnDDisabled : 1
/// @DnDParent : 7A29655C
/// @DnDArgument : "function" "keyboard_key_press"
/// @DnDArgument : "arg" "ord("L")"


/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 54217832
/// @DnDDisabled : 1
/// @DnDParent : 7A29655C
/// @DnDArgument : "function" "keyboard_key_release"
/// @DnDArgument : "arg" "ord("L")"

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 2D80AB4D
/// @DnDDisabled : 1
/// @DnDParent : 3B9760DC
/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0E544554
/// @DnDDisabled : 1
/// @DnDParent : 2D80AB4D
/// @DnDArgument : "var" "but_press"

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 6597A89E
/// @DnDDisabled : 1
/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 65A13514
/// @DnDDisabled : 1
/// @DnDParent : 6597A89E
/// @DnDArgument : "var" "mouse_y"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "36"
/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 139DAC3E
/// @DnDDisabled : 1
/// @DnDParent : 65A13514
/// @DnDArgument : "var" "mouse_x"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "816"
/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 792E5CF2
/// @DnDDisabled : 1
/// @DnDParent : 139DAC3E
/// @DnDArgument : "var" "mouse_x"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "1104"
/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7495A7A9
/// @DnDDisabled : 1
/// @DnDParent : 792E5CF2
/// @DnDArgument : "var" "but_press"
/// @DnDArgument : "value" "2"
/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 67184677
/// @DnDInput : 2
/// @DnDDisabled : 1
/// @DnDParent : 7495A7A9
/// @DnDArgument : "expr" "3"
/// @DnDArgument : "expr_1" "120"
/// @DnDArgument : "var" "but_press"
/// @DnDArgument : "var_1" "timer"

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 00AE2746
/// @DnDDisabled : 1
/// @DnDParent : 792E5CF2
/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 077957C7
/// @DnDDisabled : 1
/// @DnDParent : 00AE2746
/// @DnDArgument : "var" "but_press"