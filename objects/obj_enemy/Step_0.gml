/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 4EB14AB1
/// @DnDArgument : "expr" "state"
var l4EB14AB1_0 = state;
switch(l4EB14AB1_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 77CD2B7A
	/// @DnDParent : 4EB14AB1
	/// @DnDArgument : "const" "es.RUN"
	case es.RUN:
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 376B4671
		/// @DnDParent : 77CD2B7A
		/// @DnDArgument : "var" "hsp"
		if(hsp == 0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5179DF00
			/// @DnDParent : 376B4671
			/// @DnDArgument : "expr" "facing * -1"
			/// @DnDArgument : "var" "facing"
			facing = facing * -1;
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0B7C98C8
		/// @DnDParent : 77CD2B7A
		/// @DnDArgument : "expr" "walk_speed * facing"
		/// @DnDArgument : "var" "hsp"
		hsp = walk_speed * facing;
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 17C71BCD
		/// @DnDParent : 77CD2B7A
		/// @DnDArgument : "script" "calculation_movement_other"
		/// @DnDSaveInfo : "script" "calculation_movement_other"
		script_execute(calculation_movement_other);
	
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
		/// @DnDArgument : "script" "animation_enemy"
		/// @DnDSaveInfo : "script" "animation_enemy"
		script_execute(animation_enemy);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 2298B412
	/// @DnDParent : 4EB14AB1
	/// @DnDArgument : "const" "es.DEAD"
	case es.DEAD:
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7FADE18E
		/// @DnDParent : 2298B412
		/// @DnDArgument : "var" "image_index"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "image_number - 1"
		if(image_index > image_number - 1)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6EED9B1E
			/// @DnDParent : 7FADE18E
			/// @DnDArgument : "var" "image_speed"
			image_speed = 0;
		}
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 3682572C
		/// @DnDParent : 2298B412
		/// @DnDArgument : "expr" "image_index>=5 and !fall_sound_played"
		if(image_index>=5 and !fall_sound_played)
		{
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 40467DD7
			/// @DnDParent : 3682572C
			/// @DnDArgument : "soundid" "snd_enemy_die"
			/// @DnDSaveInfo : "soundid" "snd_enemy_die"
			audio_play_sound(snd_enemy_die, 0, 0, 1.0, undefined, 1.0);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 368972F4
			/// @DnDParent : 3682572C
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "fall_sound_played"
			fall_sound_played = true;
		}
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 717F2573
		/// @DnDParent : 2298B412
		/// @DnDArgument : "script" "collision"
		/// @DnDSaveInfo : "script" "collision"
		script_execute(collision);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 673D9FF5
		/// @DnDParent : 2298B412
		/// @DnDArgument : "script" "animation_enemy"
		/// @DnDSaveInfo : "script" "animation_enemy"
		script_execute(animation_enemy);
		break;
}