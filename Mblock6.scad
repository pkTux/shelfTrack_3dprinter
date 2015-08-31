// Gen1_delta MotorMount clamp
//block shape
x=60;
y=60;
z=13;

// track channel
f=x+10;
g=25;
h=9.5;
// block top
e=20;
r=y+10;
t=16.5;

// spacing of screw holes
cx=15;
cy=40;
dx=15;
dy=45;
cz=20;
dz=15.5;

//anglefloat
dk=25.5;
ck=21;

// rotation
gx=90;

rotate([0,gx,0])
difference()
{  translate([0,0,z]/2) cube ([x,y,z],center=true);
    translate([0,0,z+4]/2) cube([f,g,h],center=true);
 
  translate([cx,cy,0]/2) cylinder(d=5, h=50,  center=true);
  translate([-cx,cy,0]/2) cylinder(d=5, h=50,  center=true);
    translate([cx,-cy,0]/2) cylinder(d=5, h=50,  center=true);
    translate([-cx,-cy,0]/2) cylinder(d=5, h=50,  center=true);
 //corner holes
    translate([dy,dy,0]/2) cylinder(d=5, h=50,  center=true);
  translate([-dy,dy,0]/2) cylinder(d=5, h=50,  center=true);
    translate([dy,-dy,0]/2) cylinder(d=5, h=50,  center=true);
   translate([-dy,-dy,0]/2) cylinder(d=5, h=50,  center=true);  
    
 //   translate([dy,dx,0]/2) cylinder(d=5, h=50,  center=true);
 // translate([-dy,dx,0]/2) cylinder(d=5, h=50,  center=true);  
//  translate([dy,-dx,0]/2) cylinder(d=5, h=50,  center=true);
 // translate([-dy,-dx,0]/2) cylinder(d=5, h=50,  center=true);  
    
// translate([cx,cy,0]/2)  cylinder(d1=16, d2=8, h=7,  center=true);
// translate([-cx,cy,0]/2) cylinder(d1=16, d2=8, h=7, center=true);
 //   translate([cx,-cy,0]/2) cylinder(d1=16, d2=8, h=7,  center=true);
  //  translate([-cx,-cy,0]/2) cylinder(d1=16, d2=8, h=7,  center=true);    
// zip tie knotches    
 //   translate([0,-cy/2,11.5-10]) cube([18,3,4],center=true);
  //  translate([0,cy/2,11.5-10]) cube([18,3,4],center=true);
// removal knotches
//       translate([0,-(6.8+51)/2,11.5]) cube([8,3,4],center=true);
//   translate([0,(6.8+51)/2,11.5-10]) cube([8,3,4],center=true);
//   translate([(6.8+51)/2,0,11.5-11]) cube([3,8,2],center=true);
  // translate([-(6.8+51)/2,0,11.5-11]) cube([3,8,2],center=true);
}

//blocks for  sides of delta
translate([-dk,ck,0])rotate([0,0,-300])
difference (){
cube([2.7,65,x],center=true);
translate([0,cz+5,cz])rotate([0,90,0])cylinder(d=5, h=3, center=true);
translate([0,-cz+5,-cz])rotate([0,90,0])    
       cylinder(d=5, h=3, center=true);
     translate([0,-cz+5,cz])rotate([0,90,0])
        cylinder(d=5, h=3, center=true);
    translate([0,cz+5,-cz])rotate([0,90,0])
        cylinder(d=5, h=3, center=true);
    
};

translate([-dk,-ck,0])rotate([0,0,300])
difference (){
cube([2.7,65,x],center=true);
translate([0,cz-5,cz])rotate([0,90,0])cylinder(d=5, h=3, center=true);
translate([0,-cz-5,-cz])rotate([0,90,0])    
       cylinder(d=5, h=3, center=true);
     translate([0,-cz-5,cz])rotate([0,90,0])
        cylinder(d=5, h=3, center=true);
    translate([0,cz-5,-cz])rotate([0,90,0])
        cylinder(d=5, h=3, center=true);
    
};

//cross braceing
    translate([-(dk+7),0,0])difference (){
cube([2.7,48,x],center=true);rotate([0,90,0])
      cylinder(d=20,h=10,center=true);
    
 translate([0,dz,dz])rotate([0,90,0])cylinder(d=5, h=3, center=true);
translate([0,-dz,-dz])rotate([0,90,0])cylinder(d=5, h=3, center=true);
translate([0,-dz,dz])rotate([0,90,0])cylinder(d=5, h=3, center=true);
translate([0,dz,-dz])rotate([0,90,0])cylinder(d=5, h=3, center=true);
        
    };
  //plate for 5 bolt holes
// rotate([0,gx,0])
//difference () {
//  
//    translate([15,0,-1]) cube([4,60,28],center=true);
//    translate([0,0,-8])rotate([90,0,90]) cylinder(d=5, h=60, center=true);
//      translate([-9,20,-8])rotate([90,0,90]) cylinder(d=5, h=60, center=true);
//      translate([8,-20,-8])rotate([90,0,90]) cylinder(d=5, h=60, center=true);
  //      translate([-9,10,-8])rotate([90,0,90]) cylinder(d=5, h=60, center=true);
//      translate([8,-10,-8])rotate([90,0,90]) cylinder(d=5, h=60, center=true);
   //notch to keep opening for C-channel
  //  translate([15,0,11.25]) cube([5,25,15],center=true);
//}
// tabs for slots

rotate([0,gx,0])  translate([0,(6.8+4)/2,z-8]) cube([18,2.7,5],center=true);
rotate([0,gx,0])  translate([0,-(6.8+4)/2,z-8]) cube([18,2.7,5],center=true);
