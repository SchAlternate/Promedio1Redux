/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 684BB562
/// @DnDArgument : "var" "BulletCount"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "3"
if(!(BulletCount >= 3))
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1AD5FF30
	/// @DnDParent : 684BB562
	/// @DnDArgument : "xpos" "16*image_xscale"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "-8"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_bullet"
	/// @DnDSaveInfo : "objectid" "69680f57-70b0-4cde-96ed-9fd331a29cbf"
	instance_create_layer(x + 16*image_xscale, y + -8, "Instances", obj_bullet);
}