// 

//number of facets
$fn=40;

//block shape
block_x=30;
block_y=60;
block_z=13;

// track channel
track_channel_x=block_x+10;
track_channel_y=25;
track_channel_z=9.5;

// block top
block_top_x=20;
block_top_y=block_y+10;
block_top_z=16.5;

// spacing of screw holes
c_screw_hole_x=15;
c_screw_hole_y=40;
d_screw_hole_x=15;
d_screw_hole_y=45;

module 5mm_screw_way()
{
    cylinder(d=5, h=50,  center=true);
}

module 5mm_screw_bevel()
{
    cylinder(d1=9.2, d2=5, h=2.5,  center=true);
}

module top_block()
{
    difference()
    {
        union()
        {
            translate([0,0,block_z]/2) cube ([block_x,block_y,block_z],center=true);
        }
        union()
        {
        // Cut out for the channel
            translate([0,0,block_z+4]/2) cube([track_channel_x,track_channel_y,track_channel_z],center=true);
         
        // Screw holes
            translate([c_screw_hole_x,c_screw_hole_y,0]/2) 5mm_screw_way();
            translate([-c_screw_hole_x,c_screw_hole_y,0]/2) 5mm_screw_way();
            translate([c_screw_hole_x,-c_screw_hole_y,0]/2) 5mm_screw_way();
            translate([-c_screw_hole_x,-c_screw_hole_y,0]/2) 5mm_screw_way();

        // Machine Screw Bevels ### Need to tinker with this to get bevel right depth and width
            translate([c_screw_hole_x,c_screw_hole_y,2]/2) 5mm_screw_bevel();
            translate([-c_screw_hole_x,c_screw_hole_y,2]/2) 5mm_screw_bevel();
            translate([c_screw_hole_x,-c_screw_hole_y,2]/2) 5mm_screw_bevel();
            translate([-c_screw_hole_x,-c_screw_hole_y,2]/2) 5mm_screw_bevel();
        }
    }
    
}

module track_tab()
{
    cube([18,2.7,5],center=true);
}

union()
{
    top_block();
    translate([0,(6.8+4)/2,block_z-8]) track_tab();
    translate([0,-(6.8+4)/2,block_z-8]) track_tab();
}