$fn=30;

difference(){

union(){
cube([120,140,2],center=true);
translate([0,-20,13])
cube([120,12,24],center=true);
translate([0,12,4])
cube([12,12,6],center=true);
}

translate([0,-20,15])
cube([100,14,28],center=true);
translate([0,-20,19])rotate([0,90,0])
cylinder(d=5,h=122,center=true);
translate([0,12,7])
cylinder(d=5,h=20,center=true);
}

translate([0,0,5])
difference(){
cube([120,140,10],center=true);
cube([117,137,22],center=true);
} 
