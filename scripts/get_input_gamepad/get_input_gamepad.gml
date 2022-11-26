/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 5F6E52EE
/// @DnDArgument : "funcName" "get_input_gamepad"
function get_input_gamepad() 
{
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5B9B49F3
	/// @DnDParent : 5F6E52EE
	/// @DnDArgument : "var" "dead_zone"
	/// @DnDArgument : "value" "0.3"
	var dead_zone = 0.3;

	/// @DnDAction : YoYo Games.Loops.For_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 78A40F36
	/// @DnDParent : 5F6E52EE
	/// @DnDArgument : "init_temp" "1"
	/// @DnDArgument : "cond" "i < 12"
	for(var i = 0; i < 12; i += 1) {
		/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Connected
		/// @DnDVersion : 1
		/// @DnDHash : 074EA829
		/// @DnDParent : 78A40F36
		/// @DnDArgument : "var" "connected"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "gp" "i"
		var connected = gamepad_is_connected(i);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4343E057
		/// @DnDParent : 78A40F36
		/// @DnDArgument : "var" "connected"
		/// @DnDArgument : "value" "true"
		if(connected == true)
		{
			/// @DnDAction : YoYo Games.Gamepad.Set_Gamepad_Axis_Deadzone
			/// @DnDVersion : 1
			/// @DnDHash : 09094FCC
			/// @DnDParent : 4343E057
			/// @DnDArgument : "gp" "i"
			/// @DnDArgument : "deadzone" "dead_zone"
			gamepad_set_axis_deadzone(i, dead_zone);
		
			/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Axis_Value
			/// @DnDVersion : 1.1
			/// @DnDHash : 43F7BCEE
			/// @DnDParent : 4343E057
			/// @DnDArgument : "var" "hmove"
			/// @DnDArgument : "gp" "i"
			hmove = gamepad_is_connected(i) ? gamepad_axis_value(i, gp_axislh) : 0;
		
			/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Axis_Value
			/// @DnDVersion : 1.1
			/// @DnDHash : 42F1C1BC
			/// @DnDParent : 4343E057
			/// @DnDArgument : "var" "vmove"
			/// @DnDArgument : "gp" "i"
			/// @DnDArgument : "axis" "gp_axislv"
			vmove = gamepad_is_connected(i) ? gamepad_axis_value(i, gp_axislv) : 0;
		
			/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Pressed
			/// @DnDVersion : 1.1
			/// @DnDHash : 1F71ADA8
			/// @DnDParent : 4343E057
			/// @DnDArgument : "gp" "i"
			/// @DnDArgument : "btn" "gp_face1"
			var l1F71ADA8_0 = i;
			var l1F71ADA8_1 = gp_face1;
			if(gamepad_is_connected(l1F71ADA8_0) && gamepad_button_check_pressed(l1F71ADA8_0, l1F71ADA8_1))
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 0CD84C4C
				/// @DnDParent : 1F71ADA8
				/// @DnDArgument : "expr" "true"
				/// @DnDArgument : "var" "jump"
				jump = true;
			}
		
			/// @DnDAction : YoYo Games.Loops.Break
			/// @DnDVersion : 1
			/// @DnDHash : 6D10DC77
			/// @DnDParent : 4343E057
			break;
		}
	}
}