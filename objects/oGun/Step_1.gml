x = oPlayer.x-1;
y = oPlayer.y+4;

image_angle = point_direction(x, y, mouse_x, mouse_y);

firingdelay -= 1;
recoil = max(0, recoil-1); //ensures recoil is always >= 0;

if (mouse_check_button(mb_left)) and (firingdelay < 0)
{
	recoil = 4;
	firingdelay = 5;
	ScreenShake(2,10);
	with (instance_create_layer(x, y, "Bullets", oBullet))
	{
		speed = 25;
		direction = other.image_angle + random_range(-3,3); // other is used to refer to original object (oGun)
		image_angle = direction;
	}
}

x = x - lengthdir_x(recoil, image_angle); // distance and angle to move rather than coordinates
y = y - lengthdir_y(recoil, image_angle);

if (image_angle > 90) and (image_angle < 270)
{
	image_yscale = -1;
}
else
{
	image_yscale = 1;
}