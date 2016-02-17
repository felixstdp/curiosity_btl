difference(){
union(){
translate([0,0,1])cube([32,15,2],center=true);
translate([0,7.5,2])
rotate([90,0,0])linear_extrude(height=15)
polygon([[-16,0],[11.5,0],[-16,8]]);
}
cube([23.2,12.2,50],center=true);
translate([13.75,0,-1])cylinder(d=2.2,h=5,$fn=30);
translate([-13.75,0,-1])cylinder(d=2.2,h=50,$fn=30);
translate([-13.75,0,2])cylinder(d=3.7,h=50,$fn=30);
}
translate([-16,0,4.619])rotate([360/16,0,0])rotate([0,-90,0])
    cylinder(d=10,h=52,$fn=8);

translate([-75,3,5])rotate([0,0,24])pin();

module pin(){
difference(){
rotate([90,0,0])cylinder(d=10,h=10,$fn=30);
rotate([90,0,0])translate([0,0,-1])cylinder(d=5,h=12,$fn=30);
translate([-15,0,0])cube([30,30,30],center=true);
}
}
