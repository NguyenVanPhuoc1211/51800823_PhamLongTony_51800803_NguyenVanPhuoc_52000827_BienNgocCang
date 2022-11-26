/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 4D058A76
/// @DnDArgument : "funcName" "draw_score"
function draw_score() 
{
	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 071E9C6A
	/// @DnDParent : 4D058A76
	/// @DnDArgument : "font" "Font_coin"
	/// @DnDSaveInfo : "font" "Font_coin"
	draw_set_font(Font_coin);

	/// @DnDAction : YoYo Games.Drawing.Set_Alignment
	/// @DnDVersion : 1.1
	/// @DnDHash : 0964286E
	/// @DnDParent : 4D058A76
	/// @DnDArgument : "halign" "fa_center"
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 1816CE42
	/// @DnDParent : 4D058A76
	/// @DnDArgument : "color" "$45191919"
	draw_set_colour($45191919 & $ffffff);
	var l1816CE42_0=($45191919 >> 24);
	draw_set_alpha(l1816CE42_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 3B67406C
	/// @DnDParent : 4D058A76
	/// @DnDArgument : "x" "display_get_gui_width()/2"
	/// @DnDArgument : "y" "11"
	/// @DnDArgument : "caption" ""Score ""
	/// @DnDArgument : "var" "score"
	draw_text(display_get_gui_width()/2, 11, string("Score ") + string(score));

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 08DDB5C1
	/// @DnDParent : 4D058A76
	/// @DnDArgument : "color" "$FFE5E5E5"
	draw_set_colour($FFE5E5E5 & $ffffff);
	var l08DDB5C1_0=($FFE5E5E5 >> 24);
	draw_set_alpha(l08DDB5C1_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 124C89BA
	/// @DnDParent : 4D058A76
	/// @DnDArgument : "x" "display_get_gui_width()/2-2"
	/// @DnDArgument : "y" "8"
	/// @DnDArgument : "caption" ""Score ""
	/// @DnDArgument : "var" "score"
	draw_text(display_get_gui_width()/2-2, 8, string("Score ") + string(score));
}