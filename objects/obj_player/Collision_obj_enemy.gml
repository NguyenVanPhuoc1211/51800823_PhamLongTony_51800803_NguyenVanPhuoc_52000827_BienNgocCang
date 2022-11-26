/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0DAA2ADE
/// @DnDArgument : "var" "state"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "ps.DEAD"
if(!(state == ps.DEAD))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 29E7DBDB
	/// @DnDParent : 0DAA2ADE
	/// @DnDArgument : "var" "other.state"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "es.DEAD"
	if(!(other.state == es.DEAD))
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 6BE6D173
		/// @DnDInput : 2
		/// @DnDParent : 29E7DBDB
		/// @DnDArgument : "expr" "bbox_bottom < other.bbox_top + 10"
		/// @DnDArgument : "expr_1" "vsp > 0"
		if(bbox_bottom < other.bbox_top + 10 && vsp > 0)
		{
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 65140417
			/// @DnDParent : 6BE6D173
			/// @DnDArgument : "soundid" "snd_land_on_enemy"
			/// @DnDSaveInfo : "soundid" "snd_land_on_enemy"
			audio_play_sound(snd_land_on_enemy, 0, 0, 1.0, undefined, 1.0);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4AEA4EEB
			/// @DnDParent : 6BE6D173
			/// @DnDArgument : "expr" "-jump_speed"
			/// @DnDArgument : "var" "vsp"
			vsp = -jump_speed;
		
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 3CD499B5
			/// @DnDParent : 6BE6D173
			/// @DnDArgument : "steps" "immune_time"
			alarm_set(0, immune_time);
		
			/// @DnDAction : YoYo Games.Common.Apply_To
			/// @DnDVersion : 1
			/// @DnDHash : 107406A8
			/// @DnDApplyTo : other
			/// @DnDParent : 6BE6D173
			with(other) {
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 3045B575
				/// @DnDParent : 107406A8
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos" "bbox_top"
				/// @DnDArgument : "objectid" "obj_explode"
				/// @DnDArgument : "layer" ""FX""
				/// @DnDSaveInfo : "objectid" "obj_explode"
				instance_create_layer(x + 0, bbox_top, "FX", obj_explode);
			
				/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
				/// @DnDVersion : 1
				/// @DnDHash : 717D4FB6
				/// @DnDParent : 107406A8
				/// @DnDArgument : "instvar" "11"
				image_index = 0;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 25540E38
				/// @DnDParent : 107406A8
				/// @DnDArgument : "var" "hsp"
				hsp = 0;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 36E9AECE
				/// @DnDParent : 107406A8
				/// @DnDArgument : "expr" "es.DEAD"
				/// @DnDArgument : "var" "state"
				state = es.DEAD;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 26C83D6F
				/// @DnDParent : 107406A8
				/// @DnDArgument : "expr" "points"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "score"
				score += points;
			
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 14AFAB26
				/// @DnDParent : 107406A8
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos" "bbox_top"
				/// @DnDArgument : "var" "inst"
				/// @DnDArgument : "var_temp" "1"
				/// @DnDArgument : "objectid" "obj_floatingtext"
				/// @DnDSaveInfo : "objectid" "obj_floatingtext"
				var inst = instance_create_layer(x + 0, bbox_top, "Instances", obj_floatingtext);
			
				/// @DnDAction : YoYo Games.Common.Apply_To
				/// @DnDVersion : 1
				/// @DnDHash : 1CF0506C
				/// @DnDApplyTo : inst
				/// @DnDParent : 107406A8
				with(inst) {
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 24DF5848
					/// @DnDParent : 1CF0506C
					/// @DnDArgument : "expr" ""+" + string(other.points)"
					/// @DnDArgument : "var" "txt"
					txt = "+" + string(other.points);
				}
			
				/// @DnDAction : YoYo Games.Loops.Repeat
				/// @DnDVersion : 1
				/// @DnDHash : 611F13C4
				/// @DnDParent : 107406A8
				/// @DnDArgument : "times" "irandom_range(2,4)"
				repeat(irandom_range(2,4))
				{
					/// @DnDAction : YoYo Games.Instances.Create_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 1DAF3199
					/// @DnDParent : 611F13C4
					/// @DnDArgument : "xpos" "random_range(-10,10)"
					/// @DnDArgument : "xpos_relative" "1"
					/// @DnDArgument : "ypos" "bbox_top"
					/// @DnDArgument : "objectid" "obj_coin"
					/// @DnDArgument : "layer" ""Coin""
					/// @DnDSaveInfo : "objectid" "obj_coin"
					instance_create_layer(x + random_range(-10,10), bbox_top, "Coin", obj_coin);
				}
			
				/// @DnDAction : YoYo Games.Common.Apply_To
				/// @DnDVersion : 1
				/// @DnDHash : 0BD98F5A
				/// @DnDApplyTo : {obj_game}
				/// @DnDParent : 107406A8
				with(obj_game) {
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 24408F77
					/// @DnDParent : 0BD98F5A
					/// @DnDArgument : "expr" "true"
					/// @DnDArgument : "var" "screen_shake"
					screen_shake = true;
				}
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 03358D6D
		/// @DnDParent : 29E7DBDB
		else
		{
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 13B163DD
			/// @DnDInput : 2
			/// @DnDParent : 03358D6D
			/// @DnDArgument : "expr" "state != ps.KNOCKBACK"
			/// @DnDArgument : "expr_1" "alarm[0] <= 0"
			if(state != ps.KNOCKBACK && alarm[0] <= 0)
			{
				/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1.1
				/// @DnDHash : 563F7A72
				/// @DnDParent : 13B163DD
				/// @DnDArgument : "soundid" "snd_player_damaged"
				/// @DnDSaveInfo : "soundid" "snd_player_damaged"
				audio_play_sound(snd_player_damaged, 0, 0, 1.0, undefined, 1.0);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 4A1461C4
				/// @DnDParent : 13B163DD
				/// @DnDArgument : "expr" "-1"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "hp"
				hp += -1;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 13EA8419
				/// @DnDParent : 13B163DD
				/// @DnDArgument : "expr" "sign(x - other.x) * hsp_knockback"
				/// @DnDArgument : "var" "hsp"
				hsp = sign(x - other.x) * hsp_knockback;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 6802FD83
				/// @DnDParent : 13B163DD
				/// @DnDArgument : "expr" "-vsp_knockback"
				/// @DnDArgument : "var" "vsp"
				vsp = -vsp_knockback;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 6EC5FC81
				/// @DnDParent : 13B163DD
				/// @DnDArgument : "expr" "ps.KNOCKBACK"
				/// @DnDArgument : "var" "state"
				state = ps.KNOCKBACK;
			}
		}
	}
}