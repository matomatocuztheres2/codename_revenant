/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 17799D1F
/// @DnDArgument : "var" "cam_pos"
/// @DnDArgument : "op" "2"
if(cam_pos > 0)
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 7844FBF8
	/// @DnDParent : 17799D1F
	/// @DnDArgument : "code" "if(!(cam_pos = 2))$(13_10){$(13_10)	//Set ix to never be off screen$(13_10)	if(cam_state = 2)$(13_10)	{$(13_10)		if(ix < 0 )$(13_10)		{$(13_10)			ix = 0;$(13_10)		}$(13_10)		else$(13_10)		{$(13_10)			if(ix > cam_state_corr_w[cam_state] )$(13_10)			{$(13_10)				ix = cam_state_corr_w[cam_state];$(13_10)			}$(13_10)		}$(13_10)		//Set iy to never be off screen$(13_10)		if(iy < 0 )$(13_10)		{$(13_10)			iy = 0;$(13_10)		}$(13_10)		else$(13_10)		{$(13_10)			if(iy > cam_state_corr_h[cam_state] )$(13_10)			{$(13_10)				iy = cam_state_corr_h[cam_state];$(13_10)			}$(13_10)		}$(13_10)	}$(13_10)	else$(13_10)	{$(13_10)		if(cam_state = 4)$(13_10)		{$(13_10)			if(ix < 0 )$(13_10)			{$(13_10)				ix = 0;$(13_10)			}$(13_10)			else$(13_10)			{$(13_10)				if(ix > cam_state_corr_w[cam_state] )$(13_10)				{$(13_10)					ix = cam_state_corr_w[cam_state];$(13_10)				}$(13_10)			}$(13_10)			//Set iy to never be off screen$(13_10)			if(iy < 0 )$(13_10)			{$(13_10)				iy = 0;$(13_10)			}$(13_10)			else$(13_10)			{$(13_10)				if(iy > cam_state_corr_h[cam_state] )$(13_10)				{$(13_10)					iy = cam_state_corr_h[cam_state];$(13_10)				}$(13_10)			}$(13_10)		}$(13_10)	}$(13_10)	$(13_10)	//set camera move variable$(13_10)	if(cam_state < 3)$(13_10)	{$(13_10)		cam_x = (ix - x)/16;$(13_10)		cam_y = (iy - y)/16;$(13_10)	$(13_10)		//set camera size variable$(13_10)		cam_width = cam_state_def_w[cam_state];$(13_10)		cam_height = cam_state_def_h[cam_state];$(13_10)	}$(13_10)	$(13_10)	if(cam_state = 0)$(13_10)	{$(13_10)		icw = 1920;$(13_10)		ich = 1080;$(13_10)	}$(13_10)	else$(13_10)	{$(13_10)		if(cam_state = 1)$(13_10)		{$(13_10)			icw = 1280;$(13_10)			ich = 720;$(13_10)		}$(13_10)		else$(13_10)		{$(13_10)			if(cam_state = 2)$(13_10)			{$(13_10)				icw = 640;$(13_10)				ich = 360;$(13_10)			}$(13_10)			else$(13_10)			{$(13_10)				if(cam_state = 3)$(13_10)				{$(13_10)					icw = 1280;$(13_10)					ich = 720;$(13_10)				}$(13_10)				else$(13_10)				{$(13_10)					if(cam_state = 4)$(13_10)					{$(13_10)						icw = 640;$(13_10)						ich = 360;$(13_10)					}$(13_10)					else$(13_10)					{$(13_10)						if(cam_state = 5)$(13_10)						{$(13_10)							icw = 1920;$(13_10)							ich = 1080;$(13_10)						}$(13_10)					}$(13_10)				}$(13_10)			}$(13_10)		}$(13_10)	}$(13_10)	if(cam_state < 3)$(13_10)	{$(13_10)		cam_width = ((cam_width - icw)/16);$(13_10)		cam_height = ((cam_height - ich)/16);$(13_10)	}$(13_10)	cam_pos = 2;$(13_10)}$(13_10)//init camera move$(13_10)if(cam_state < 3)$(13_10){$(13_10)	x += cam_x;$(13_10)	y += cam_y;$(13_10)	icw += cam_width;$(13_10)	ich += cam_height;$(13_10)	camera_set_view_pos(view_camera[0],x,y);$(13_10)	//init camera resize$(13_10)	window_set_size(icw,ich);$(13_10)	camera_set_view_size(view_camera[0],icw,ich);$(13_10)	surface_resize(application_surface,icw,ich);$(13_10)$(13_10)	//move settings option and health button to be on camera screen$(13_10)	if(cam_state = 2)$(13_10)	{$(13_10)		menu_icon_ob.x = self.x+620;$(13_10)		menu_icon_ob.y = self.y+18;$(13_10)		menu_icon_ob.image_xscale = .4;$(13_10)		menu_icon_ob.image_yscale = .4;$(13_10)		$(13_10)		if(instance_exists(player_health_ob))$(13_10)		{$(13_10)			player_health_ob.x = self.x+20$(13_10)			player_health_ob.y = self.y+18;$(13_10)			player_health_ob.x_scale = .4;$(13_10)			player_health_ob.y_scale = .4;$(13_10)			player_health_ob.image_xscale = .4;$(13_10)			player_health_ob.image_yscale = .4;$(13_10)		}$(13_10)		if(instance_exists(subtitle_ob))$(13_10)		{$(13_10)			subtitle_ob.text_height_max = 108;$(13_10)			subtitle_ob.text_width_max = 460;$(13_10)			subtitle_ob.text_bord = 9;$(13_10)			subtitle_ob.text_width = string_width_ext(subtitle_ob.subtitle_opt[subtitle_ob.sub_opt],subtitle_ob.text_bord*2,subtitle_ob.text_width_max);$(13_10)			subtitle_ob.text_height = string_height_ext(subtitle_ob.subtitle_opt[subtitle_ob.sub_opt],subtitle_ob.text_bord*2,subtitle_ob.text_width_max);$(13_10)			subtitle_ob.text_length = string_length(subtitle_ob.subtitle_opt[subtitle_ob.sub_opt]);$(13_10)			subtitle_ob.text_offset = 0;$(13_10)			subtitle_ob.text_x_offset = 0;$(13_10)			if(subtitle_ob.text_width < subtitle_ob.text_width_max)$(13_10)			{$(13_10)				subtitle_ob.text_x_offset = 230-(subtitle_ob.text_width/2);$(13_10)			}$(13_10)			if(subtitle_ob.text_height > subtitle_ob.text_height_max)$(13_10)			{$(13_10)				subtitle_ob.text_offset = subtitle_ob.text_height-subtitle_ob.text_height_max;$(13_10)			}$(13_10)			subtitle_ob.x = self.x+40;$(13_10)			subtitle_ob.y = self.y+280;$(13_10)		}$(13_10)	}$(13_10)	else$(13_10)	{$(13_10)		if(cam_state = 1)$(13_10)		{$(13_10)			menu_icon_ob.x = self.x+1260;$(13_10)			menu_icon_ob.y = self.y+36;$(13_10)			menu_icon_ob.image_xscale = .7;$(13_10)			menu_icon_ob.image_yscale = .7;$(13_10)			if(instance_exists(player_health_ob))$(13_10)			{$(13_10)				player_health_ob.x = self.x+18$(13_10)				player_health_ob.y = self.y+36;$(13_10)				player_health_ob.x_scale = .7;$(13_10)				player_health_ob.y_scale = .7;$(13_10)				player_health_ob.image_xscale = .7;$(13_10)				player_health_ob.image_yscale = .7;$(13_10)			}$(13_10)		}$(13_10)		else$(13_10)		{$(13_10)			if(cam_state = 0)$(13_10)			{$(13_10)				menu_icon_ob.x = self.x+1898;$(13_10)				menu_icon_ob.y = self.y+36;$(13_10)				menu_icon_ob.image_xscale = 1;$(13_10)				menu_icon_ob.image_yscale = 1;$(13_10)				if(instance_exists(player_health_ob))$(13_10)				{$(13_10)					player_health_ob.x = self.x+18$(13_10)					player_health_ob.y = self.y+36;$(13_10)					player_health_ob.x_scale = 1;$(13_10)					player_health_ob.y_scale = 1;$(13_10)					player_health_ob.image_xscale = 1;$(13_10)					player_health_ob.image_yscale = 1;$(13_10)				}$(13_10)			}$(13_10)		}$(13_10)	}$(13_10)	//Check if move complete$(13_10)	if(x = ix)$(13_10)	{$(13_10)		if(y = iy)$(13_10)		{$(13_10)			cam_pos = 0;	$(13_10)			ix = 0;$(13_10)			iy = 0;$(13_10)		}$(13_10)	}$(13_10)}$(13_10)else$(13_10){$(13_10)	if(cam_state > 2)$(13_10)	{$(13_10)		//Insert code for immediate camera move with no expansion$(13_10)		//Cam state 3 snaps cam to 1280 px$(13_10)		//Cam state 4 snaps cam to 640 px$(13_10)		//Cam state 5 snaps cam to 1920 px$(13_10)		$(13_10)		cam_x = ix;$(13_10)		cam_y = iy;$(13_10)		x = cam_x;$(13_10)		y = cam_y;$(13_10)		camera_set_view_pos(view_camera[0],x,y);$(13_10)		//init camera resize$(13_10)		window_set_size(icw,ich);$(13_10)		camera_set_view_size(view_camera[0],icw,ich);$(13_10)		surface_resize(application_surface,icw,ich);$(13_10)		$(13_10)		if(cam_state = 3)$(13_10)		{$(13_10)			if(instance_exists(subtitle_ob))$(13_10)			{$(13_10)				subtitle_ob.text_height_max = 108;$(13_10)				subtitle_ob.text_width_max = 640;$(13_10)				subtitle_ob.text_bord = 9;$(13_10)				subtitle_ob.text_width = string_width_ext(subtitle_ob.subtitle_opt[subtitle_ob.sub_opt],subtitle_ob.text_bord*2,subtitle_ob.text_width_max);$(13_10)				subtitle_ob.text_height = string_height_ext(subtitle_ob.subtitle_opt[subtitle_ob.sub_opt],subtitle_ob.text_bord*2,subtitle_ob.text_width_max);$(13_10)				subtitle_ob.text_length = string_length(subtitle_ob.subtitle_opt[subtitle_ob.sub_opt]);$(13_10)				subtitle_ob.text_offset = 0;$(13_10)				subtitle_ob.text_x_offset = 0;$(13_10)				if(subtitle_ob.text_width < subtitle_ob.text_width_max)$(13_10)				{$(13_10)					subtitle_ob.text_x_offset = 270-(subtitle_ob.text_width/2);$(13_10)				}$(13_10)				if(subtitle_ob.text_height > subtitle_ob.text_height_max)$(13_10)				{$(13_10)					subtitle_ob.text_offset = subtitle_ob.text_height-subtitle_ob.text_height_max;$(13_10)				}$(13_10)				subtitle_ob.x = self.x+120$(13_10)				subtitle_ob.y = self.y+600;$(13_10)			}$(13_10)		}$(13_10)		else$(13_10)		{$(13_10)			if(cam_state = 5)$(13_10)			{$(13_10)				menu_icon_ob.x = 1898;$(13_10)				menu_icon_ob.y = 36;$(13_10)				menu_icon_ob.image_xscale = 1;$(13_10)				menu_icon_ob.image_yscale = 1;$(13_10)				$(13_10)			}$(13_10)			else$(13_10)			{$(13_10)				//move settings option and health button to be on camera screen$(13_10)				if(cam_state = 4)$(13_10)				{$(13_10)					menu_icon_ob.x = self.x+620;$(13_10)					menu_icon_ob.y = self.y+18;$(13_10)					menu_icon_ob.image_xscale = .4;$(13_10)					menu_icon_ob.image_yscale = .4;$(13_10)		$(13_10)					if(instance_exists(player_health_ob))$(13_10)					{$(13_10)						player_health_ob.x = self.x+20$(13_10)						player_health_ob.y = self.y+18;$(13_10)						player_health_ob.x_scale = .4;$(13_10)						player_health_ob.y_scale = .4;$(13_10)						player_health_ob.image_xscale = .4;$(13_10)						player_health_ob.image_yscale = .4;$(13_10)					}$(13_10)					if(instance_exists(subtitle_ob))$(13_10)					{$(13_10)						subtitle_ob.text_height_max = 108;$(13_10)						subtitle_ob.text_width_max = 460;$(13_10)						subtitle_ob.text_bord = 9;$(13_10)						subtitle_ob.text_width = string_width_ext(subtitle_ob.subtitle_opt[subtitle_ob.sub_opt],subtitle_ob.text_bord*2,subtitle_ob.text_width_max);$(13_10)						subtitle_ob.text_height = string_height_ext(subtitle_ob.subtitle_opt[subtitle_ob.sub_opt],subtitle_ob.text_bord*2,subtitle_ob.text_width_max);$(13_10)						subtitle_ob.text_length = string_length(subtitle_ob.subtitle_opt[subtitle_ob.sub_opt]);$(13_10)						subtitle_ob.text_offset = 0;$(13_10)						subtitle_ob.text_x_offset = 0;$(13_10)						if(subtitle_ob.text_width < subtitle_ob.text_width_max)$(13_10)						{$(13_10)							subtitle_ob.text_x_offset = 230-(subtitle_ob.text_width/2);$(13_10)						}$(13_10)						if(subtitle_ob.text_height > subtitle_ob.text_height_max)$(13_10)						{$(13_10)							subtitle_ob.text_offset = subtitle_ob.text_height-subtitle_ob.text_height_max;$(13_10)						}$(13_10)						subtitle_ob.x = self.x+40;$(13_10)						subtitle_ob.y = self.y+280;$(13_10)					}$(13_10)				}$(13_10)			}$(13_10)		}$(13_10)		$(13_10)		//Run check for Camera Move completion$(13_10)		if(x = ix)$(13_10)		{$(13_10)			if(y = iy)$(13_10)			{$(13_10)				cam_pos = 0;$(13_10)				ix = 0;$(13_10)				iy = 0;				$(13_10)			}$(13_10)		}$(13_10)	}$(13_10)}$(13_10)"
	if(!(cam_pos = 2))
	{
		//Set ix to never be off screen
		if(cam_state = 2)
		{
			if(ix < 0 )
			{
				ix = 0;
			}
			else
			{
				if(ix > cam_state_corr_w[cam_state] )
				{
					ix = cam_state_corr_w[cam_state];
				}
			}
			//Set iy to never be off screen
			if(iy < 0 )
			{
				iy = 0;
			}
			else
			{
				if(iy > cam_state_corr_h[cam_state] )
				{
					iy = cam_state_corr_h[cam_state];
				}
			}
		}
		else
		{
			if(cam_state = 4)
			{
				if(ix < 0 )
				{
					ix = 0;
				}
				else
				{
					if(ix > cam_state_corr_w[cam_state] )
					{
						ix = cam_state_corr_w[cam_state];
					}
				}
				//Set iy to never be off screen
				if(iy < 0 )
				{
					iy = 0;
				}
				else
				{
					if(iy > cam_state_corr_h[cam_state] )
					{
						iy = cam_state_corr_h[cam_state];
					}
				}
			}
		}
		
		//set camera move variable
		if(cam_state < 3)
		{
			cam_x = (ix - x)/16;
			cam_y = (iy - y)/16;
		
			//set camera size variable
			cam_width = cam_state_def_w[cam_state];
			cam_height = cam_state_def_h[cam_state];
		}
		
		if(cam_state = 0)
		{
			icw = 1920;
			ich = 1080;
		}
		else
		{
			if(cam_state = 1)
			{
				icw = 1280;
				ich = 720;
			}
			else
			{
				if(cam_state = 2)
				{
					icw = 640;
					ich = 360;
				}
				else
				{
					if(cam_state = 3)
					{
						icw = 1280;
						ich = 720;
					}
					else
					{
						if(cam_state = 4)
						{
							icw = 640;
							ich = 360;
						}
						else
						{
							if(cam_state = 5)
							{
								icw = 1920;
								ich = 1080;
							}
						}
					}
				}
			}
		}
		if(cam_state < 3)
		{
			cam_width = ((cam_width - icw)/16);
			cam_height = ((cam_height - ich)/16);
		}
		cam_pos = 2;
	}
	//init camera move
	if(cam_state < 3)
	{
		x += cam_x;
		y += cam_y;
		icw += cam_width;
		ich += cam_height;
		camera_set_view_pos(view_camera[0],x,y);
		//init camera resize
		window_set_size(icw,ich);
		camera_set_view_size(view_camera[0],icw,ich);
		surface_resize(application_surface,icw,ich);
	
		//move settings option and health button to be on camera screen
		if(cam_state = 2)
		{
			menu_icon_ob.x = self.x+620;
			menu_icon_ob.y = self.y+18;
			menu_icon_ob.image_xscale = .4;
			menu_icon_ob.image_yscale = .4;
			
			if(instance_exists(player_health_ob))
			{
				player_health_ob.x = self.x+20
				player_health_ob.y = self.y+18;
				player_health_ob.x_scale = .4;
				player_health_ob.y_scale = .4;
				player_health_ob.image_xscale = .4;
				player_health_ob.image_yscale = .4;
			}
			if(instance_exists(subtitle_ob))
			{
				subtitle_ob.text_height_max = 108;
				subtitle_ob.text_width_max = 460;
				subtitle_ob.text_bord = 9;
				subtitle_ob.text_width = string_width_ext(subtitle_ob.subtitle_opt[subtitle_ob.sub_opt],subtitle_ob.text_bord*2,subtitle_ob.text_width_max);
				subtitle_ob.text_height = string_height_ext(subtitle_ob.subtitle_opt[subtitle_ob.sub_opt],subtitle_ob.text_bord*2,subtitle_ob.text_width_max);
				subtitle_ob.text_length = string_length(subtitle_ob.subtitle_opt[subtitle_ob.sub_opt]);
				subtitle_ob.text_offset = 0;
				subtitle_ob.text_x_offset = 0;
				if(subtitle_ob.text_width < subtitle_ob.text_width_max)
				{
					subtitle_ob.text_x_offset = 230-(subtitle_ob.text_width/2);
				}
				if(subtitle_ob.text_height > subtitle_ob.text_height_max)
				{
					subtitle_ob.text_offset = subtitle_ob.text_height-subtitle_ob.text_height_max;
				}
				subtitle_ob.x = self.x+40;
				subtitle_ob.y = self.y+280;
			}
		}
		else
		{
			if(cam_state = 1)
			{
				menu_icon_ob.x = self.x+1260;
				menu_icon_ob.y = self.y+36;
				menu_icon_ob.image_xscale = .7;
				menu_icon_ob.image_yscale = .7;
				if(instance_exists(player_health_ob))
				{
					player_health_ob.x = self.x+18
					player_health_ob.y = self.y+36;
					player_health_ob.x_scale = .7;
					player_health_ob.y_scale = .7;
					player_health_ob.image_xscale = .7;
					player_health_ob.image_yscale = .7;
				}
			}
			else
			{
				if(cam_state = 0)
				{
					menu_icon_ob.x = self.x+1898;
					menu_icon_ob.y = self.y+36;
					menu_icon_ob.image_xscale = 1;
					menu_icon_ob.image_yscale = 1;
					if(instance_exists(player_health_ob))
					{
						player_health_ob.x = self.x+18
						player_health_ob.y = self.y+36;
						player_health_ob.x_scale = 1;
						player_health_ob.y_scale = 1;
						player_health_ob.image_xscale = 1;
						player_health_ob.image_yscale = 1;
					}
				}
			}
		}
		//Check if move complete
		if(x = ix)
		{
			if(y = iy)
			{
				cam_pos = 0;	
				ix = 0;
				iy = 0;
			}
		}
	}
	else
	{
		if(cam_state > 2)
		{
			//Insert code for immediate camera move with no expansion
			//Cam state 3 snaps cam to 1280 px
			//Cam state 4 snaps cam to 640 px
			//Cam state 5 snaps cam to 1920 px
			
			cam_x = ix;
			cam_y = iy;
			x = cam_x;
			y = cam_y;
			camera_set_view_pos(view_camera[0],x,y);
			//init camera resize
			window_set_size(icw,ich);
			camera_set_view_size(view_camera[0],icw,ich);
			surface_resize(application_surface,icw,ich);
			
			if(cam_state = 3)
			{
				if(instance_exists(subtitle_ob))
				{
					subtitle_ob.text_height_max = 108;
					subtitle_ob.text_width_max = 640;
					subtitle_ob.text_bord = 9;
					subtitle_ob.text_width = string_width_ext(subtitle_ob.subtitle_opt[subtitle_ob.sub_opt],subtitle_ob.text_bord*2,subtitle_ob.text_width_max);
					subtitle_ob.text_height = string_height_ext(subtitle_ob.subtitle_opt[subtitle_ob.sub_opt],subtitle_ob.text_bord*2,subtitle_ob.text_width_max);
					subtitle_ob.text_length = string_length(subtitle_ob.subtitle_opt[subtitle_ob.sub_opt]);
					subtitle_ob.text_offset = 0;
					subtitle_ob.text_x_offset = 0;
					if(subtitle_ob.text_width < subtitle_ob.text_width_max)
					{
						subtitle_ob.text_x_offset = 270-(subtitle_ob.text_width/2);
					}
					if(subtitle_ob.text_height > subtitle_ob.text_height_max)
					{
						subtitle_ob.text_offset = subtitle_ob.text_height-subtitle_ob.text_height_max;
					}
					subtitle_ob.x = self.x+120
					subtitle_ob.y = self.y+600;
				}
			}
			else
			{
				if(cam_state = 5)
				{
					menu_icon_ob.x = 1898;
					menu_icon_ob.y = 36;
					menu_icon_ob.image_xscale = 1;
					menu_icon_ob.image_yscale = 1;
					
				}
				else
				{
					//move settings option and health button to be on camera screen
					if(cam_state = 4)
					{
						menu_icon_ob.x = self.x+620;
						menu_icon_ob.y = self.y+18;
						menu_icon_ob.image_xscale = .4;
						menu_icon_ob.image_yscale = .4;
			
						if(instance_exists(player_health_ob))
						{
							player_health_ob.x = self.x+20
							player_health_ob.y = self.y+18;
							player_health_ob.x_scale = .4;
							player_health_ob.y_scale = .4;
							player_health_ob.image_xscale = .4;
							player_health_ob.image_yscale = .4;
						}
						if(instance_exists(subtitle_ob))
						{
							subtitle_ob.text_height_max = 108;
							subtitle_ob.text_width_max = 460;
							subtitle_ob.text_bord = 9;
							subtitle_ob.text_width = string_width_ext(subtitle_ob.subtitle_opt[subtitle_ob.sub_opt],subtitle_ob.text_bord*2,subtitle_ob.text_width_max);
							subtitle_ob.text_height = string_height_ext(subtitle_ob.subtitle_opt[subtitle_ob.sub_opt],subtitle_ob.text_bord*2,subtitle_ob.text_width_max);
							subtitle_ob.text_length = string_length(subtitle_ob.subtitle_opt[subtitle_ob.sub_opt]);
							subtitle_ob.text_offset = 0;
							subtitle_ob.text_x_offset = 0;
							if(subtitle_ob.text_width < subtitle_ob.text_width_max)
							{
								subtitle_ob.text_x_offset = 230-(subtitle_ob.text_width/2);
							}
							if(subtitle_ob.text_height > subtitle_ob.text_height_max)
							{
								subtitle_ob.text_offset = subtitle_ob.text_height-subtitle_ob.text_height_max;
							}
							subtitle_ob.x = self.x+40;
							subtitle_ob.y = self.y+280;
						}
					}
				}
			}
			
			//Run check for Camera Move completion
			if(x = ix)
			{
				if(y = iy)
				{
					cam_pos = 0;
					ix = 0;
					iy = 0;				
				}
			}
		}
	}
}