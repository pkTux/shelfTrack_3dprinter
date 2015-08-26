translate([-15,-16,0])rotate([0,0,-150])
difference (){
cube([2.7,40,30],center=true);
translate([0,7.5,7.5])rotate([0,90,0])cylinder(d=5, h=3, center=true);
translate([0,-7.5,-7.5])rotate([0,90,0])    
       cylinder(d=5, h=3, center=true);
     translate([0,-7.5,7.5])rotate([0,90,0])
        cylinder(d=5, h=3, center=true);
    translate([0,7.5,-7.5])rotate([0,90,0])
        cylinder(d=5, h=3, center=true);
    
};
translate([-15,-44,-8])   cylinder(d=5, h=2, center=true);
translate([-15,-5,-8]) cylinder(d=5, h=2, center=true);
      translate([-15,-5,8])
        cylinder(d=5, h=2, center=true);
     translate([-15,-44,8])
        cylinder(d=5, h=2, center=true);