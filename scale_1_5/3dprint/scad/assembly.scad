translate([-170,-60,-35])rotate([180,0,90])
frontbogie1();
rotate([90,0,0])frontbogie2();
translate([130,0,-45])rotate([-90,0,180])
frontbogie3();

translate([260,-58,-33])rotate([180,0,90])
rearbogie1();
translate([130,-21,-45])rotate([90,180,0])
rearbogie2();
translate([52,-19,-132])rotate([90,0,0])rearbogie3();

translate([-170,-15,-136])rotate([90,0,0])
wheelbracket1();
translate([-170,-60,-60])rotate([0,0,90])
wheelbracket2();

translate([260,-12,-136])rotate([90,0,0])
wheelbracket1();
translate([260,-57,-60])rotate([0,0,90])
wheelbracket2();

translate([-170,-85,-135])rotate([-90,0,0])
wheelrim_corner();
translate([260,-85,-135])rotate([-90,0,0])
wheelrim_corner();
translate([55,-95,-135])rotate([-90,0,0])
wheelrim_center();

translate([0,280,0])scale([1,-1,1]){
translate([-170,-60,-35])rotate([180,0,90])
frontbogie1();
rotate([90,0,0])frontbogie2();
translate([130,0,-45])rotate([-90,0,180])
frontbogie3();

translate([260,-58,-33])rotate([180,0,90])
rearbogie1();
translate([130,-21,-45])rotate([90,180,0])
rearbogie2();
translate([52,-19,-132])rotate([90,0,0])rearbogie3();

translate([-170,-15,-136])rotate([90,0,0])
wheelbracket1();
translate([-170,-60,-60])rotate([0,0,90])
wheelbracket2();

translate([260,-12,-136])rotate([90,0,0])
wheelbracket1();
translate([260,-57,-60])rotate([0,0,90])
wheelbracket2();

translate([-170,-85,-135])rotate([-90,0,0])
wheelrim_corner();
translate([260,-85,-135])rotate([-90,0,0])
wheelrim_corner();
translate([55,-95,-135])rotate([-90,0,0])
wheelrim_center();
}

translate([90,140,30])diffpivot();

module frontbogie1(){

$fn=20;

translate([0,0,5])
difference(){
    cylinder(d=45,h=15,$fn=60);
    translate([0,0,4])cylinder(d=35.6,h=12,$fn=60);
    translate([0,0,-1])cylinder(d=25,h=12,$fn=60);
}

difference(){
rotate([0,0,-22])
rotate([-14,0,0])
translate([0,30,16])
rotate([90,0,0])
difference(){
cube([17,17,42],center=true);
cube([10.4,10.4,42],center=true);
}
translate([0,0,5])cylinder(d=35.6,h=16,$fn=60);
translate([0,0,25])cube([100,100,10],center=true);
}


$fn=12;
translate([10,0,0])
rotate([0,0,90])
difference(){
cube([26,58,10],center=true);
cube([20.5,40.5,12],center=true);
translate([5,25,-6])cylinder(d=2.5,h=12);
translate([-5,25,-6])cylinder(d=2.5,h=12);
translate([-5,-25,-6])cylinder(d=2.5,h=12);
translate([5,-25,-6])cylinder(d=2.5,h=12);
}

}

module frontbogie2(){
    
rotate([0,0,-19])
translate([30,0,0])
difference(){
cube([42,17,17],center=true);
cube([43,10.4,10.4],center=true);
}

difference(){
translate([0,0,-3.5])
rotate([0,22,0])
rotate([0,0,14])
translate([-28,0,0])
difference(){
cube([42,17,17],center=true);
cube([43,10.4,10.4],center=true);
}
translate([0,0,-18.5])
cylinder(d=30,h=10);
}

$fn=60;
translate([0,0,-8.5])
difference(){
cylinder(d=30,h=20);
cylinder(d=5,h=20,$fn=20);
translate([0,10,5])rotate([-90,0,0])
cylinder(d=3.5,h=10);    
}

difference(){
translate([0,0,-8.5])
linear_extrude(height=10)
polygon([[-10,4],[10,4],[5,25],[-5,25]]);
translate([0,5,-3.5])rotate([-90,0,0])
cylinder(d=3.5,h=100,$fn=20);
}

}

module frontbogie3(){
    
rotate([0,0,-19])
translate([30,0,0])
difference(){
cube([42,17,17],center=true);
cube([43,10.4,10.4],center=true);
}

$fn=60;
translate([0,0,-8.5])
difference(){
cylinder(d=25,h=20);
cylinder(d=5,h=20);
}

}

