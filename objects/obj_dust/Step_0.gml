/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 179CFD98
/// @DnDArgument : "var" "vspeed"
/// @DnDArgument : "not" "1"
if(!(vspeed == 0))
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 4C8AB337
	/// @DnDParent : 179CFD98
	/// @DnDArgument : "value" "vspeed * dust_sd"
	/// @DnDArgument : "instvar" "5"
	vspeed = vspeed * dust_sd;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2388D55E
/// @DnDArgument : "var" "hspeed"
/// @DnDArgument : "not" "1"
if(!(hspeed == 0))
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 466648A7
	/// @DnDParent : 2388D55E
	/// @DnDArgument : "value" "hspeed * dust_sd"
	/// @DnDArgument : "instvar" "4"
	hspeed = hspeed * dust_sd;
}

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 37BED1DB
/// @DnDInput : 3
/// @DnDArgument : "value" "scale_dec"
/// @DnDArgument : "value_relative" "1"
/// @DnDArgument : "value_1" "scale_dec"
/// @DnDArgument : "value_relative_1" "1"
/// @DnDArgument : "value_2" "alpha_dec"
/// @DnDArgument : "value_relative_2" "1"
/// @DnDArgument : "instvar" "15"
/// @DnDArgument : "instvar_1" "16"
/// @DnDArgument : "instvar_2" "13"
image_xscale += scale_dec;
image_yscale += scale_dec;
image_alpha += alpha_dec;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7CED36C7
/// @DnDArgument : "var" "image_alpha"
/// @DnDArgument : "op" "3"
if(image_alpha <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1C0F8C98
	/// @DnDParent : 7CED36C7
	instance_destroy();
}