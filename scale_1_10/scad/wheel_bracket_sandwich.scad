$fn=120;

difference(){
cylinder(d=24,h=4);
hull(){
cylinder(d=7,h=2);
translate([0,14,0]) cylinder(d=4.2,h=1.5);
translate([0,-14,0]) cylinder(d=4.2,h=1.5);
}
cylinder(d=7.5,h=4);
}
