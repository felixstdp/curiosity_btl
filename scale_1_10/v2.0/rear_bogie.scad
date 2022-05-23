rotate([90,-90,0])translate([4,5,-6])wheel_bracket();
$fn=60;

translate([4,-2,-1])cube([21,8,10]);
translate([25,6,5])rotate([90,0,0])
cylinder(d=8,h=8);
translate([20.35,-2,1])rotate([0,60,0])
translate([-1.5,0,0])cube([49,8,10]);
difference(){
translate([50,-4,-40])rotate([-90,0,0])
cylinder(d=15,h=10);
translate([50,-5,-40])rotate([-90,0,0])
cylinder(d=5.5,h=12);
}
translate([47,0,-45])
rotate([0,90,0])
{
    translate([-1,-2,-1])cube([46,8,10]);
    translate([63,-3.5,-1])rotate([0,0,0])
    servo_bracket();
}


module servo_bracket(){
difference(){
union(){
translate([1,0,3])cube([38,19,6],center=true);
translate([0,9.5,2])
rotate([90,0,0])linear_extrude(height=19)
polygon([[-18,0],[20,4],[-18,8]]);
translate([13.75,0,0])cylinder(d=8,h=2,$fn=60);
}
cube([23.4,12.4,50],center=true);
translate([13.75,0,-1])cylinder(d=2.2,h=60,$fn=30);
translate([-13.75,0,-1])cylinder(d=2.2,h=50,$fn=30);
translate([7,-3,-1])cube([6,6,12]);
}
}

module wheel_bracket(){
    difference(){
translate([-8,-11,0])cube([16,22,15]);
difference(){
    translate([0,0,-1])cylinder(d=12.2,h=25,$fn=60);
    translate([6.1,0,-1])cube([2,16,40],center=true);
    translate([-6.1,0,-1])cube([2,16,40],center=true);
}
//translate([0,14,-15])rotate([45,0,0])cube(30,center=true);
translate([-1,0,-1])cube([2,22,25]);
translate([-9,8,7.5])rotate([0,90,0])
cylinder(d=2.2,h=21,$fn=12);
translate([-9,8,7.5])rotate([0,90,0])
cylinder(d=2.8,h=10,$fn=12);
}
}
