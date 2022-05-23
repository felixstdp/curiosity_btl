translate([0,4,3])rotate([0,0,90])
clamp();

// apoyos para imprimir sin despegarse
translate([10,14,-6])cylinder(d=18,h=0.5);
translate([10,-6,-6])cylinder(d=18,h=0.5);

rotate([-90,0,0]) bracket();

module bracket(){
$fn=60;
difference(){
translate([32,-26,4])rotate([0,90,0])
cylinder(d=24,h=6);
translate([30,-26,4])rotate([0,90,0])
cylinder(d=7.5,h=9);
}

translate([-4,-7,-2])cube([8,10,12]);
translate([32,-22,-2])cube([6,25,12]);
translate([-1,0,-2])cube([36,6,12]);

translate([-1,3,-2])rotate([0,0,-90])
cylinder(d=6,h=12);
translate([35,3,-2])rotate([0,0,-90])
cylinder(d=6,h=12);

}
//translate([-18,-20,-1])cube([10,10,20]);

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
