/// @description Size variables and mode setup

w = display_get_gui_width(); // width of screen
h = display_get_gui_height();
h_half = h * 0.5;

enum TRANS_MODE // enums turns numbers into readable words
{
	OFF, // constants are all-caps
	NEXT, // by default = 0,1,2,..
	GOTO,
	RESTART,
	INTRO
}

// TRANS_MODE.OFF returns associated int

mode = TRANS_MODE.INTRO;
percent = 1; // between 0 (no black) and 1 (all black)
target = room;  