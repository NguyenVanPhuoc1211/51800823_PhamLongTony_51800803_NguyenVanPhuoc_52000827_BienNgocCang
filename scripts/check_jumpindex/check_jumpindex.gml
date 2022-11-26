/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 63D67D20
/// @DnDArgument : "funcName" "check_jumpindex"
function check_jumpindex() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 464C4ED0
	/// @DnDParent : 63D67D20
	/// @DnDArgument : "var" "vsp"
	/// @DnDArgument : "op" "1"
	if(vsp < 0)
	{
	
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 35B2B195
	/// @DnDParent : 63D67D20
	else
	{
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 25BB16BC
		/// @DnDParent : 35B2B195
		/// @DnDArgument : "value" "11"
		/// @DnDArgument : "instvar" "11"
		image_index = 11;
	}
}