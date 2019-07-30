#region // Get Player Input

if (hascontrol)
{
	key_left = keyboard_check(vk_left) or keyboard_check(ord("A")); // returns bool (1 or 0) if key is being HELD
	key_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
	key_jump = keyboard_check_pressed(vk_space); // returns bool if key WAS PRESSED during current frame
}
else
{
	key_left = 0;
	key_right = 0;
	key_jump = 0;
}

#endregion

#region // Calculate Movement

var move = key_right - key_left; // var creates a TEMPORARY variable only for that frame
hsp = move * walksp;
vsp += grv;

if( place_meeting(x, y+1, oWall) and key_jump ) // checks if player is on floor
{
	vsp = -7;
}

#endregion

#region // Horizontal Collision

if( place_meeting(x+hsp, y, oWall) )
{
	while( !place_meeting(x+sign(hsp), y, oWall) ) // sign returns 1 or -1 depending on sign of variable
	{
		x += sign(hsp);
	}
	hsp = 0;
}

#endregion

#region // Vertical Collision
if( place_meeting(x, y+vsp, oWall) )
{
	while( !place_meeting(x, y+sign(vsp), oWall) )
	{
		y += sign(vsp)
	}
	vsp = 0;
}

x += hsp; // built-in property of object - x-coordinate within room
y += vsp;

#endregion

#region // Animation

if( !place_meeting(x, y+1, oWall) )
{
	sprite_index = sPlayerA;
	image_speed = 0;
	if( sign(vsp) > 0 ) image_index =  1; else image_index = 0; // in-line IF-statement
}
else
{
	image_speed = 1;
	if( hsp == 0 )
	{
		sprite_index = sPlayer;
	}
	else
	{
		sprite_index = sPlayerR;
		image_xscale = sign(hsp); // changes direction
	}
}

#endregion