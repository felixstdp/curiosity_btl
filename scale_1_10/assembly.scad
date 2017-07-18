rotate([0,180,0])body_top();

translate([65,-20,-19])
rotate([16.5,0,0])
rotate([0,90,0])
front_bogie();

scale([-1,1,1])
translate([65,-20,-19])
rotate([16.5,0,0])
rotate([0,90,0])
front_bogie();

translate([85,11,-92.5])
rotate([0,270,180])
rear_bogie();

scale([-1,1,1])
translate([85,11,-92.5])
rotate([0,270,180])
rear_bogie();

translate([0,12,3])
stabilizing_bar();

translate([62,123,-90])
rotate([180,270,0])
wheel_bracket();

scale([-1,1,1])
translate([62,123,-90])
rotate([180,270,0])
wheel_bracket();

translate([60,-103,-90])
rotate([180,270,0])
wheel_bracket();

scale([-1,1,1])
translate([60,-103,-90])
rotate([180,270,0])
wheel_bracket();


module body_top(){
$fn=30;

difference(){

union(){
cube([120,140,2],center=true);
translate([0,-20,13])
cube([120,12,24],center=true);
translate([0,12,7])
cube([12,12,12],center=true);
translate([0,-4,2.5])
cube([12,25,5],center=true);
}

translate([0,-20,19])
cube([100,14,28],center=true);
translate([0,-20,19])rotate([0,90,0])
cylinder(d=5,h=122,center=true);
translate([0,12,7])
cylinder(d=5,h=20,center=true);

}

translate([0,0,5])
difference(){
cube([117,137,10],center=true);
cube([114,134,22],center=true);
} 

}


module front_bogie(){
$fn=30;

translate([4,-82.5,0])rotate([0,-90,-15])
translate([16.5,-9.5,0])
servo_bracket();

translate([-4,-82.5,0])cube([8,78.5,8]);

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
union(){
translate([1,0,2])cube([35,19,4],center=true);
translate([0,9.5,2])
rotate([90,0,0])linear_extrude(height=19)
polygon([[-16.5,0],[16.5,0],[-16.5,8]]);
translate([13.75,0,0])cylinder(d=8,h=2,$fn=60);
}
cube([23.4,12.4,50],center=true);
translate([13.75,0,-1])cylinder(d=2.2,h=5,$fn=30);
translate([-13.75,0,-1])cylinder(d=2.2,h=50,$fn=30);
translate([10,0,0])cylinder(d=6,h=12,$fn=60);
}
}
}

module rear_bogie(){
rotate([-90,0,0])
{
rotate([90,90,0])translate([-4,-5,3])clamp();

$fn=60;

translate([-9,-7,0])cube([8,10,8]);
translate([-6,3,0])rotate([0,0,-90])
cylinder(d=6,h=8);
translate([-6,-2,0])cube([31,8,8]);
translate([25,6,5])rotate([90,0,0])
cylinder(d=6,h=8);
translate([20.8,-2,2.3])rotate([0,60,0])
cube([47,8,8]);
difference(){
translate([50,-4,-40])rotate([-90,0,0])
cylinder(d=15,h=10);
translate([50,-5,-40])rotate([-90,0,0])
cylinder(d=5.5,h=12);
}
translate([47,0,-45])
rotate([0,90,0])
{
    translate([0,-2,0])cube([47,8,8]);
    translate([63,-3.5,0])rotate([0,0,0])
    servo_bracket();
}
}

module clamp(){
difference(){
translate([-7,-10,0])
cube([14,20,23]);
difference(){
    translate([0,0,5])cylinder(d=13,h=25,$fn=60);
    translate([6.5,0,12])cube([2,12,25],center=true);
    translate([-6.5,0,12])cube([2,12,25],center=true);
}
translate([-1,-11,4])cube([2,22,25]);
translate([-9,-8,14.5])rotate([0,90,0])
cylinder(d=2.2,h=21,$fn=12);
translate([-9,8,14.5])rotate([0,90,0])
cylinder(d=2.2,h=21,$fn=12);
translate([0,21,0])rotate([45,0,0])cube(size=[25,25,25],center=true);
translate([0,-21,0])rotate([45,0,0])cube(size=[25,25,25],center=true);
translate([21,0,0])rotate([0,0,90])rotate([45,0,0])
cube(size=[25,25,25],center=true);
translate([-21,0,0])rotate([0,0,90])rotate([45,0,0])
cube(size=[25,25,25],center=true);
}
}

module servo_bracket(){
difference(){
union(){
translate([1,0,2])cube([35,19,4],center=true);
translate([0,9.5,2])
rotate([90,0,0])linear_extrude(height=19)
polygon([[-16.5,0],[16.5,0],[-16.5,8]]);
translate([13.75,0,0])cylinder(d=8,h=2,$fn=60);
}
cube([23.4,12.4,50],center=true);
translate([13.75,0,-1])cylinder(d=2.2,h=6,$fn=30);
translate([-13.75,0,-1])cylinder(d=2.2,h=50,$fn=30);
translate([7,-3,-1])cube([6,6,12]);
}
}
}

module wheel_bracket(){
    translate([0,4,3])rotate([0,0,90])
clamp();

// apoyos para imprimir sin despegarse
//translate([10,14,-6])cylinder(d=18,h=0.5);
//translate([10,-6,-6])cylinder(d=18,h=0.5);

rotate([-90,0,0]) bracket();

module bracket(){
$fn=60;
difference(){
translate([32,-26,4])rotate([0,90,0])
cylinder(d=24,h=6);
translate([30,-26,4])rotate([0,90,0])
cylinder(d=7.5,h=9);
}

translate([-4,-7,0])cube([8,10,8]);
translate([32,-22,0])cube([6,25,8]);
translate([-1,0,0])cube([36,6,8]);

translate([-1,3,0])rotate([0,0,-90])
cylinder(d=6,h=8);
translate([35,3,0])rotate([0,0,-90])
cylinder(d=6,h=8);

}
//translate([-18,-20,-1])cube([10,10,20]);

module clamp(){
difference(){
translate([-7,-10,0])
cube([14,20,23]);
difference(){
    translate([0,0,5])cylinder(d=13,h=25,$fn=60);
    translate([6.5,0,12])cube([2,12,25],center=true);
    translate([-6.5,0,12])cube([2,12,25],center=true);
}
translate([-1,-11,4])cube([2,22,25]);
translate([-9,-8,14.5])rotate([0,90,0])
cylinder(d=2.2,h=21,$fn=12);
translate([-9,8,14.5])rotate([0,90,0])
cylinder(d=2.2,h=21,$fn=12);
translate([0,21,0])rotate([45,0,0])cube(size=[25,25,25],center=true);
translate([0,-21,0])rotate([45,0,0])cube(size=[25,25,25],center=true);
translate([21,0,0])rotate([0,0,90])rotate([45,0,0])
cube(size=[25,25,25],center=true);
translate([-21,0,0])rotate([0,0,90])rotate([45,0,0])
cube(size=[25,25,25],center=true);
}
}
}

module stabilizing_bar(){
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

}
