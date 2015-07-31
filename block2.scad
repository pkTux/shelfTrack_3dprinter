difference()
{
    translate([0,0,11.5]/2) cube ([30,50,11.5],center=true);
    translate([0,0,50]/2 + [0,0,11.5 - 8]) cube([40,24,50],center=true);


translate([20,35,0]/2) cylinder(d=5, h=50,  center=true);
translate([-20,35,0]/2) cylinder(d=5, h=50,  center=true);
    translate([20,-35,0]/2) cylinder(d=5, h=50,  center=true);
    translate([-20,-35,0]/2) cylinder(d=5, h=50,  center=true);
  
}
translate([0,(6.8+4)/2,11.5-8]) cube([18,3,3],center=true);
translate([0,-(6.8+4)/2,11.5-8]) cube([18,3,3],center=true);
