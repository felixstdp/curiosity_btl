translate([3.5,0,10])rotate([0,0,90])
clamp();

bracket();

module bracket(){
$fn=60;

translate([32,0,26])rotate([0,90,0])
cylinder(d=24,h=6);
translate([32,0,26])rotate([0,90,0])
cylinder(d=7.5,h=15);
translate([32,0,26])rotate([0,90,0])
cylinder(d=10,h=7);

difference(){
minkowski(){
translate([3,-5,3])cube([32,12,16]);
rotate([90,0,0])cylinder(d=6,h=2);
}
minkowski(){
translate([8.5,-5,7.5])cube([22,12,16]);
rotate([90,0,0])cylinder(d=3,h=2);
}
translate([0,0,24])cube(20,center=true);
}

}

module clamp(){
difference(){
translate([-7,-11,0])cube([14,22,23]);
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
}
}
