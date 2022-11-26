/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 15ECBF54
/// @DnDInput : 2
/// @DnDArgument : "expr" "-0.03"
/// @DnDArgument : "expr_1" "random_range(-0.02, -0.001)"
/// @DnDArgument : "var" "alpha_dec"
/// @DnDArgument : "var_1" "scale_dec"
alpha_dec = -0.03;
scale_dec = random_range(-0.02, -0.001);

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 1ECE0BB6
/// @DnDArgument : "var" "scale"
/// @DnDArgument : "value" "random_range(0.5, 1)"
var scale = random_range(0.5, 1);

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 68F61EA4
/// @DnDInput : 4
/// @DnDArgument : "value" "scale"
/// @DnDArgument : "value_1" "scale"
/// @DnDArgument : "value_2" "irandom(1)"
/// @DnDArgument : "value_3" "random(360)"
/// @DnDArgument : "instvar" "15"
/// @DnDArgument : "instvar_1" "16"
/// @DnDArgument : "instvar_2" "11"
/// @DnDArgument : "instvar_3" "12"
image_xscale = scale;
image_yscale = scale;
image_index = irandom(1);
image_angle = random(360);