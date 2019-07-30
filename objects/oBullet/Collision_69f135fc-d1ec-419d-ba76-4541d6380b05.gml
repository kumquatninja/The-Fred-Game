/// @description Enemy Hit

with (other)
{
	hp--;
	flash = 3;
	hitfrom = other.direction; // other in other statement refers to oBullet
}

instance_destroy();