rotate([90,0,0])translate([0,4,3])clamp();

// apoyos para imprimir sin despegarse
//translate([10,-10,-6])cylinder(d=18,h=0.5);
//translate([-10,-10,-6])cylinder(d=18,h=0.5);


$fn=60;

translate([-4,-7,0])cube([8,10,8]);
translate([-1,3,0])rotate([0,0,-90])
cylinder(d=6,h=8);
translate([-1,0,0])cube([26,6,8]);
translate([25,6,5])rotate([90,0,0])
cylinder(d=6,h=6);
translate([21,0,2])rotate([0,60,0])
cube([47,6,8]);
difference(){
translate([50,0,-40])rotate([-90,0,0])
cylinder(d=15,h=6);
translate([50,-1,-40])rotate([-90,0,0])
cylinder(d=8,h=8);
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
