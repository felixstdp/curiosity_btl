
$fn=20;

difference(){
union(){
cylinder(d=43,h=16,$fn=60);
translate([-8,9,2])
minkowski(){
sphere(d=4);
union(){    
cube(size=[16,66,6]);
translate([0,44,0])rotate([90,0,90])
linear_extrude(height=16)polygon([[0,0],[20,0],[20,20]]);
}    
}
translate([-8,-26,0]) cube(size=[16,8,16]);
}
translate([0,0,-1]) cylinder(d=35,h=22,$fn=60);
translate([-1,-35,-1]) cube(size=[2,20,22]);

translate ([-15,-21,4])rotate([0,90,0])
cylinder(d=2.7,h=100);
translate ([8,-21,4])rotate([0,90,0])
cylinder(d=5,h=100);
translate ([-18,-21,4])rotate([0,90,0])
cylinder(d=6.5,h=10,$fn=6);

translate ([-15,-21,12])rotate([0,90,0])
cylinder(d=2.7,h=100);
translate ([8,-21,12])rotate([0,90,0])
cylinder(d=5,h=100);
translate ([-18,-21,12])rotate([0,90,0])
cylinder(d=6.5,h=10,$fn=6);

translate([5,58,5])rotate([-90,0,0])
cylinder(d=3,h=100);
translate([-5,58,5])rotate([-90,0,0])
cylinder(d=3,h=100);

translate([0,60,15])rotate([-90,0,0])
cylinder(d=3,h=100);
translate([0,56,15])rotate([-90,0,0])
cylinder(d=6.5,h=10,$fn=6);

translate([0,90,0])cube([60,40,60],center=true);
}
