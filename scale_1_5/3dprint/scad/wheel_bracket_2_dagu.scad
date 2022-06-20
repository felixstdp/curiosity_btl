$fn=20;

difference(){
union(){

cylinder(d=18,h=6,$fn=60);
cylinder(d=15,h=16,$fn=60);

minkowski(){
cylinder(d=33,h=8,$fn=60,center=true);
sphere(d=2);
}

translate([20,0,0])
minkowski(){
cube([31,16,6],center=true);
sphere(d=4);
}

translate([35,0,-5])
difference(){
minkowski(){
rotate([90,0,0])
cylinder(d=16,h=16,$fn=60,center=true);
sphere(d=4);
}
translate([-5,0,-15])
cube([30,30,30],center=true);
}

}
translate([30,0,0])
cylinder(d=3.2,h=100,center=true);
translate([40,-5,0])
cylinder(d=3.2,h=100,center=true);
translate([40,5,0])
cylinder(d=3.2,h=100,center=true);
translate([30,0,6.5])
cylinder(d=6,h=10,center=true);
translate([40,-5,6.5])
cylinder(d=6,h=10,center=true);
translate([40,5,6.5])
cylinder(d=6,h=10,center=true);

cylinder(d=3.2,h=50,center=true);
}
