/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1
/// @DnDHash : 53688DE7
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_bullet"
/// @DnDSaveInfo : "object" "69680f57-70b0-4cde-96ed-9fd331a29cbf"
var l53688DE7_0 = instance_place(x + 0, y + 0, obj_bullet);
if ((l53688DE7_0 > 0))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 373E2C01
	/// @DnDParent : 53688DE7
	instance_destroy();
}