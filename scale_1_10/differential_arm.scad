$fn=30;

difference(){

linear_extrude(height=4)
polygon(
[[-63.5,2.5],
[0,8],
[63.5,2.5],
[63.5,-2.5],
[0,-8],
[-63.5,-2.5]]);

cylinder(d=5,h=10,center=true);
}

translate([65,0,3])rotate([90,0,0])
difference(){
cylinder(d=6,h=5,center=true);
cylinder(d=3,h=7,center=true);
}

translate([-65,0,3])rotate([90,0,0])
difference(){
cylinder(d=6,h=5,center=true);
cylinder(d=3,h=7,center=true);
}

translate([60,-2.5,0])
cube([5,5,1.5]);

translate([-65,-2.5,0])
cube([5,5,1.5]);