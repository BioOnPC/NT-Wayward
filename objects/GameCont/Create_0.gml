macros_set();
scrWeapons();
scrSkills();

global.current_frame = 0;
global.time_scale = 1;
text = "";
hud  = 0;

instance_create(x, y, VisCont);

hitme_create(0, 0, Player);