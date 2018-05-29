/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1
/// @DnDHash : 11E4746A
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_mega"
/// @DnDSaveInfo : "object" "85c96feb-2d57-44bb-9e55-de0c6c582dc4"
var l11E4746A_0 = instance_place(x + 0, y + 0, obj_mega);
if ((l11E4746A_0 > 0))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3E432FC8
	/// @DnDParent : 11E4746A
	instance_destroy();
}