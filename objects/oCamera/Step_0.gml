/// @description Update Camera

// Update Destination
if (instance_exists(follow)) // follow references oPlayer
{
	xTo = follow.x;
	yTo = follow.y;
}

// Update object position
x += (xTo - x) / 25; // Creates smooth camera motion
y += (yTo - y) / 25;

// Keep camera center inside room
x = clamp(x, view_w_half+buff, room_width-view_w_half-buff);
y = clamp(y, view_h_half+buff, room_height-view_h_half-buff);


x += random_range(-shake_remain, shake_remain);
y += random_range(-shake_remain, shake_remain);  
shake_remain = max(0, shake_remain-((1/shake_length)*shake_magnitude));

// Update camera view
camera_set_view_pos(cam, x-view_w_half, y-view_w_half); // centers camera on player

if (layer_exists("Mountains")) // better if this layer is set as a variable prior (less expensive)
{
	layer_x("Mountains", x/2);
}

if (layer_exists("Trees")) // better if this layer is set as a variable prior (less expensive)
{
	layer_x("Trees", x/4);
}