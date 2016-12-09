servo_basis();

module servo_basis(){
$fn=60;
difference(){
cube([55,25,4],center=true);
cube([41.3,20.3,8],center=true);
translate([48.5/2,10/2,0])
cylinder(d=3.2,h=8,center=true);
translate([-48.5/2,10/2,0])
cylinder(d=3.2,h=8,center=true);
translate([-48.5/2,-10/2,0])
cylinder(d=3.2,h=8,center=true);
translate([48.5/2,-10/2,0])
cylinder(d=3.2,h=8,center=true);
}
}
