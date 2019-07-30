/// @description Hit Flash

draw_self(); // what happens default without draw step

if (flash > 0)
{
	flash--;
	shader_set(shWhite);
	draw_self();
	shader_reset();
}