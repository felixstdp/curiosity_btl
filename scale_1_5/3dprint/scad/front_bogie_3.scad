rotate([0,0,-19])
translate([30,0,0])
difference(){
cube([42,17,17],center=true);
cube([43,10.4,10.4],center=true);
}

$fn=60;
translate([0,0,-8.5])
difference(){
cylinder(d=25,h=20);
cylinder(d=5,h=20);
}
