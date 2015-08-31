// Gen2_delta MotorMount
//block shape
x=60;
z=60;
extrusion = 25;
extrusion2 = 17.5;
bl1 = extrusion+10;
bl2 = extrusion2+10;

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
$fn=40;
//anglefloat
dk1=40;
ck1=30;
dk=35;
ck=40;
cut1=18;
cut2=28;
cut3=13;
cut4=15;

// rotation
gx=90;
//end
difference(){
translate([-20,0,0])cylinder(h=z,r=bl1,center=true);
cube([extrusion2,extrusion,z+1],center=true);
    translate([-39,0,0])cube([50,2*bl1,z+1],center=true);
//};
   //bevel curved piece
    translate([-cut1,cut2,0])  rotate([0,0,60])cube([extrusion2+2,extrusion2,z+1],center=true);
    translate([-cut1,-cut2,0])  rotate([0,0,-60])cube([extrusion2+2,extrusion2,z+1],center=true);
};

//crazy cylinders
//translate([-cut3,cut4,0])cylinder(h=z,d=7,center=true);
//translate([-cut3,-cut4,0])cylinder(h=z,d=7,center=true);


//sides of delta
//rounded side
translate([-dk,ck,0])rotate([90,0,-300])
difference (){
translate([-20,0,0])cylinder(h=z,r=bl1,center=true);
cube([extrusion2,extrusion,z+1],center=true);
    translate([-39,0,0])cube([50,2*bl1,z+1],center=true);
//};
   //bevel curved piece
    translate([-cut1,cut2,0])  rotate([0,0,60])cube([extrusion2+2,extrusion2,z+1],center=true);
    translate([-cut1,-cut2,0])  rotate([0,0,-60])cube([extrusion2+2,extrusion2,z+1],center=true);

translate([0,cz+5,cz])rotate([0,90,0])cylinder(d=5, h=3, center=true);
translate([0,-cz+5,-cz])rotate([0,90,0])    
       cylinder(d=5, h=3, center=true);
     translate([0,-cz+5,cz])rotate([0,90,0])
        cylinder(d=5, h=3, center=true);
    translate([0,cz+5,-cz])rotate([0,90,0])
        cylinder(d=5, h=3, center=true);
    
};
//square side
translate([-dk,-ck,0])rotate([90,0,300])
difference (){
cube([bl2,bl1,z],center=true);
cube([extrusion2,extrusion,z+1],center=true);
    translate([-39,0,0])cube([50,2*bl1,z+1],center=true);
};
translate([-dk1+1,-ck1+1,0])rotate([0,0,300])
difference (){
cube([2.7,65,x],center=true);
    //holes
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
cube([2.7,66,x],center=true);rotate([0,90,0])
      cylinder(d=20,h=10,center=true);
    
 translate([0,dz,dz])rotate([0,90,0])cylinder(d=5, h=3, center=true);
translate([0,-dz,-dz])rotate([0,90,0])cylinder(d=5, h=3, center=true);
translate([0,-dz,dz])rotate([0,90,0])cylinder(d=5, h=3, center=true);
translate([0,dz,-dz])rotate([0,90,0])cylinder(d=5, h=3, center=true);
        
    };
 