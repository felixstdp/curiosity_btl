% soporte motor curiosity escala grande (proyecto aparcado)

$fn=72;

difference(){
union(){
cylinder(d=30,h=20);
translate([-10,10,0]) cube(size=[20,40,8]);
translate([-3.5,-22.5,0]) cube(size=[7,10,20]);
translate([-10,50,8])cube(size=[20,8,37]);
translate([0,58,45])rotate([90,0,0])cylinder(r=10,h=8);
translate([-10,50,8])rotate([0,90,0])cylinder(r=8,h=20);    
}
translate([0,0,-1]) cylinder(d=25,h=22);
translate([-.5,-25,-1]) cube(size=[1,20,22]);
translate ([-5,-18.5,5])rotate([0,90,0])cylinder(d=3.2,h=100);
translate ([-5,-18.5,15])rotate([0,90,0])cylinder(d=3.2,h=100);
translate([0,59,45])rotate([90,0,0])cylinder(r=3,h=10);
translate([-11,42,16])rotate([0,90,0])cylinder(r=8,h=22);
}
