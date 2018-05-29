/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1
/// @DnDHash : 73BCE6B8
/// @DnDArgument : "x" "1"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_tile"
/// @DnDSaveInfo : "object" "e95f9673-e8f0-453b-ad22-df4f38bc455c"
var l73BCE6B8_0 = instance_place(x + 1, y + 0, obj_tile);
if ((l73BCE6B8_0 > 0))
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 7DA070E5
	/// @DnDParent : 73BCE6B8
	speed = 0;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 222CE8A6
else
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 4AF5CDC9
	/// @DnDParent : 222CE8A6
	/// @DnDArgument : "speed" "3"
	/// @DnDArgument : "type" "1"
	hspeed = 3;
}

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 304E4618
image_xscale = 1;
image_yscale = 1;