module rearbogie1(){
    $fn=20;

translate([0,0,5])
difference(){
    cylinder(d=45,h=15,$fn=60);
    translate([0,0,4])cylinder(d=35.6,h=12,$fn=60);
    translate([0,0,-1])cylinder(d=25,h=12,$fn=60);
}

difference(){
rotate([0,0,-163])
translate([0,40,11.5])
rotate([90,0,0])
difference(){
cube([17,17,42],center=true);
cube([10.4,10.4,42],center=true);
}
translate([0,0,5])cylinder(d=35.6,h=16,$fn=60);
translate([0,0,25])cube([120,120,10],center=true);
translate([10,0,0])rotate([0,0,90])
cube([20.5,40.5,12],center=true);
}


$fn=12;
translate([10,0,0])rotate([0,0,90])
difference(){
cube([26,58,10],center=true);
cube([20.5,40.5,12],center=true);
translate([5,25,-6])cylinder(d=2.5,h=12);
translate([-5,25,-6])cylinder(d=2.5,h=12);
translate([-5,-25,-6])cylinder(d=2.5,h=12);
translate([5,-25,-6])cylinder(d=2.5,h=12);
}
}

module rearbogie2(){
    rotate([0,0,30])
translate([30,0,0])
difference(){
cube([42,17,17],center=true);
cube([43,10.4,10.4],center=true);
}

difference(){
translate([0,0,-3])
rotate([0,17,0])
translate([-28,0,0])
difference(){
cube([42,17,17],center=true);
cube([43,10.4,10.4],center=true);
}
translate([0,0,-18.5])
cylinder(d=30,h=10);
}

$fn=60;
translate([0,0,-8.5])
difference(){
cylinder(d=25,h=20);
cylinder(d=5,h=20);
}
}

module rearbogie3() {
$fn=60;

difference(){
union(){
cylinder(d=33,h=16);
translate([0,42,1.5])rotate([0,0,30])
cube([42,17,17],center=true);
translate([-8,9,2])
minkowski(){
sphere(d=4,$fn=30);
cube(size=[16,32,6]);
}
translate([-7,-21,0]) cube(size=[14,8,16]);
}
translate([0,0,-1]) cylinder(d=25,h=22);
translate([-.5,-25,-1]) cube(size=[1,20,22]);

translate ([-10,-16,4])rotate([0,90,0])
cylinder(d=2.7,h=100);
translate ([7,-16,4])rotate([0,90,0])
cylinder(d=5.5,h=100);
translate ([-17,-16,4])rotate([0,90,0])
cylinder(d=7,h=10,$fn=6);

translate ([-10,-16,12])rotate([0,90,0])
cylinder(d=2.7,h=100);
translate ([7,-16,12])rotate([0,90,0])
cylinder(d=5.5,h=100);
translate ([-17,-16,12])rotate([0,90,0])
cylinder(d=7,h=10,$fn=6);

translate([0,60,15])rotate([-90,0,0])
cylinder(d=3,h=100);
translate([0,56,15])rotate([-90,0,0])
cylinder(d=6.5,h=10,$fn=6);

translate([0,90,0])cube([60,40,60],center=true);
translate([0,42,1.5])rotate([0,0,30])
cube([43,10.4,10.4],center=true);
}
}

module wheelbracket1(){
$fn=20;

difference(){
union(){
cylinder(d=33,h=16,$fn=60);
translate([-8,9,2])
minkowski(){
sphere(d=4);
union(){    
cube(size=[16,66,6]);
translate([0,44,0])rotate([90,0,90])
linear_extrude(height=16)polygon([[0,0],[20,0],[20,20]]);
}    
}
translate([-8,-21,0]) cube(size=[16,8,16]);
}
translate([0,0,-1]) cylinder(d=25,h=22,$fn=60);
translate([-.5,-25,-1]) cube(size=[1,20,22]);

translate ([-15,-16,4])rotate([0,90,0])
cylinder(d=2.7,h=100);
translate ([8,-16,4])rotate([0,90,0])
cylinder(d=5,h=100);
translate ([-18,-16,4])rotate([0,90,0])
cylinder(d=6.5,h=10,$fn=6);

translate ([-15,-16,12])rotate([0,90,0])
cylinder(d=2.7,h=100);
translate ([8,-16,12])rotate([0,90,0])
cylinder(d=5,h=100);
translate ([-18,-16,12])rotate([0,90,0])
cylinder(d=6.5,h=10,$fn=6);

translate([5,58,5])rotate([-90,0,0])
cylinder(d=3,h=100);
translate([-5,58,5])rotate([-90,0,0])
cylinder(d=3,h=100);

translate([0,60,15])rotate([-90,0,0])
cylinder(d=3,h=100);
translate([0,56,15])rotate([-90,0,0])
cylinder(d=6.5,h=10,$fn=6);

translate([0,90,0])cube([60,40,60],center=true);
}
}

