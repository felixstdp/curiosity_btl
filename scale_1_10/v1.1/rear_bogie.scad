rotate([-90,0,0])
{
rotate([90,90,0])translate([-4,-5,3])clamp();

$fn=60;

translate([-9,-7,0])cube([8,10,8]);
translate([-6,3,0])rotate([0,0,-90])
cylinder(d=6,h=8);
translate([-6,-2,0])cube([31,8,8]);
translate([25,6,5])rotate([90,0,0])
cylinder(d=6,h=8);
translate([20.8,-2,2.3])rotate([0,60,0])
cube([47,8,8]);
difference(){
translate([50,-4,-40])rotate([-90,0,0])
cylinder(d=15,h=10);
translate([50,-5,-40])rotate([-90,0,0])
cylinder(d=5.5,h=12);
}
translate([47,0,-45])
rotate([0,90,0])
{
    translate([0,-2,0])cube([60.5,8,8]);
    translate([63,-3.5,0])rotate([0,0,0])
    servo_bracket();
}
}

module clamp(){
difference(){
translate([-7,-10,0])
cube([14,20,23]);
difference(){
    translate([0,0,5])cylinder(d=13,h=25,$fn=60);
    translate([6.5,0,12])cube([2,12,25],center=true);
    translate([-6.5,0,12])cube([2,12,25],center=true);
}
translate([-1,-11,4])cube([2,22,25]);
translate([-9,-8,14.5])rotate([0,90,0])
cylinder(d=2.2,h=21,$fn=12);
translate([-9,8,14.5])rotate([0,90,0])
cylinder(d=2.2,h=21,$fn=12);
translate([0,21,0])rotate([45,0,0])cube(size=[25,25,25],center=true);
translate([0,-21,0])rotate([45,0,0])cube(size=[25,25,25],center=true);
translate([21,0,0])rotate([0,0,90])rotate([45,0,0])
cube(size=[25,25,25],center=true);
translate([-21,0,0])rotate([0,0,90])rotate([45,0,0])
cube(size=[25,25,25],center=true);
}
}

module servo_bracket(){
difference(){
translate([0,0,10])cube([33,19,5],center=true);
cube([23.4,12.4,50],center=true);
translate([13.75,0,-1])cylinder(d=2.2,h=50,$fn=10);
translate([-13.75,0,-1])cylinder(d=2.2,h=50,$fn=10);
}
translate([5.5,0,0])
difference(){
cylinder(d=25,h=8);
cylinder(d=16,h=8);
}
}
