/// @DnDAction : YoYo Games.Instances.Get_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 2EBD9CA5
/// @DnDArgument : "target" "current_frame"
/// @DnDArgument : "instvar" "15"
current_frame = image_index;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1661DCBF
/// @DnDArgument : "var" "current_frame"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "3"
if(current_frame >= 3)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 30ACC433
	/// @DnDParent : 1661DCBF
	/// @DnDArgument : "var" "ObjectState"
	if(ObjectState == 0)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 3AD7F7E7
		/// @DnDParent : 30ACC433
		/// @DnDArgument : "imageind" "3"
		/// @DnDArgument : "spriteind" "spr_mega"
		/// @DnDSaveInfo : "spriteind" "f4629e79-0099-4b55-aacb-ced83d8a2dca"
		sprite_index = spr_mega;
		image_index = 3;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4180D728
		/// @DnDParent : 30ACC433
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "ObjectState"
		ObjectState = 1;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3A6D1DCA
/// @DnDArgument : "var" "ObjectState"
/// @DnDArgument : "value" "1"
if(ObjectState == 1)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 2BB321F5
	/// @DnDParent : 3A6D1DCA
	/// @DnDArgument : "speed" "0"
	image_speed = 0;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 3BB5D62C
	/// @DnDParent : 3A6D1DCA
	/// @DnDArgument : "steps" "1"
	/// @DnDArgument : "steps_relative" "1"
	alarm_set(0, 1 + alarm_get(0));

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6ABE4E49
	/// @DnDParent : 3A6D1DCA
	/// @DnDArgument : "var" "alarm_get(0)"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "80"
	if(alarm_get(0) >= 80)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 4D5445F6
		/// @DnDParent : 6ABE4E49
		/// @DnDArgument : "imageind" "4"
		/// @DnDArgument : "spriteind" "spr_mega"
		/// @DnDSaveInfo : "spriteind" "f4629e79-0099-4b55-aacb-ced83d8a2dca"
		sprite_index = spr_mega;
		image_index = 4;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 703D3D36
	/// @DnDParent : 3A6D1DCA
	else
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 1C102F7F
		/// @DnDParent : 703D3D36
		/// @DnDArgument : "imageind" "3"
		/// @DnDArgument : "spriteind" "spr_mega"
		/// @DnDSaveInfo : "spriteind" "f4629e79-0099-4b55-aacb-ced83d8a2dca"
		sprite_index = spr_mega;
		image_index = 3;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0447CB59
	/// @DnDParent : 3A6D1DCA
	/// @DnDArgument : "var" "alarm_get(0)"
	/// @DnDArgument : "value" "100"
	if(alarm_get(0) == 100)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 28D64480
		/// @DnDParent : 0447CB59
		/// @DnDArgument : "steps" "0"
		alarm_set(0, 0);
	}
}

