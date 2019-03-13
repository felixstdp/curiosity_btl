$fn=60;

difference(){
union(){

cylinder(d=15,h=6);
cylinder(d=12,h=12);

minkowski(){
cylinder(d=27,h=8,center=true);
sphere(d=2);
}

translate([20,0,0])
minkowski(){
cube([32,16,6],center=true);
sphere(d=4);
}

translate([36,0,-5])
difference(){
minkowski(){
rotate([90,0,0])
cylinder(d=16,h=16,center=true);
sphere(d=4);
}
translate([-5,0,-15])
cube([30,30,30],center=true);
}

}
translate([31,0,0])
cylinder(d=3.2,h=100,center=true);
translate([41,-5,0])
cylinder(d=3.2,h=100,center=true);
translate([41,5,0])
cylinder(d=3.2,h=100,center=true);
translate([31,0,6.5])
cylinder(d=6,h=10,center=true);
translate([41,-5,6.5])
cylinder(d=6,h=10,center=true);
translate([41,5,6.5])
cylinder(d=6,h=10,center=true);

cylinder(d=3.2,h=50,center=true);
}
