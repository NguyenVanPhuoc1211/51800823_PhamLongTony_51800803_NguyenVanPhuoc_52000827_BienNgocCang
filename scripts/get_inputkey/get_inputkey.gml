/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 6D4DE8F3
/// @DnDArgument : "funcName" "get_inputkey"
function get_inputkey() 
{
	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 6132BABF
	/// @DnDParent : 6D4DE8F3
	/// @DnDArgument : "script" "reset_input"
	/// @DnDSaveInfo : "script" "reset_input"
	script_execute(reset_input);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 076F9315
	/// @DnDParent : 6D4DE8F3
	/// @DnDArgument : "var" "has_control"
	/// @DnDArgument : "value" "true"
	if(has_control == true)
	{
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 512B87AC
		/// @DnDParent : 076F9315
		/// @DnDArgument : "script" "get_input_gamepad"
		/// @DnDSaveInfo : "script" "get_input_gamepad"
		script_execute(get_input_gamepad);
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 602CE6B7
		/// @DnDParent : 076F9315
		/// @DnDArgument : "key" "vk_right"
		var l602CE6B7_0;
		l602CE6B7_0 = keyboard_check(vk_right);
		if (l602CE6B7_0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 365798B1
			/// @DnDParent : 602CE6B7
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "right"
			right = true;
		}
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 691A505D
		/// @DnDParent : 076F9315
		/// @DnDArgument : "key" "vk_left"
		var l691A505D_0;
		l691A505D_0 = keyboard_check(vk_left);
		if (l691A505D_0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2F7A4708
			/// @DnDParent : 691A505D
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "left"
			left = true;
		}
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
		/// @DnDVersion : 1
		/// @DnDHash : 3FE475CC
		/// @DnDParent : 076F9315
		var l3FE475CC_0;
		l3FE475CC_0 = keyboard_check_pressed(vk_space);
		if (l3FE475CC_0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7EBAAF35
			/// @DnDParent : 3FE475CC
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "jump"
			jump = true;
		}
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
		/// @DnDVersion : 1
		/// @DnDHash : 43D66728
		/// @DnDParent : 076F9315
		/// @DnDArgument : "key" "vk_up"
		var l43D66728_0;
		l43D66728_0 = keyboard_check_pressed(vk_up);
		if (l43D66728_0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 54FDB0AB
			/// @DnDParent : 43D66728
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "up"
			up = true;
		}
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
		/// @DnDVersion : 1
		/// @DnDHash : 10104571
		/// @DnDParent : 076F9315
		/// @DnDArgument : "key" "vk_down"
		var l10104571_0;
		l10104571_0 = keyboard_check_pressed(vk_down);
		if (l10104571_0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2F004FF8
			/// @DnDParent : 10104571
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "down"
			down = true;
		}
	}
}