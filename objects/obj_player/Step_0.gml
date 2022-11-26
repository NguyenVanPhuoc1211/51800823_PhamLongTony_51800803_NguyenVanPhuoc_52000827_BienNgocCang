/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 4EB14AB1
/// @DnDArgument : "expr" "state"
var l4EB14AB1_0 = state;
switch(l4EB14AB1_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 583885CE
	/// @DnDParent : 4EB14AB1
	/// @DnDArgument : "const" "ps.IDLE"
	case ps.IDLE:
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 76FD7678
		/// @DnDParent : 583885CE
		/// @DnDArgument : "script" "get_inputkey"
		/// @DnDSaveInfo : "script" "get_inputkey"
		script_execute(get_inputkey);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 6DB5277D
		/// @DnDParent : 583885CE
		/// @DnDArgument : "script" "calculation_movement"
		/// @DnDSaveInfo : "script" "calculation_movement"
		script_execute(calculation_movement);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 6E0AA4B9
		/// @DnDParent : 583885CE
		/// @DnDArgument : "script" "onGround"
		/// @DnDSaveInfo : "script" "onGround"
		script_execute(onGround);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 6126B19C
		/// @DnDParent : 583885CE
		/// @DnDArgument : "script" "isJump"
		/// @DnDSaveInfo : "script" "isJump"
		script_execute(isJump);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 735E7DE0
		/// @DnDParent : 583885CE
		/// @DnDArgument : "script" "check_state"
		/// @DnDSaveInfo : "script" "check_state"
		script_execute(check_state);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 02BC9BC0
		/// @DnDParent : 583885CE
		/// @DnDArgument : "script" "isAlive"
		/// @DnDSaveInfo : "script" "isAlive"
		script_execute(isAlive);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 5D96F87B
		/// @DnDParent : 583885CE
		/// @DnDArgument : "script" "collision"
		/// @DnDSaveInfo : "script" "collision"
		script_execute(collision);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 7B4AB61D
		/// @DnDParent : 583885CE
		/// @DnDArgument : "script" "animation"
		/// @DnDSaveInfo : "script" "animation"
		script_execute(animation);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 2EA221E7
	/// @DnDParent : 4EB14AB1
	/// @DnDArgument : "const" "ps.JUMP"
	case ps.JUMP:
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 468C69CD
		/// @DnDParent : 2EA221E7
		/// @DnDArgument : "script" "get_inputkey"
		/// @DnDSaveInfo : "script" "get_inputkey"
		script_execute(get_inputkey);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 1F86F12C
		/// @DnDParent : 2EA221E7
		/// @DnDArgument : "script" "calculation_movement"
		/// @DnDSaveInfo : "script" "calculation_movement"
		script_execute(calculation_movement);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 4A235E8A
		/// @DnDParent : 2EA221E7
		/// @DnDArgument : "script" "onGround"
		/// @DnDSaveInfo : "script" "onGround"
		script_execute(onGround);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 48B38451
		/// @DnDParent : 2EA221E7
		/// @DnDArgument : "script" "check_state"
		/// @DnDSaveInfo : "script" "check_state"
		script_execute(check_state);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3DC6C620
		/// @DnDParent : 2EA221E7
		/// @DnDArgument : "var" "on_ground"
		/// @DnDArgument : "value" "true"
		if(on_ground == true)
		{
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 6F8A01F3
			/// @DnDParent : 3DC6C620
			/// @DnDArgument : "script" "create_dust"
			/// @DnDSaveInfo : "script" "create_dust"
			script_execute(create_dust);
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 53ADC678
			/// @DnDParent : 3DC6C620
			/// @DnDArgument : "soundid" "snd_land"
			/// @DnDSaveInfo : "soundid" "snd_land"
			audio_play_sound(snd_land, 0, 0, 1.0, undefined, 1.0);
		}
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 75F3897A
		/// @DnDParent : 2EA221E7
		/// @DnDArgument : "script" "isAlive"
		/// @DnDSaveInfo : "script" "isAlive"
		script_execute(isAlive);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 3FD5E0E4
		/// @DnDParent : 2EA221E7
		/// @DnDArgument : "script" "collision"
		/// @DnDSaveInfo : "script" "collision"
		script_execute(collision);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 1B10B20E
		/// @DnDParent : 2EA221E7
		/// @DnDArgument : "script" "animation"
		/// @DnDSaveInfo : "script" "animation"
		script_execute(animation);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 77CD2B7A
	/// @DnDParent : 4EB14AB1
	/// @DnDArgument : "const" "ps.RUN"
	case ps.RUN:
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 045A0112
		/// @DnDParent : 77CD2B7A
		/// @DnDArgument : "script" "get_inputkey"
		/// @DnDSaveInfo : "script" "get_inputkey"
		script_execute(get_inputkey);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 17C71BCD
		/// @DnDParent : 77CD2B7A
		/// @DnDArgument : "script" "calculation_movement"
		/// @DnDSaveInfo : "script" "calculation_movement"
		script_execute(calculation_movement);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 446F5497
		/// @DnDParent : 77CD2B7A
		/// @DnDArgument : "script" "onGround"
		/// @DnDSaveInfo : "script" "onGround"
		script_execute(onGround);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 31B54188
		/// @DnDParent : 77CD2B7A
		/// @DnDArgument : "script" "isJump"
		/// @DnDSaveInfo : "script" "isJump"
		script_execute(isJump);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 2747DC4B
		/// @DnDParent : 77CD2B7A
		/// @DnDArgument : "script" "check_footstep"
		script_execute(check_footstep);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 4BEC62E8
		/// @DnDParent : 77CD2B7A
		/// @DnDArgument : "script" "check_state"
		/// @DnDSaveInfo : "script" "check_state"
		script_execute(check_state);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 6D7CC819
		/// @DnDParent : 77CD2B7A
		/// @DnDArgument : "script" "isAlive"
		/// @DnDSaveInfo : "script" "isAlive"
		script_execute(isAlive);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 28075F88
		/// @DnDParent : 77CD2B7A
		/// @DnDArgument : "script" "collision"
		/// @DnDSaveInfo : "script" "collision"
		script_execute(collision);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 474FBC43
		/// @DnDParent : 77CD2B7A
		/// @DnDArgument : "script" "animation"
		/// @DnDSaveInfo : "script" "animation"
		script_execute(animation);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 7EDE1548
	/// @DnDParent : 4EB14AB1
	/// @DnDArgument : "const" "ps.KNOCKBACK"
	case ps.KNOCKBACK:
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 234E74AD
		/// @DnDParent : 7EDE1548
		/// @DnDArgument : "script" "reset_input"
		/// @DnDSaveInfo : "script" "reset_input"
		script_execute(reset_input);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 0E9BF51D
		/// @DnDParent : 7EDE1548
		/// @DnDArgument : "script" "calculation_movement"
		/// @DnDSaveInfo : "script" "calculation_movement"
		script_execute(calculation_movement);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 4C93736F
		/// @DnDParent : 7EDE1548
		/// @DnDArgument : "script" "onGround"
		/// @DnDSaveInfo : "script" "onGround"
		script_execute(onGround);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 64C4E6F0
		/// @DnDParent : 7EDE1548
		/// @DnDArgument : "var" "vsp"
		/// @DnDArgument : "op" "2"
		if(vsp > 0)
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 442B505C
			/// @DnDParent : 64C4E6F0
			/// @DnDArgument : "var" "on_ground"
			/// @DnDArgument : "value" "true"
			if(on_ground == true)
			{
				/// @DnDAction : YoYo Games.Common.Execute_Script
				/// @DnDVersion : 1.1
				/// @DnDHash : 53CF02DA
				/// @DnDParent : 442B505C
				/// @DnDArgument : "script" "check_state"
				/// @DnDSaveInfo : "script" "check_state"
				script_execute(check_state);
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 08DF895C
		/// @DnDParent : 7EDE1548
		/// @DnDArgument : "script" "isAlive"
		/// @DnDSaveInfo : "script" "isAlive"
		script_execute(isAlive);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 75368B6B
		/// @DnDParent : 7EDE1548
		/// @DnDArgument : "script" "collision"
		/// @DnDSaveInfo : "script" "collision"
		script_execute(collision);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 72D39BE5
		/// @DnDParent : 7EDE1548
		/// @DnDArgument : "script" "animation"
		/// @DnDSaveInfo : "script" "animation"
		script_execute(animation);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 1758BCD5
	/// @DnDParent : 4EB14AB1
	/// @DnDArgument : "const" "ps.DEAD"
	case ps.DEAD:
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 70AB3E7F
		/// @DnDParent : 1758BCD5
		/// @DnDArgument : "script" "calculation_movement"
		/// @DnDSaveInfo : "script" "calculation_movement"
		script_execute(calculation_movement);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 508523C4
		/// @DnDParent : 1758BCD5
		/// @DnDArgument : "var" "image_index"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "image_number - 1"
		if(image_index > image_number - 1)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 18BDE6BF
			/// @DnDParent : 508523C4
			/// @DnDArgument : "var" "image_speed"
			image_speed = 0;
		
			/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
			/// @DnDVersion : 1
			/// @DnDHash : 73F7145C
			/// @DnDParent : 508523C4
			var l73F7145C_0;
			l73F7145C_0 = keyboard_check_pressed(vk_space);
			if (l73F7145C_0)
			{
				/// @DnDAction : YoYo Games.Game.Restart_Game
				/// @DnDVersion : 1
				/// @DnDHash : 46C28A3A
				/// @DnDParent : 73F7145C
				game_restart();
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 3ED5D2DC
		/// @DnDParent : 1758BCD5
		/// @DnDArgument : "script" "collision"
		/// @DnDSaveInfo : "script" "collision"
		script_execute(collision);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 525E5BEF
		/// @DnDParent : 1758BCD5
		/// @DnDArgument : "script" "animation"
		/// @DnDSaveInfo : "script" "animation"
		script_execute(animation);
		break;
}