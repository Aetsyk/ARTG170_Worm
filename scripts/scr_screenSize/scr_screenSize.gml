// taken from GameMaker tutorial on screen scaling, modified with scale var
// https://gamemaker.io/en/tutorials/resolution-scaling-mobile
global.res_width = 640;
global.res_height = 480;
global.res_scale = 1;

window_set_size(global.res_width*global.res_scale, global.res_height*global.res_scale);
surface_resize(application_surface, global.res_width*global.res_scale, global.res_height*global.res_scale);