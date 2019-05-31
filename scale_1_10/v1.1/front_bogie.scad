$fn=40;

translate([4,-82.5,0])rotate([0,-90,-15])
translate([16.5,-9.5,0])
servo_bracket();

rotate([-12,0,0])
translate([-4,-83,-.8])cube([8,78.5,8]);

difference(){
cylinder(d=15,h=12.5);
translate([0,0,-1])cylinder(d=5.5,h=14);
}

rotate([0,0,145])
translate([-4,-70,0])cube([8,64.5,8]);

rotate([0,0,145])translate([0,-75,0])
difference(){
cylinder(d=15,h=10);
translate([0,0,-1])cylinder(d=5.5,h=12);
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
translate([0,0,18])cube([33,18,11],center=true);
cube([23.4,12.4,50],center=true);
translate([13.75,0,-1])cylinder(d=2.2,h=50,$fn=10);
translate([-13.75,0,-1])cylinder(d=2.2,h=50,$fn=10);
}
translate([5.5,0,0])
difference(){
cylinder(d=25,h=12.5);
cylinder(d=16.4,h=5);
translate([0,0,5])cylinder(d=14,h=8);   
}
}
