$fn=60;

translate([15,0,0])bar(diam=12,length=100);

rotate([0,135,0])
translate([15,0,0])bar(diam=12,length=50);

translate([142.5,-7,0])servo_basis();

translate([-55,6,-55])rotate([90,0,0])
motor_grip();

rotate([90,0,0])
difference(){
cylinder(d=32,h=12,center=true);
cylinder(d=10,h=14,center=true);
}

module servo_basis(){
difference(){
cube([55,25,5],center=true);
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
    cylinder(d=diam,h=length,$fn=8);
}
