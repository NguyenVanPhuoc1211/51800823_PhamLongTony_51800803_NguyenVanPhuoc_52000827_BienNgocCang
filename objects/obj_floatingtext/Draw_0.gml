/// @DnDAction : YoYo Games.Drawing.Set_Alpha
/// @DnDVersion : 1
/// @DnDHash : 4DD8CB45
/// @DnDArgument : "alpha" "alpha"
draw_set_alpha(alpha);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 3AAAF8CE
/// @DnDArgument : "font" "Font_floatingtext"
/// @DnDSaveInfo : "font" "Font_floatingtext"
draw_set_font(Font_floatingtext);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 293548FF
/// @DnDArgument : "color" "$57000000"
/// @DnDArgument : "alpha" "false"
draw_set_colour($57000000 & $ffffff);draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 76FCCEC8
/// @DnDArgument : "x" "1"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "var" "txt"
draw_text(x + 1, y + 1,  + string(txt));

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 4C264719
/// @DnDArgument : "color" "col"
/// @DnDArgument : "alpha" "false"
draw_set_colour(col & $ffffff);draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 0EEA99B0
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "var" "txt"
draw_text(x + 0, y + 0,  + string(txt));

/// @DnDAction : YoYo Games.Drawing.Set_Alpha
/// @DnDVersion : 1
/// @DnDHash : 16457BE3
draw_set_alpha(1);