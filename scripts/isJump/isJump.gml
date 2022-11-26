/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 05A0E8DC
/// @DnDArgument : "funcName" "isJump"
function isJump() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 55836903
	/// @DnDParent : 05A0E8DC
	/// @DnDArgument : "var" "on_ground"
	/// @DnDArgument : "value" "true"
	if(on_ground == true)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 023855F2
		/// @DnDParent : 55836903
		/// @DnDArgument : "var" "jump"
		/// @DnDArgument : "value" "true"
		if(jump == true)
		{
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 2C3AE652
			/// @DnDParent : 023855F2
			/// @DnDArgument : "soundid" "snd_jump"
			/// @DnDSaveInfo : "soundid" "snd_jump"
			audio_play_sound(snd_jump, 0, 0, 1.0, undefined, 1.0);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 30F7EF54
			/// @DnDParent : 023855F2
			/// @DnDArgument : "expr" "-jump_speed"
			/// @DnDArgument : "var" "vsp"
			vsp = -jump_speed;
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 55B06210
			/// @DnDParent : 023855F2
			/// @DnDArgument : "script" "create_dust"
			/// @DnDSaveInfo : "script" "create_dust"
			script_execute(create_dust);
		}
	}
}