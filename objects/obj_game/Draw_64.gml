/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 658AE985
/// @DnDArgument : "color" "$70000000"
draw_set_colour($70000000 & $ffffff);
var l658AE985_0=($70000000 >> 24);
draw_set_alpha(l658AE985_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
/// @DnDVersion : 1
/// @DnDHash : 2915804B
/// @DnDArgument : "x2" "display_get_gui_width()"
/// @DnDArgument : "y2" "55"
/// @DnDArgument : "fill" "1"
draw_rectangle(0, 0, display_get_gui_width(), 55, 0);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 589996CA
/// @DnDArgument : "script" "draw_coin"
/// @DnDSaveInfo : "script" "draw_coin"
script_execute(draw_coin);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 0045F2F2
/// @DnDArgument : "script" "draw_score"
/// @DnDSaveInfo : "script" "draw_score"
script_execute(draw_score);