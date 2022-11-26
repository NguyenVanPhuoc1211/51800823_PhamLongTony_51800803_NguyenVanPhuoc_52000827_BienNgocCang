/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 3F6B6BDE
/// @DnDArgument : "funcName" "calculation_movement"
function calculation_movement() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7A4478C6
	/// @DnDParent : 3F6B6BDE
	/// @DnDArgument : "var" "vmove"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "true"
	if(vmove < true)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 067E7259
		/// @DnDParent : 7A4478C6
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "up"
		up = true;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 31DF2F5F
	/// @DnDParent : 3F6B6BDE
	/// @DnDArgument : "var" "vmove"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "true"
	if(vmove > true)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 237DD888
		/// @DnDParent : 31DF2F5F
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "down"
		down = true;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1053B4CA
	/// @DnDParent : 3F6B6BDE
	/// @DnDArgument : "var" "right"
	/// @DnDArgument : "value" "true"
	if(right == true)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 18191F7B
		/// @DnDParent : 1053B4CA
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "hmove"
		hmove = 1;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 441558EA
	/// @DnDParent : 3F6B6BDE
	/// @DnDArgument : "var" "left"
	/// @DnDArgument : "value" "true"
	if(left == true)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 142FF84B
		/// @DnDParent : 441558EA
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "var" "hmove"
		hmove = -1;
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5D249281
	/// @DnDParent : 3F6B6BDE
	/// @DnDArgument : "expr" "hmove * acc"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "hsp"
	hsp += hmove * acc;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1FF28729
	/// @DnDParent : 3F6B6BDE
	/// @DnDArgument : "expr" "clamp(hsp, -walk_speed, walk_speed)"
	/// @DnDArgument : "var" "hsp"
	hsp = clamp(hsp, -walk_speed, walk_speed);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 731CE9D9
	/// @DnDParent : 3F6B6BDE
	/// @DnDArgument : "expr" "global.grav"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "vsp"
	vsp += global.grav;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7318E487
	/// @DnDParent : 3F6B6BDE
	/// @DnDArgument : "expr" "hsp*drag"
	/// @DnDArgument : "var" "hsp"
	hsp = hsp*drag;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0B475308
	/// @DnDParent : 3F6B6BDE
	/// @DnDArgument : "var" "abs(hsp)"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "0.2"
	if(abs(hsp) < 0.2)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2160D207
		/// @DnDParent : 0B475308
		/// @DnDArgument : "var" "hsp"
		hsp = 0;
	}
}