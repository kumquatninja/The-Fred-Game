
vsp += grv;

// Horizontal Collision
if( place_meeting(x+hsp, y, oWall) )
{
	while( !place_meeting(x+sign(hsp), y, oWall) ) // sign returns 1 or -1 depending on sign of variable
	{
		x += sign(hsp);
	}
	hsp = -hsp;
}

// Vertical Collision
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


// Animation
if( !place_meeting(x, y+1, oWall) )
{
	sprite_index = sEnemyA;
	image_speed = 0;
	if( sign(vsp) > 0 ) image_index =  1; else image_index = 0; // in-line IF-statement
}
else
{
	image_speed = 1;
	if( hsp == 0 )
	{
		sprite_index = sEnemy;
	}
	else
	{
		sprite_index = sEnemyR;
		image_xscale = sign(hsp); // changes direction
	}
}