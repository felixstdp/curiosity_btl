$fn=60;

difference(){
union(){

cylinder(d=15,h=5);
cylinder(d=12,h=10);

minkowski(){
cylinder(d=27,h=6,center=true);
sphere(d=2);
}

translate([20,0,0])
minkowski(){
cube([40,16,4],center=true);
sphere(d=4);
}

translate([40,0,-4])
difference(){
minkowski(){
rotate([90,0,0])
cylinder(d=12,h=16,center=true);
sphere(d=4);
}
translate([-15,0,0])
cube([30,30,30],center=true);
translate([-5,0,-15])
cube([30,30,30],center=true);
}

}
translate([34,0,0])
cylinder(d=3.2,h=100,center=true);
translate([44,-5,0])
cylinder(d=3.2,h=100,center=true);
translate([44,5,0])
cylinder(d=3.2,h=100,center=true);
translate([34,0,7])
cylinder(d=5.5,h=10,center=true);
translate([44,-5,6])
cylinder(d=5.5,h=10,center=true);
translate([44,5,6])
cylinder(d=5.5,h=10,center=true);
}
