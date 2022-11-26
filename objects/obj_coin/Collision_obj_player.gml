/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 77226EF8
/// @DnDArgument : "var" "bounce"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "2"
if(bounce < 2)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 48D45012
	/// @DnDParent : 77226EF8
	/// @DnDArgument : "target" "snd"
	/// @DnDArgument : "target_temp" "1"
	/// @DnDArgument : "soundid" "snd_coin_pickup"
	/// @DnDArgument : "pitch" "1"
	/// @DnDSaveInfo : "soundid" "snd_coin_pickup"
	var snd = audio_play_sound(snd_coin_pickup, 0, 0, 1.0, undefined, 1);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 352113DA
	/// @DnDParent : 77226EF8
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "global.coins"
	global.coins += 1;

	/// @DnDAction : YoYo Games.Instances.Change_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 348CAE91
	/// @DnDParent : 77226EF8
	/// @DnDArgument : "objind" "obj_coin_pickup"
	/// @DnDSaveInfo : "objind" "obj_coin_pickup"
	instance_change(obj_coin_pickup, true);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 29B38F68
	/// @DnDParent : 77226EF8
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "bbox_top"
	/// @DnDArgument : "var" "inst"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "objectid" "obj_floatingtext"
	/// @DnDSaveInfo : "objectid" "obj_floatingtext"
	var inst = instance_create_layer(x + 0, bbox_top, "Instances", obj_floatingtext);

	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 1BBEECD4
	/// @DnDApplyTo : inst
	/// @DnDParent : 77226EF8
	with(inst) {
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 09D43369
		/// @DnDInput : 2
		/// @DnDParent : 1BBEECD4
		/// @DnDArgument : "expr" ""+1""
		/// @DnDArgument : "expr_1" "c_yellow"
		/// @DnDArgument : "var" "txt"
		/// @DnDArgument : "var_1" "col"
		txt = "+1";
		col = c_yellow;
	}
}