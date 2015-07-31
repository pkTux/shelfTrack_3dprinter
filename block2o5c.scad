//block shape
x=30;
y=50;
z=11.5;

//track channel
f=x+10;
g=25;
h=9.5;

// spacing of screw holes
cx=20;
cy=35;

difference()
{
    translate([0,0,z]/2) cube ([x,y,z],center=true);
    translate([0,0,z]/2 + [0,0,z - 8]) cube([f,g,h],center=true);


  translate([cx,cy,0]/2) cylinder(d=5, h=50,  center=true);
  translate([-cx,cy,0]/2) cylinder(d=5, h=50,  center=true);
    translate([cx,-cy,0]/2) cylinder(d=5, h=50,  center=true);
    translate([-cx,-cy,0]/2) cylinder(d=5, h=50,  center=true);
  translate([cx,cy,0]/2) cube([7,7,12],  center=true);
  translate([-cx,cy,0]/2) cube([7,7,12], center=true);
    translate([cx,-cy,0]/2) cube([7,7,12],  center=true);
    translate([-cx,-cy,0]/2) cube([7,7,12],  center=true);    
    
   translate([0,(6.8+41)/2,11.5-10]) cube([10,3,4],center=true);
    translate([0,(6.8+28)/2,11.5-10]) cube([18,3,4],center=true);
       translate([0,-(6.8+41)/2,11.5-10]) cube([10,3,4],center=true);
    translate([0,-(6.8+28)/2,11.5-10]) cube([18,3,4],center=true);
}

translate([0,(6.8+4)/2,z-8]) cube([18,2.7,5],center=true);
translate([0,-(6.8+4)/2,z-8]) cube([18,2.7,5],center=true);