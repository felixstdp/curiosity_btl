rotate([0,0,-19])
translate([30,0,0])
difference(){
cube([42,17,17],center=true);
cube([43,10.4,10.4],center=true);
}

difference(){
translate([0,0,-3.5])
rotate([0,22,0])
rotate([0,0,14])
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
cylinder(d=30,h=20);
cylinder(d=5,h=20,$fn=20);
translate([0,10,5])rotate([-90,0,0])
cylinder(d=3.5,h=10);    
}

difference(){
translate([0,0,-8.5])
linear_extrude(height=10)
polygon([[-10,4],[10,4],[5,25],[-5,25]]);
translate([0,5,-3.5])rotate([-90,0,0])
cylinder(d=3.5,h=100,$fn=20);
}
