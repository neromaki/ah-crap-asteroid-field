show_debug_message("Ship angle: " + string(ship_angle));
     
if ( sign( ship_angle ) < 0 )
{
    ship_speed = ship_angle * -1;
}
else if ( sign( ship_angle ) > 0 )
{
    ship_speed = ship_angle;
    show_debug_message("Setting speed to " + string(ship_speed));
}

ship_speed = (ship_speed / 100) * 8;
show_debug_message("Final speed: " + string(ship_speed));

if ( sign( ship_angle ) < 0 )
{
    // Going up
    motion_set(270, ship_speed);   
    show_debug_message("Setting motion at 90 degrees to " + string(ship_speed)); 
}
else if ( sign( ship_angle ) > 0 ) 
{
    // Going down
    motion_set(90, ship_speed);
    show_debug_message("Setting motion at 270 degrees to " + string(ship_speed));
}
else
{
    motion_set(0, 0);
    show_debug_message("Setting motion at 0 degrees to " + string(0));
}
