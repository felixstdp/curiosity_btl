$fn=20;

translate([0,0,5])
difference(){
    cylinder(d=45,h=15,$fn=60);
    translate([0,0,4])cylinder(d=35.6,h=12,$fn=60);
    translate([0,0,-1])cylinder(d=25,h=12,$fn=60);
}

difference(){
rotate([0,0,-163])
translate([0,40,11.5])
rotate([90,0,0])
difference(){
cube([17,17,42],center=true);
cube([10.4,10.4,42],center=true);
}
translate([0,0,5])cylinder(d=35.6,h=16,$fn=60);
translate([0,0,25])cube([120,120,10],center=true);
translate([10,0,0])rotate([0,0,90])
cube([20.5,40.5,12],center=true);
}


$fn=12;
translate([10,0,0])rotate([0,0,90])
difference(){
cube([26,58,10],center=true);
cube([20.5,40.5,12],center=true);
translate([5,25,-6])cylinder(d=2.5,h=12);
translate([-5,25,-6])cylinder(d=2.5,h=12);
translate([-5,-25,-6])cylinder(d=2.5,h=12);
translate([5,-25,-6])cylinder(d=2.5,h=12);
}
