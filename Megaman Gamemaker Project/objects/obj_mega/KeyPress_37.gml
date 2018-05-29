/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 42B5542A
/// @DnDArgument : "var" "currentYCollision"
/// @DnDArgument : "value" "obj_tile"
if(currentYCollision == obj_tile)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 78489C2F
	/// @DnDParent : 42B5542A
	/// @DnDArgument : "imageind" "5"
	/// @DnDArgument : "spriteind" "spr_mega"
	/// @DnDSaveInfo : "spriteind" "f4629e79-0099-4b55-aacb-ced83d8a2dca"
	sprite_index = spr_mega;
	image_index = 5;
}