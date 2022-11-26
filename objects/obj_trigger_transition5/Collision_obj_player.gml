/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 29555272
/// @DnDArgument : "var" "other.has_control"
/// @DnDArgument : "value" "true"
if(other.has_control == true)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 42FA4976
	/// @DnDInput : 3
	/// @DnDParent : 29555272
	/// @DnDArgument : "expr" "32"
	/// @DnDArgument : "expr_1" "159"
	/// @DnDArgument : "expr_2" "1"
	/// @DnDArgument : "var" "global.player_start_x"
	/// @DnDArgument : "var_1" "global.player_start_y"
	/// @DnDArgument : "var_2" "global.player_facing"
	global.player_start_x = 32;
	global.player_start_y = 159;
	global.player_facing = 1;

	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 120CDD84
	/// @DnDApplyTo : other
	/// @DnDParent : 29555272
	with(other) {
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7D9323B1
		/// @DnDInput : 4
		/// @DnDParent : 120CDD84
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "expr_1" "60"
		/// @DnDArgument : "var" "has_control"
		/// @DnDArgument : "var_1" "alarm[1]"
		/// @DnDArgument : "var_2" "hsp"
		/// @DnDArgument : "var_3" "vsp"
		has_control = false;
		alarm[1] = 60;
		hsp = 0;
		vsp = 0;
	}

	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 5D08D178
	/// @DnDParent : 29555272
	/// @DnDArgument : "room" "r_lv5"
	/// @DnDSaveInfo : "room" "r_lv5"
	room_goto(r_lv5);
}