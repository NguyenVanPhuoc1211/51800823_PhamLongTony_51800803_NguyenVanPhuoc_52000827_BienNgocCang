/// @DnDAction : YoYo Games.Random.Choose
/// @DnDVersion : 1
/// @DnDHash : 5343A8BC
/// @DnDInput : 2
/// @DnDArgument : "var" "facing"
/// @DnDArgument : "option" "-1"
/// @DnDArgument : "option_1" "1"
facing = choose(-1, 1);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 71C9B963
/// @DnDArgument : "expr" "random_range(0.5, 1)"
/// @DnDArgument : "var" "size"
size = random_range(0.5, 1);

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 62F295B3
/// @DnDInput : 3
/// @DnDArgument : "value" "size * facing"
/// @DnDArgument : "value_1" "size"
/// @DnDArgument : "value_2" "random_range(0.4, 1.2)"
/// @DnDArgument : "instvar" "15"
/// @DnDArgument : "instvar_1" "16"
/// @DnDArgument : "instvar_2" "5"
image_xscale = size * facing;
image_yscale = size;
vspeed = random_range(0.4, 1.2);