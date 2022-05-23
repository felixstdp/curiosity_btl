$fn=60;

translate([5,-82.5,0])rotate([0,-90,-15])
translate([16.5,-9.5,0])
servo_bracket();

translate([-5,-82.5,0])cube([10,78.5,8]);

difference(){
cylinder(d=20,h=15);
translate([0,0,-1])cylinder(d=6,h=17);
}

rotate([0,0,145])
translate([-5,-70,0])cube([10,64.5,8]);

rotate([0,0,145])translate([0,-75,0])
difference(){
cylinder(d=18,h=10);
translate([0,0,-1])cylinder(d=6,h=12);
}

rotate([0,0,75]) translate([0,6,0])
linear_extrude(height=6)
polygon([[-4,0],[4,0],[3,17.5],[-3,17.5]]);

rotate([0,0,75]) translate([-3,19,0])
cube([6,6,1.5]);

translate([-1,0.25,5])rotate([0,0,75]) 
translate([0,25,0])rotate([0,90,0])
difference(){
cylinder(d=10,h=6,center=true);
cylinder(d=3,h=7,center=true);
}

module servo_bracket(){
difference(){
union(){
translate([1,0,2.5])cube([35,23,5],center=true);
translate([0,11.5,3])
rotate([90,0,0])linear_extrude(height=23)
polygon([[-16.5,0],[18.5,2],[18.5,3],[-16.5,8]]);
translate([13.75,0,0])cylinder(d=8,h=2,$fn=60);
}
cube([23.4,12.4,50],center=true);
translate([13.75,0,-1])cylinder(d=2.2,h=50,$fn=30);
translate([-13.75,0,-1])cylinder(d=2.2,h=50,$fn=30);
translate([10,0,0])cylinder(d=6,h=12,$fn=60);
}
}
