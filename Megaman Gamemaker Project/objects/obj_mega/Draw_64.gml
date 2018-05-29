/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Lives
/// @DnDVersion : 1
/// @DnDHash : 64A6E0C8
/// @DnDArgument : "x" "8"
/// @DnDArgument : "y" "16"
/// @DnDArgument : "sprite" "spr_life"
/// @DnDArgument : "stackorder" "1"
/// @DnDSaveInfo : "sprite" "bcb08f33-a442-4e11-a22d-562d35ea2a32"
var l64A6E0C8_0 = sprite_get_height(spr_life);
var l64A6E0C8_1 = 0;
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
for(var l64A6E0C8_2 = __dnd_lives; l64A6E0C8_2 > 0; --l64A6E0C8_2) {
	draw_sprite(spr_life, 0, 8, 16 + l64A6E0C8_1);
	l64A6E0C8_1 += l64A6E0C8_0;
}