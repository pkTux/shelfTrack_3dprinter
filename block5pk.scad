// Gen1_delta clamp

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

// Do we need this????
//            translate([d_screw_hole_y,d_screw_hole_y,0]/2) 5mm_screw_way();
//            translate([-d_screw_hole_y,d_screw_hole_y,0]/2) 5mm_screw_way();
//            translate([d_screw_hole_y,-d_screw_hole_y,0]/2) 5mm_screw_way();
//            translate([-d_screw_hole_y,-d_screw_hole_y,0]/2) 5mm_screw_way();  
//            translate([d_screw_hole_y,d_screw_hole_x,0]/2) 5mm_screw_way();
//            translate([-d_screw_hole_y,d_screw_hole_x,0]/2) 5mm_screw_way();  
//            translate([d_screw_hole_y,-d_screw_hole_x,0]/2) 5mm_screw_way();
//            translate([-d_screw_hole_y,-d_screw_hole_x,0]/2) 5mm_screw_way();  
            
        // Machine Screw Bevels ### Need to tinker with this to get bevel right depth and width
            translate([c_screw_hole_x,c_screw_hole_y,0]/2) 5mm_screw_bevel();
            translate([-c_screw_hole_x,c_screw_hole_y,0]/2) 5mm_screw_bevel();
            translate([c_screw_hole_x,-c_screw_hole_y,0]/2) 5mm_screw_bevel();
            translate([-c_screw_hole_x,-c_screw_hole_y,0]/2) 5mm_screw_bevel();

        // Zip Tie Notches    
        //    translate([0,-c_screw_hole_y/2,11.5-10]) cube([18,3,4],center=true);
        //    translate([0,c_screw_hole_y/2,11.5-10]) cube([18,3,4],center=true);
        
        // removal knotches
        //     translate([0,-(6.8+51)/2,11.5]) cube([8,3,4],center=true);
        //     translate([0,(6.8+51)/2,11.5-10]) cube([8,3,4],center=true);
        //     translate([(6.8+51)/2,0,11.5-11]) cube([3,8,2],center=true);
        //     translate([-(6.8+51)/2,0,11.5-11]) cube([3,8,2],center=true);
        }
    }
    
}

module angled_plate()
{
    difference()
    {
        union()
        {
            cube([40,2.7,30],center=true);
        }
        union()
        {
         // top holes
            translate([-8,0,-8]) rotate([90,0,0]) 5mm_screw_way();
            translate([10.,0,-8]) rotate([90,0,0]) 5mm_screw_way();
            translate([-8,0,8]) rotate([90,0,0]) 5mm_screw_way();
            translate([10,0,8]) rotate([90,0,0]) 5mm_screw_way();
        }
    }
}

module cross_brace()
{
    cube([2.7,38,30],center=true);
}

module track_tab()
{
    cube([18,2.7,5],center=true);
}

union()
{
    rotate([0,90,0]) top_block();
    translate([-15,16,0]) rotate([0,0,150]) angled_plate();
    translate([-15,-16,0]) rotate([0,0,-150]) angled_plate();
    translate([-20,0,0]) cross_brace();
    rotate([0,90,0]) translate([0,(6.8+4)/2,block_z-8]) track_tab();
    rotate([0,90,0]) translate([0,-(6.8+4)/2,block_z-8]) track_tab();
}

//plate for 5 bolt holes
// rotate([0,90,0])
//difference () {
//  
//    translate([15,0,-1]) cube([4,60,28],center=true);
//    translate([0,0,-8])rotate([90,0,90]) 5mm_screw_way();
//      translate([-9,20,-8])rotate([90,0,90]) 5mm_screw_way();
//      translate([8,-20,-8])rotate([90,0,90]) 5mm_screw_way();
//      translate([-9,10,-8])rotate([90,0,90]) 5mm_screw_way();
//      translate([8,-10,-8])rotate([90,0,90]) 5mm_screw_way();
//notch to keep opening for C-channel
//  translate([15,0,11.25]) cube([5,25,15],center=true);
//}
