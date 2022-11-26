/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 0B5F3C7E
/// @DnDArgument : "funcName" "spawn_leaf"
function spawn_leaf() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7A49D673
	/// @DnDParent : 0B5F3C7E
	/// @DnDArgument : "var" "spawn_leaf_timer"
	/// @DnDArgument : "op" "3"
	if(spawn_leaf_timer <= 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3FC0919A
		/// @DnDParent : 7A49D673
		/// @DnDArgument : "expr" "spawn_leaf_initial"
		/// @DnDArgument : "var" "spawn_leaf_timer"
		spawn_leaf_timer = spawn_leaf_initial;
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 51DC2B4D
		/// @DnDParent : 7A49D673
		/// @DnDArgument : "xpos" "random_range(0, room_width)"
		/// @DnDArgument : "ypos" "-16"
		/// @DnDArgument : "objectid" "obj_leaf"
		/// @DnDArgument : "layer" ""Leaves""
		/// @DnDSaveInfo : "objectid" "obj_leaf"
		instance_create_layer(random_range(0, room_width), -16, "Leaves", obj_leaf);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 30C8B567
	/// @DnDParent : 0B5F3C7E
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 57EC5D7D
		/// @DnDParent : 30C8B567
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "spawn_leaf_timer"
		spawn_leaf_timer += -1;
	}
}