/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 4D058A76
/// @DnDArgument : "funcName" "draw_coin"
function draw_coin() 
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
	/// @DnDHash : 4F4E54D3
	/// @DnDParent : 4D058A76
	draw_set_halign(fa_left);
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
	/// @DnDArgument : "x" "22"
	/// @DnDArgument : "y" "11"
	/// @DnDArgument : "caption" ""Coins ""
	/// @DnDArgument : "var" "global.coins"
	draw_text(22, 11, string("Coins ") + string(global.coins));

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 08DDB5C1
	/// @DnDParent : 4D058A76
	/// @DnDArgument : "color" "$FF0DE5E5"
	draw_set_colour($FF0DE5E5 & $ffffff);
	var l08DDB5C1_0=($FF0DE5E5 >> 24);
	draw_set_alpha(l08DDB5C1_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 124C89BA
	/// @DnDParent : 4D058A76
	/// @DnDArgument : "x" "20"
	/// @DnDArgument : "y" "8"
	/// @DnDArgument : "caption" ""Coins ""
	/// @DnDArgument : "var" "global.coins"
	draw_text(20, 8, string("Coins ") + string(global.coins));
}