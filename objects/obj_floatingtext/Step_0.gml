/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 20D0CFF3
/// @DnDArgument : "value" "rise"
/// @DnDArgument : "value_relative" "1"
/// @DnDArgument : "instvar" "1"
y += rise;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 67F5A431
/// @DnDArgument : "var" "fade_time--"
/// @DnDArgument : "op" "3"
if(fade_time-- <= 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0B0EBA4D
	/// @DnDParent : 67F5A431
	/// @DnDArgument : "expr" "alpha_inc"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "alpha"
	alpha += alpha_inc;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 427361F4
	/// @DnDParent : 67F5A431
	/// @DnDArgument : "var" "alpha"
	/// @DnDArgument : "op" "3"
	if(alpha <= 0)
	{
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 220727FF
		/// @DnDParent : 427361F4
		instance_destroy();
	}
}