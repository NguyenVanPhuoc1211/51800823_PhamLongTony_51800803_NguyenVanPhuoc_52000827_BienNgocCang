/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 7DC9CB78
/// @DnDArgument : "var" "scale"
/// @DnDArgument : "value" "0.01"
var scale = 0.01;

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 7B13D36D
/// @DnDInput : 2
/// @DnDArgument : "value" "scale"
/// @DnDArgument : "value_1" "scale"
/// @DnDArgument : "instvar" "15"
/// @DnDArgument : "instvar_1" "16"
image_xscale = scale;
image_yscale = scale;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 408EBAF6
/// @DnDInput : 2
/// @DnDArgument : "expr" "-0.1"
/// @DnDArgument : "expr_1" "0.05"
/// @DnDArgument : "var" "alpha_dec"
/// @DnDArgument : "var_1" "scale_inc"
alpha_dec = -0.1;
scale_inc = 0.05;