$fn=120;

difference(){
cylinder(d=95,h=76);
translate([0,0,-1])cylinder(d=91.8,h=78);
}

for(i=[0:60:330])
{
    rotate([0,0,i])
    translate([-1.2,7,0])
    cube(size=[2.4,40,16]);
}

difference(){
cylinder(d=25,h=36,$fn=60);
translate([0,0,29])cylinder(d=14.4,h=11,$fn=6);
translate([0,0,-1])cylinder(d=3.2,h=40);
translate([0,0,-1])cylinder(d=8,h=27);
}
