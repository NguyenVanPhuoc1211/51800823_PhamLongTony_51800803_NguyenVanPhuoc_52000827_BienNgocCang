/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5FAB5C55
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)enum ps{$(13_10)	IDLE,$(13_10)	RUN,$(13_10)	JUMP,$(13_10)	KNOCKBACK,$(13_10)	DEAD$(13_10)}$(13_10)$(13_10)enum es{$(13_10)	IDLE,$(13_10)	RUN,$(13_10)	DEAD$(13_10)}$(13_10)$(13_10)"
/// @description Execute Code
enum ps{
	IDLE,
	RUN,
	JUMP,
	KNOCKBACK,
	DEAD
}

enum es{
	IDLE,
	RUN,
	DEAD
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2B4FBB64
/// @DnDInput : 3
/// @DnDArgument : "expr" "32"
/// @DnDArgument : "expr_1" "255"
/// @DnDArgument : "expr_2" "1"
/// @DnDArgument : "var" "global.player_start_x"
/// @DnDArgument : "var_1" "global.player_start_y"
/// @DnDArgument : "var_2" "global.player_facing"
global.player_start_x = 32;
global.player_start_y = 255;
global.player_facing = 1;

/// @DnDAction : YoYo Games.Data Structures.Create_Map
/// @DnDVersion : 1
/// @DnDHash : 045C9F31
/// @DnDArgument : "var" "music_map"
music_map = ds_map_create();

/// @DnDAction : YoYo Games.Data Structures.Map_Set_Value
/// @DnDVersion : 1
/// @DnDHash : 6D9C9881
/// @DnDArgument : "var" "music_map"
/// @DnDArgument : "key" "r_lv1"
/// @DnDArgument : "value" "snd_room1_music_perihelium"
ds_map_replace(music_map, r_lv1, snd_room1_music_perihelium);

/// @DnDAction : YoYo Games.Data Structures.Map_Set_Value
/// @DnDVersion : 1
/// @DnDHash : 5B971E21
/// @DnDArgument : "var" "music_map"
/// @DnDArgument : "key" "r_lv2"
/// @DnDArgument : "value" "snd_room2_music_just_a_minuet"
ds_map_replace(music_map, r_lv2, snd_room2_music_just_a_minuet);

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 0C0A1607
/// @DnDInput : 2
/// @DnDArgument : "value" "0.3"
/// @DnDArgument : "var" "grav"
/// @DnDArgument : "var_1" "coins"
global.grav = 0.3;
global.coins = 0;