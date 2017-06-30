$fn=30;

difference(){

union(){
cube([120,140,2],center=true);
translate([0,-20,13])
cube([120,12,24],center=true);
translate([0,12,7])
cube([12,12,12],center=true);
translate([0,-4,2.5])
cube([12,25,5],center=true);
}

translate([0,-20,19])
cube([100,14,28],center=true);
translate([0,-20,19])rotate([0,90,0])
cylinder(d=5,h=122,center=true);
translate([0,12,7])
cylinder(d=5,h=20,center=true);

}
