/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 2841C4C5
/// @DnDArgument : "script" "collision"
/// @DnDSaveInfo : "script" "collision"
script_execute(collision);

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 11F42709
/// @DnDArgument : "var" "pre_bounce"
/// @DnDArgument : "value" "bounce"
var pre_bounce = bounce;

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 7C36C171
/// @DnDArgument : "script" "onGround"
/// @DnDSaveInfo : "script" "onGround"
script_execute(onGround);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 4B423715
/// @DnDArgument : "script" "calculation_movement_other"
/// @DnDSaveInfo : "script" "calculation_movement_other"
script_execute(calculation_movement_other);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 75DC2CE9
/// @DnDArgument : "var" "pre_bounce"
/// @DnDArgument : "not" "1"
if(!(pre_bounce == 0))
{

}