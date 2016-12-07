$fn=60;

difference(){
union(){
cylinder(d=28,h=16);
translate([-10,9,0]) cube(size=[20,68,7]);
translate([-3.5,-21.5,0]) cube(size=[7,8,16]);
translate([-10,78,8])cube(size=[20,7,37]);
translate([0,85,45])rotate([90,0,0])cylinder(r=15,h=7);
translate([-10,77,8])rotate([0,90,0])cylinder(r=8,h=20);    
}
translate([0,0,-1]) cylinder(d=25,h=22);
translate([-.5,-25,-1]) cube(size=[1,20,22]);
translate ([-5,-18,4])rotate([0,90,0])cylinder(d=3.2,h=100);
translate ([-5,-18,12])rotate([0,90,0])cylinder(d=3.2,h=100);
translate([0,86,45])rotate([90,0,0])cylinder(r=4.55,h=10);
translate([-11,70,15])rotate([0,90,0])cylinder(r=8,h=22);
}
