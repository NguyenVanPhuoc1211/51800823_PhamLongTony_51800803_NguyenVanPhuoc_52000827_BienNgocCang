/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 49C8CE51
/// @DnDArgument : "funcName" "check_state"
function check_state() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5253F8E0
	/// @DnDParent : 49C8CE51
	/// @DnDArgument : "var" "on_ground"
	/// @DnDArgument : "value" "true"
	if(on_ground == true)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 12D57D72
		/// @DnDParent : 5253F8E0
		/// @DnDArgument : "var" "hsp"
		if(hsp == 0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 57DC1201
			/// @DnDParent : 12D57D72
			/// @DnDArgument : "expr" "ps.IDLE"
			/// @DnDArgument : "var" "state"
			state = ps.IDLE;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 4AA6BD12
		/// @DnDParent : 5253F8E0
		else
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0BDB5777
			/// @DnDParent : 4AA6BD12
			/// @DnDArgument : "expr" "ps.RUN"
			/// @DnDArgument : "var" "state"
			state = ps.RUN;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 38FD0224
	/// @DnDParent : 49C8CE51
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 46DA8918
		/// @DnDParent : 38FD0224
		/// @DnDArgument : "expr" "ps.JUMP"
		/// @DnDArgument : "var" "state"
		state = ps.JUMP;
	}
}