scale([2,2,2])
{
$fn=60;

difference(){
    cylinder(d=18,h=60);
    translate([0,0,-1])cylinder(d=17,h=62);
}

for (j=[0:60:300]){
    rotate([0,0,j])
    translate([9,-.25,0])
    cube([15,.5,60]);
}

difference(){
    rotate([0,0,30])
    cylinder(d=67,h=60,$fn=6);
    rotate([0,0,30])translate([0,0,1])
    cylinder(d=66,h=65,$fn=6);
    translate([0,0,25])cube([35,70,72],center=true);
}

translate([0,0,0.5])
cube([35,46.8,1],center=true);
}