/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 2EDFA93C
/// @DnDArgument : "x" "hspeed"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "vspeed - gravity"
/// @DnDArgument : "y_relative" "1"
x += hspeed;
y += vspeed - gravity;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 609BC6A8
/// @DnDArgument : "var" "hspeed"
/// @DnDArgument : "not" "1"
if(!(hspeed == 0))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 36427A41
	/// @DnDParent : 609BC6A8
	/// @DnDArgument : "var" "vspeed"
	if(vspeed == 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 60E25454
		/// @DnDParent : 36427A41
		/// @DnDArgument : "expr" "2"
		/// @DnDArgument : "var" "ObjectState"
		ObjectState = 2;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 18EA2431
/// @DnDArgument : "var" "ObjectState"
/// @DnDArgument : "value" "2"
if(ObjectState == 2)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 5BF9AE45
	/// @DnDParent : 18EA2431
	image_speed = 1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 74256C4C
	/// @DnDParent : 18EA2431
	/// @DnDArgument : "var" "current_frame"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "10"
	if(current_frame >= 10)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 03B3B578
		/// @DnDParent : 74256C4C
		/// @DnDArgument : "imageind" "6"
		/// @DnDArgument : "spriteind" "spr_mega"
		/// @DnDSaveInfo : "spriteind" "f4629e79-0099-4b55-aacb-ced83d8a2dca"
		sprite_index = spr_mega;
		image_index = 6;
	}
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1
/// @DnDHash : 0F25E327
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_tile"
/// @DnDSaveInfo : "object" "e95f9673-e8f0-453b-ad22-df4f38bc455c"
var l0F25E327_0 = instance_place(x + 0, y + 1, obj_tile);
if ((l0F25E327_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4F7934C7
	/// @DnDParent : 0F25E327
	/// @DnDArgument : "expr" "other.id"
	/// @DnDArgument : "var" "currentYCollision"
	currentYCollision = other.id;

	/// @DnDAction : YoYo Games.Movement.Set_Gravity_Force
	/// @DnDVersion : 1
	/// @DnDHash : 15E21C3F
	/// @DnDParent : 0F25E327
	/// @DnDArgument : "force" "0"
	gravity = 0;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 6622918A
	/// @DnDParent : 0F25E327
	/// @DnDArgument : "type" "2"
	vspeed = 0;

	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 29DBBB66
	/// @DnDParent : 0F25E327
	/// @DnDArgument : "y" "currentYCollision.y-1"
	
	y = currentYCollision.y-1;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 5273E20D
else
{
	/// @DnDAction : YoYo Games.Movement.Set_Gravity_Force
	/// @DnDVersion : 1
	/// @DnDHash : 6AC52154
	/// @DnDParent : 5273E20D
	/// @DnDArgument : "force" "-1"
	/// @DnDArgument : "force_relative" "1"
	gravity += -1;
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1
/// @DnDHash : 44452FE7
/// @DnDArgument : "x" "image_xscale"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_dog"
/// @DnDSaveInfo : "object" "b1349e4b-96ec-48a0-b58e-4bfc85ab497c"
var l44452FE7_0 = instance_place(x + image_xscale, y + 0, obj_dog);
if ((l44452FE7_0 > 0))
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 2C0C09C3
	/// @DnDParent : 44452FE7
	/// @DnDArgument : "x" "-image_xscale *20"
	/// @DnDArgument : "x_relative" "1"
	x += -image_xscale *20;

	/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 0D15B2BB
	/// @DnDParent : 44452FE7
	/// @DnDArgument : "lives" "-2"
	/// @DnDArgument : "lives_relative" "1"
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	__dnd_lives += real(-2);
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1
/// @DnDHash : 1E61F0F8
/// @DnDArgument : "x" "image_xscale"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_health"
/// @DnDSaveInfo : "object" "ae950d0a-b500-44b8-b8df-569412dcbb50"
var l1E61F0F8_0 = instance_place(x + image_xscale, y + 0, obj_health);
if ((l1E61F0F8_0 > 0))
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 7CC29879
	/// @DnDParent : 1E61F0F8
	/// @DnDArgument : "lives" "8"
	/// @DnDArgument : "lives_relative" "1"
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	__dnd_lives += real(8);
}

/// @DnDAction : YoYo Games.Instance Variables.Get_Lives
/// @DnDVersion : 1
/// @DnDHash : 4A13F6F3
/// @DnDArgument : "var" "healthy"
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
healthy = __dnd_lives;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 093713F1
/// @DnDArgument : "var" "healthy"
/// @DnDArgument : "op" "3"
if(healthy <= 0)
{
	/// @DnDAction : YoYo Games.Rooms.Restart_Room
	/// @DnDVersion : 1
	/// @DnDHash : 74211889
	/// @DnDParent : 093713F1
	room_restart();
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 573D1DC9
/// @DnDArgument : "var" "healthy"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "28"
if(healthy >= 28)
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 2EB86977
	/// @DnDParent : 573D1DC9
	/// @DnDArgument : "lives" "28"
	
	__dnd_lives = real(28);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 259BEEB6
/// @DnDArgument : "var" "vspeed"
/// @DnDArgument : "not" "1"
if(!(vspeed == 0))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3A9DBC08
	/// @DnDParent : 259BEEB6
	/// @DnDArgument : "expr" "4"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "ObjectState"
	ObjectState += 4;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7C53FB09
/// @DnDArgument : "var" "ObjectState"
/// @DnDArgument : "value" "4"
if(ObjectState == 4)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 7B36A8F5
	/// @DnDParent : 7C53FB09
	/// @DnDArgument : "imageind" "10"
	/// @DnDArgument : "spriteind" "spr_mega"
	/// @DnDSaveInfo : "spriteind" "f4629e79-0099-4b55-aacb-ced83d8a2dca"
	sprite_index = spr_mega;
	image_index = 10;
}