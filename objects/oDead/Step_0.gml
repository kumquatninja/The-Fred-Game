if (done == 0)
{
	vsp += grv;

	// Horizontal Collision
	if( place_meeting(x+hsp, y, oWall) )
	{
		while( !place_meeting(x+sign(hsp), y, oWall) ) // sign returns 1 or -1 depending on sign of variable
		{
			x += sign(hsp);
		}
		hsp = 0;
	}

	// Vertical Collision
	if( place_meeting(x, y+vsp, oWall) )
	{
		if (vsp > 0)
		{
			done = 1; // if falling down
			image_index = 1;
		}
		
		while( !place_meeting(x, y+sign(vsp), oWall) )
		{
			y += sign(vsp)
		}
		vsp = 0;
	}

	x += hsp; // built-in property of object - x-coordinate within room
	y += vsp;
}