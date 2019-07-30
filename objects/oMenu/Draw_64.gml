/// @desc Draw Menu

draw_set_font(fMenu); // always set these FIRST when working with text
draw_set_halign(fa_right); // right-aligned text
draw_set_valign(fa_bottom);

for (var i = 0; i < menu_items; i++)
{
	var offset = 2;
	var txt = menu[i];
	if (menu_cursor = i)
	{
		txt = string_insert("> ", txt, 0);
		var col = c_white;
	}
	else
	{
		var col = c_gray;
	}
	var xx = menu_x;
	var yy = menu_y - (menu_itemheight * (i * 1.5));
	
	draw_set_color(c_black);
	draw_text(xx-offset,yy,txt);
	draw_text(xx+offset,yy,txt);
	draw_text(xx,yy+offset,txt);
	draw_text(xx,yy-offset,txt);
	draw_set_color(col);
	draw_text(xx,yy,txt);
}

// custom title
draw_set_font(fTitle);
draw_set_color(c_black);
draw_text(title_x-offset,title_y,title_txt);
draw_text(title_x+offset,title_y,title_txt);
draw_text(title_x,title_y+offset,title_txt);
draw_text(title_x,title_y-offset,title_txt);
draw_set_color(title_col);
draw_text(title_x, title_y, title_txt);
