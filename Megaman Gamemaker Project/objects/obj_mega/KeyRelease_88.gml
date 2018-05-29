/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 400D7761
/// @DnDArgument : "var" "gravity"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "vspeed"
if(gravity > vspeed)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 7162AA7F
	/// @DnDParent : 400D7761
	/// @DnDArgument : "speed" "-5"
	/// @DnDArgument : "type" "2"
	vspeed = -5;
}