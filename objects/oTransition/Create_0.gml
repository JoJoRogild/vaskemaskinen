w = display_get_gui_width();
h = display_get_gui_height();
h_half = h * 0.5;
aniSlow = 1.5;

enum TRANS_MODE
{
	OFF,
	RESTART,
	GOTO,
	NEXT,
	INTRO
}
mode = TRANS_MODE.INTRO;
percent = 1;
target = room;