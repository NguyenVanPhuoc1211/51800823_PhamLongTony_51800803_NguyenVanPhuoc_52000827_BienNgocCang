/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 0287BF24
/// @DnDArgument : "obj" "obj_game"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "obj_game"
var l0287BF24_0 = false;
l0287BF24_0 = instance_exists(obj_game);
if(!l0287BF24_0)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3D5C3A1F
	/// @DnDParent : 0287BF24
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_game"
	/// @DnDSaveInfo : "objectid" "obj_game"
	instance_create_layer(x + 0, y + 0, "Instances", obj_game);
}

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 5537C9D6
/// @DnDArgument : "obj" "obj_player"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "obj_player"
var l5537C9D6_0 = false;
l5537C9D6_0 = instance_exists(obj_player);
if(!l5537C9D6_0)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3F94CD4F
	/// @DnDParent : 5537C9D6
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_player"
	/// @DnDArgument : "layer" ""Player""
	/// @DnDSaveInfo : "objectid" "obj_player"
	instance_create_layer(x + 0, y + 0, "Player", obj_player);
}

/// @DnDAction : YoYo Games.Rooms.Next_Room
/// @DnDVersion : 1
/// @DnDHash : 3E87CB37
room_goto_next();