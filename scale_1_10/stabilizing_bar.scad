$fn=30;

difference(){

linear_extrude(height=4)
polygon(
[[-63.5,3],
[0,8],
[63.5,3],
[63.5,-3],
[0,-8],
[-63.5,-3]]);

cylinder(d=5,h=10,center=true);
}

translate([65,0,5])rotate([90,0,0])
difference(){
cylinder(d=10,h=6,center=true);
cylinder(d=3,h=7,center=true);
}

translate([-65,0,5])rotate([90,0,0])
difference(){
cylinder(d=10,h=6,center=true);
cylinder(d=3,h=7,center=true);
}

translate([60,-3,0])
cube([5,6,1.5]);

translate([-65,-3,0])
cube([5,6,1.5]);
