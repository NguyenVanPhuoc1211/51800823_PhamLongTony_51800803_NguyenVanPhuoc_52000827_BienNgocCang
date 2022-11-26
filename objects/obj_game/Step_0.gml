/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6EEDEB79
/// @DnDArgument : "code" "// background$(13_10)$(13_10)var layer_id = layer_get_id("Background");$(13_10)$(13_10)var scoll_spd = 0.5;$(13_10)$(13_10)layer_x(layer_id, camera_get_view_x(view_camera[0]) * scoll_spd);"
// background

var layer_id = layer_get_id("Background");

var scoll_spd = 0.5;

layer_x(layer_id, camera_get_view_x(view_camera[0]) * scoll_spd);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 2F1035AE
/// @DnDArgument : "script" "spawn_leaf"
script_execute(spawn_leaf);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6C538375
/// @DnDArgument : "var" "screen_shake"
/// @DnDArgument : "value" "true"
if(screen_shake == true)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 62F69E10
	/// @DnDParent : 6C538375
	/// @DnDArgument : "var" "alarm[0]"
	/// @DnDArgument : "op" "3"
	if(alarm[0] <= 0)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 619CB162
		/// @DnDParent : 62F69E10
		/// @DnDArgument : "steps" "shake_time"
		alarm_set(0, shake_time);
	}

	/// @DnDAction : YoYo Games.Cameras.Set_View_Var
	/// @DnDVersion : 1
	/// @DnDHash : 59EDB481
	/// @DnDParent : 6C538375
	/// @DnDArgument : "var" "2"
	/// @DnDArgument : "value" "random_range(-shake_amount, shake_amount)"
	view_set_xport(0, random_range(-shake_amount, shake_amount));

	/// @DnDAction : YoYo Games.Cameras.Set_View_Var
	/// @DnDVersion : 1
	/// @DnDHash : 629A031A
	/// @DnDParent : 6C538375
	/// @DnDArgument : "var" "3"
	/// @DnDArgument : "value" "random_range(-shake_amount, shake_amount)"
	view_set_yport(0, random_range(-shake_amount, shake_amount));
}