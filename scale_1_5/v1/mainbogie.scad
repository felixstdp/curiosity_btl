$fn=60;

translate([10,0,0])bar(diam=12,length=104);
rotate([0,135,0])translate([10,0,0])
bar(diam=12,length=55);

translate([142.5,6.5,5])rotate([0,-15,0])
servo_basis();

translate([-50,0,-50])
rotate([90,0,0])
difference(){
cylinder(d=24,h=12,center=true);
cylinder(d=6,h=14,center=true);
}

rotate([90,0,0])
difference(){
cylinder(d=24,h=12,center=true);
cylinder(d=6,h=14,center=true);
}

rotate([0,-15,0]){
translate([0,-2,25])
cube([10,8,40],center=true);
translate([0,2,45])
rotate([90,0,0])
cylinder(d=10,h=8);
}

module servo_basis(){
difference(){
translate([-1.5,12.5,0])rotate([90,0,0])
linear_extrude(height=25)
polygon([[-29,-2.5],[-29,8.5],[29,2.5],[29,-2.5]]);
cube([41.3,20.3,18],center=true);
translate([48.5/2,10/2,0])
cylinder(d=3.2,h=18,center=true);
translate([-48.5/2,10/2,0])
cylinder(d=3.2,h=18,center=true);
translate([-48.5/2,-10/2,0])
cylinder(d=3.2,h=18,center=true);
translate([48.5/2,-10/2,0])
cylinder(d=3.2,h=18,center=true);
}
}

module motor_grip(){
difference(){
union(){
cylinder(d=29,h=16);
translate([-3.5,-21.5,0]) cube(size=[7,8,16]);
}
translate([0,0,-1]) cylinder(d=25,h=22);
translate([-.5,-25,-1]) cube(size=[1,20,22]);
translate ([-5,-18,4])rotate([0,90,0])cylinder(d=3.2,h=100);
translate ([-5,-18,12])rotate([0,90,0])cylinder(d=3.2,h=100);
}
}

module bar(diam,length){
rotate([360/16,0,0])rotate([0,90,0])
    cylinder(d=diam/.9239,h=length,$fn=8);
}
