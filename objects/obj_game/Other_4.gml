/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 78A77CC1
/// @DnDArgument : "soundid" "snd_room1_music_perihelium"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "soundid" "snd_room1_music_perihelium"
var l78A77CC1_0 = snd_room1_music_perihelium;
if (!audio_is_playing(l78A77CC1_0))
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 6C7B603D
	/// @DnDParent : 78A77CC1
	/// @DnDArgument : "soundid" "snd_room1_music_perihelium"
	/// @DnDArgument : "loop" "1"
	/// @DnDArgument : "gain" "0.5"
	/// @DnDSaveInfo : "soundid" "snd_room1_music_perihelium"
	audio_play_sound(snd_room1_music_perihelium, 0, 1, 0.5, undefined, 1.0);
}