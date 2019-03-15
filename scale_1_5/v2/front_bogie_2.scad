rotate([0,0,-19])
translate([30,0,0])
difference(){
cube([42,17,17],center=true);
cube([43,10.4,10.4],center=true);
}

difference(){
translate([0,0,-4])
rotate([0,0,14])
rotate([0,22,0])
translate([-28,0,0])
difference(){
cube([42,17,17],center=true);
cube([43,10.4,10.4],center=true);
}
translate([0,0,-18.5])
cylinder(d=30,h=10);
}

$fn=60;
translate([0,0,-8.5])
difference(){
cylinder(d=25,h=20);
cylinder(d=5,h=20);
}

translate([0,0,-8.5])
linear_extrude(height=6)
polygon([[-10,3],[10,3],[3,40],[-3,40]]);
