$fn=60;

difference(){
union(){
cylinder(d=33,h=16);
translate([0,42,1.5])rotate([0,0,30])
cube([42,17,17],center=true);
translate([-8,9,2])
minkowski(){
sphere(d=4,$fn=30);
cube(size=[16,32,6]);
}
translate([-7,-21,0]) cube(size=[14,8,16]);
}
translate([0,0,-1]) cylinder(d=25,h=22);
translate([-.5,-25,-1]) cube(size=[1,20,22]);

translate ([-10,-16,4])rotate([0,90,0])
cylinder(d=2.7,h=100);
translate ([7,-16,4])rotate([0,90,0])
cylinder(d=5.5,h=100);
translate ([-17,-16,4])rotate([0,90,0])
cylinder(d=7,h=10,$fn=6);

translate ([-10,-16,12])rotate([0,90,0])
cylinder(d=2.7,h=100);
translate ([7,-16,12])rotate([0,90,0])
cylinder(d=5.5,h=100);
translate ([-17,-16,12])rotate([0,90,0])
cylinder(d=7,h=10,$fn=6);

translate([0,60,15])rotate([-90,0,0])
cylinder(d=3,h=100);
translate([0,56,15])rotate([-90,0,0])
cylinder(d=6.5,h=10,$fn=6);

translate([0,90,0])cube([60,40,60],center=true);
translate([0,42,1.5])rotate([0,0,30])
cube([43,10.4,10.4],center=true);
}
