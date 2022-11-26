/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 5C573419
/// @DnDArgument : "funcName" "create_dust"
function create_dust() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 49803A2C
	/// @DnDParent : 5C573419
	/// @DnDArgument : "var" "has_control"
	/// @DnDArgument : "value" "true"
	if(has_control == true)
	{
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 33631A9C
		/// @DnDParent : 49803A2C
		/// @DnDArgument : "times" "irandom_range(3,6)"
		repeat(irandom_range(3,6))
		{
			/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 60C624BB
			/// @DnDInput : 2
			/// @DnDParent : 33631A9C
			/// @DnDArgument : "var" "xx"
			/// @DnDArgument : "value" "random_range(-20,20)"
			/// @DnDArgument : "var_1" "yy"
			/// @DnDArgument : "value_1" "random_range(-10,5)"
			var xx = random_range(-20,20);
			var yy = random_range(-10,5);
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 27C19B58
			/// @DnDParent : 33631A9C
			/// @DnDArgument : "xpos" "xx"
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos" "bbox_bottom + yy"
			/// @DnDArgument : "var" "inst"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "obj_dust"
			/// @DnDArgument : "layer" ""Dust""
			/// @DnDSaveInfo : "objectid" "obj_dust"
			var inst = instance_create_layer(x + xx, bbox_bottom + yy, "Dust", obj_dust);
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6264EF02
			/// @DnDParent : 33631A9C
			/// @DnDArgument : "var" "hsp"
			/// @DnDArgument : "not" "1"
			if(!(hsp == 0))
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 2087D8AA
				/// @DnDParent : 6264EF02
				/// @DnDArgument : "expr" "inst.dust_hsp_initial * facing"
				/// @DnDArgument : "var" "inst.hspeed"
				inst.hspeed = inst.dust_hsp_initial * facing;
			}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 43A4D7AE
			/// @DnDParent : 33631A9C
			/// @DnDArgument : "var" "vsp"
			/// @DnDArgument : "op" "1"
			if(vsp < 0)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 7142AF2E
				/// @DnDParent : 43A4D7AE
				/// @DnDArgument : "expr" "inst.dust_vsp_initial"
				/// @DnDArgument : "var" "inst.vspeed"
				inst.vspeed = inst.dust_vsp_initial;
			}
		}
	}
}