servo_bracket();
translate([-16,0,0])rotate([0,0,180])bar(52);

module servo_bracket(){
difference(){
union(){
translate([0,0,1])cube([33,15,2],center=true);
translate([0,7.5,2])
rotate([90,0,0])linear_extrude(height=15)
polygon([[-16.5,0],[16.5,0],[-16.5,8]]);
translate([13.75,0,0])cylinder(d=8,h=2,$fn=60);
}
cube([23.4,12.4,50],center=true);
translate([13.75,0,-1])cylinder(d=2.2,h=5,$fn=30);
translate([-13.75,0,-1])cylinder(d=2.2,h=50,$fn=30);
translate([13.75,0,2])cylinder(d=3.7,h=5,$fn=30);
translate([-13.75,0,2])cylinder(d=3.7,h=50,$fn=30);
translate([10,0,0])cylinder(d=6,h=12,$fn=60);
}
}

module bar(length){
translate([0,0,3.5])rotate([360/16,0,0])rotate([0,90,0])
    cylinder(d=7.577,h=length,$fn=8);
}
