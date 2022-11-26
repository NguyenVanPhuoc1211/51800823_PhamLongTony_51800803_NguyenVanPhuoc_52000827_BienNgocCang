/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 05A0E8DC
/// @DnDArgument : "funcName" "check_footstep"
function check_footstep() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 55836903
	/// @DnDParent : 05A0E8DC
	/// @DnDArgument : "var" "floor(image_index)==4 or floor(image_index)==7"
	/// @DnDArgument : "value" "true"
	if(floor(image_index)==4 or floor(image_index)==7 == true)
	{
		/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
		/// @DnDVersion : 1
		/// @DnDHash : 5018F237
		/// @DnDParent : 55836903
		/// @DnDArgument : "soundid" "snd_footstep"
		/// @DnDArgument : "not" "1"
		/// @DnDSaveInfo : "soundid" "snd_footstep"
		var l5018F237_0 = snd_footstep;
		if (!audio_is_playing(l5018F237_0))
		{
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 4F5B4666
			/// @DnDParent : 5018F237
			/// @DnDArgument : "soundid" "snd_footstep"
			/// @DnDArgument : "pitch" "random_range(0.8,1.1)"
			/// @DnDSaveInfo : "soundid" "snd_footstep"
			audio_play_sound(snd_footstep, 0, 0, 1.0, undefined, random_range(0.8,1.1));
		}
	}
}