module wheelbracket2(){
$fn=20;

difference(){
union(){

cylinder(d=18,h=6,$fn=60);
cylinder(d=15,h=16,$fn=60);

minkowski(){
cylinder(d=33,h=8,$fn=60,center=true);
sphere(d=2);
}

translate([20,0,0])
minkowski(){
cube([31,16,6],center=true);
sphere(d=4);
}

translate([35,0,-5])
difference(){
minkowski(){
rotate([90,0,0])
cylinder(d=16,h=16,$fn=60,center=true);
sphere(d=4);
}
translate([-5,0,-15])
cube([30,30,30],center=true);
}

}
translate([30,0,0])
cylinder(d=3.2,h=100,center=true);
translate([40,-5,0])
cylinder(d=3.2,h=100,center=true);
translate([40,5,0])
cylinder(d=3.2,h=100,center=true);
translate([30,0,6.5])
cylinder(d=6,h=10,center=true);
translate([40,-5,6.5])
cylinder(d=6,h=10,center=true);
translate([40,5,6.5])
cylinder(d=6,h=10,center=true);

cylinder(d=3.2,h=50,center=true);
}
}

module diffpivot(){
difference(){
hull(){
cylinder(d=50,h=10,center=true,$fn=120);
rotate([90,0,0])
cylinder(d=10,h=230,center=true,$fn=30);
}
translate([0,0,-5])linear_extrude(10)
polygon([[17,0],[0,95],[-17,0]]);
rotate([0,0,180])
translate([0,0,-5])linear_extrude(10)
polygon([[17,0],[0,95],[-17,0]]);
translate([0,-95,0])rotate([90,0,0])
cylinder(d=3.5,h=25,$fn=12);
translate([0,95,0])rotate([-90,0,0])
cylinder(d=3.5,h=25,$fn=12);
}
difference(){
cylinder(d=50,h=10,center=true,$fn=120);
cylinder(d=5,h=10,center=true,$fn=30);
}
translate([0,90,0])
cube([10,10,10],center=true);
translate([0,-90,0])
cube([10,10,10],center=true);
}

module wheelrim_corner(){
$fn=72;

difference(){
union(){
cylinder(d=61.5,h=3);
translate([0,0,3])
cylinder(d=55.5,h=2);
translate([0,0,5])
cylinder(d1=55.5,d2=61.5,h=3);
translate([0,0,8])
cylinder(d=61.5,h=2);    
translate([0,0,10])
cylinder(d=55.5,h=26);
translate([0,0,36])
cylinder(d1=55.5,d2=61.5,h=3);    
translate([0,0,39])
cylinder(d=61.5,h=2);
translate([0,0,41])
cylinder(d=55.5,h=3);
translate([0,0,43])
cylinder(d1=55.5,d2=61.5,h=3);
translate([0,0,46])
cylinder(d=61.5,h=3);
}
translate([0,0,-1])
cylinder(d=51.5,h=51);
translate([0,0,-1])
cylinder(d=3.2,h=4);

for(i=[0:60:300])
{
    rotate([0,0,i])
    translate([17,0,-1])
    scale([1,1.5,1])
    cylinder(d=10,h=4);
}
}
for(i=[0:60:330])
{
    rotate([0,0,i])
    translate([-1.5,7,0])
    cube(size=[3,20,10]);
}
difference(){
cylinder(d=18.4,h=10);
translate([0,0,2])
cylinder(d=14.4,h=9,$fn=6);
translate([0,0,-1])
cylinder(d=3.2,h=6);
}
}

module wheelrim_center(){
$fn=72;

difference(){
union(){
cylinder(d=61.5,h=3);
translate([0,0,3])
cylinder(d=55.5,h=2);
translate([0,0,5])
cylinder(d1=55.5,d2=61.5,h=3);
translate([0,0,8])
cylinder(d=61.5,h=2);    
translate([0,0,10])
cylinder(d=55.5,h=26);
translate([0,0,36])
cylinder(d1=55.5,d2=61.5,h=3);    
translate([0,0,39])
cylinder(d=61.5,h=2);
translate([0,0,41])
cylinder(d=55.5,h=3);
translate([0,0,43])
cylinder(d1=55.5,d2=61.5,h=3);
translate([0,0,46])
cylinder(d=61.5,h=3);
}
translate([0,0,-1])
cylinder(d=51.5,h=51);
translate([0,0,-1])
cylinder(d=3.2,h=4);

for(i=[0:60:300])
{
    rotate([0,0,i])
    translate([17,0,-1])
    scale([1,1.5,1])
    cylinder(d=10,h=4);
}
}
for(i=[0:60:330])
{
    rotate([0,0,i])
    translate([-1.5,7,0])
    cube(size=[3,20,25]);
}
difference(){
cylinder(d=18.4,h=25);
translate([0,0,17])
cylinder(d=14.4,h=24,$fn=6);
translate([0,0,-1])
cylinder(d=3.2,h=21);
cylinder(d=8,h=15);
}
}
