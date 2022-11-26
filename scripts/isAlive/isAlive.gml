/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 387D6634
/// @DnDArgument : "funcName" "isAlive"
function isAlive() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 23A1548E
	/// @DnDParent : 387D6634
	/// @DnDArgument : "var" "hp"
	/// @DnDArgument : "op" "3"
	if(hp <= 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6AB52C12
		/// @DnDParent : 23A1548E
		/// @DnDArgument : "expr" "ps.DEAD"
		/// @DnDArgument : "var" "state"
		state = ps.DEAD;
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 0F2AA60F
		/// @DnDParent : 23A1548E
		/// @DnDArgument : "soundid" "snd_player_die"
		/// @DnDSaveInfo : "soundid" "snd_player_die"
		audio_play_sound(snd_player_die, 0, 0, 1.0, undefined, 1.0);
	}
}