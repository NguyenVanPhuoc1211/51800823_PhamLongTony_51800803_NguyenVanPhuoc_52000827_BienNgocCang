/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 0A1E2A7B
/// @DnDArgument : "funcName" "animation"
function animation() 
{
	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 7B657FA5
	/// @DnDParent : 0A1E2A7B
	/// @DnDArgument : "expr" "state"
	var l7B657FA5_0 = state;
	switch(l7B657FA5_0)
	{
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 262C3CE7
		/// @DnDParent : 7B657FA5
		/// @DnDArgument : "const" "ps.IDLE"
		case ps.IDLE:
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 603E05B5
			/// @DnDParent : 262C3CE7
			/// @DnDArgument : "value" "spr_idle"
			/// @DnDArgument : "instvar" "10"
			sprite_index = spr_idle;
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 3E915EDA
			/// @DnDParent : 262C3CE7
			/// @DnDArgument : "script" "check_facing"
			/// @DnDSaveInfo : "script" "check_facing"
			script_execute(check_facing);
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 7FCDC92A
		/// @DnDParent : 7B657FA5
		/// @DnDArgument : "const" "ps.RUN"
		case ps.RUN:
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 1194B4CB
			/// @DnDParent : 7FCDC92A
			/// @DnDArgument : "value" "spr_run"
			/// @DnDArgument : "instvar" "10"
			sprite_index = spr_run;
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 1D0A29C1
			/// @DnDParent : 7FCDC92A
			/// @DnDArgument : "script" "check_facing"
			/// @DnDSaveInfo : "script" "check_facing"
			script_execute(check_facing);
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 4079F156
		/// @DnDParent : 7B657FA5
		/// @DnDArgument : "const" "ps.JUMP"
		case ps.JUMP:
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 6CF2AF4A
			/// @DnDParent : 4079F156
			/// @DnDArgument : "value" "spr_jump"
			/// @DnDArgument : "instvar" "10"
			sprite_index = spr_jump;
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 5FE72A98
			/// @DnDParent : 4079F156
			/// @DnDArgument : "script" "check_facing"
			/// @DnDSaveInfo : "script" "check_facing"
			script_execute(check_facing);
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 0328B3AC
			/// @DnDParent : 4079F156
			/// @DnDArgument : "script" "check_jumpindex"
			/// @DnDSaveInfo : "script" "check_jumpindex"
			script_execute(check_jumpindex);
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 4E96A383
		/// @DnDParent : 7B657FA5
		/// @DnDArgument : "const" "ps.KNOCKBACK"
		case ps.KNOCKBACK:
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 311D8756
			/// @DnDParent : 4E96A383
			/// @DnDArgument : "value" "spr_jump"
			/// @DnDArgument : "instvar" "10"
			sprite_index = spr_jump;
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 5F5C82A2
			/// @DnDParent : 4E96A383
			/// @DnDArgument : "script" "check_jumpindex"
			/// @DnDSaveInfo : "script" "check_jumpindex"
			script_execute(check_jumpindex);
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 028605CE
		/// @DnDParent : 7B657FA5
		/// @DnDArgument : "const" "ps.DEAD"
		case ps.DEAD:
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 481441F3
			/// @DnDParent : 028605CE
			/// @DnDArgument : "value" "spr_dead"
			/// @DnDArgument : "instvar" "10"
			sprite_index = spr_dead;
			break;
	}
}