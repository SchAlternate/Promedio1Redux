/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1
/// @DnDHash : 57F28F4E
/// @DnDArgument : "x" "-1"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_tile"
/// @DnDSaveInfo : "object" "e95f9673-e8f0-453b-ad22-df4f38bc455c"
var l57F28F4E_0 = instance_place(x + -1, y + 0, obj_tile);
if ((l57F28F4E_0 > 0))
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 74178FCF
	/// @DnDParent : 57F28F4E
	speed = 0;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 2428EC53
else
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 46363098
	/// @DnDParent : 2428EC53
	/// @DnDArgument : "speed" "-3"
	/// @DnDArgument : "type" "1"
	hspeed = -3;
}

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 1A904876
/// @DnDArgument : "xscale" "-1"
image_xscale = -1;
image_yscale = 1;