$fn=120;

difference(){

cylinder(d=95,h=76);

translate([0,0,-1])cylinder(d=90,h=78);
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
    translate([-2,7,0])
    cube(size=[4,40,20]);
}
difference(){
cylinder(d=25,h=20,$fn=60);
translate([0,0,10])cylinder(d=14.4,h=11,$fn=6);
translate([0,0,-1])cylinder(d=3.2,h=16);
translate([0,0,-1])cylinder(d=8,h=9);
}
