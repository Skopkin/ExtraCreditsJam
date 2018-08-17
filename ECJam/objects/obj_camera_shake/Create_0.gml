//basic shake toggle and intensity
shake = false;
shake_amount = 1;

//default camera
my_camera = view_camera[0];


//rotation variables
rotation_toggle = false;
rotation_amount = 1;

//default view pos
view_pos_x= camera_get_view_x(my_camera);
view_pos_y = camera_get_view_y(my_camera);

//zoom variables
view_h = camera_get_view_height(my_camera);
view_w = camera_get_view_width(my_camera);
zoom_amount = 0;
zoom_toggle = false;
zoomed = false;


shake_decay = .15; // usually between 0 & 1
