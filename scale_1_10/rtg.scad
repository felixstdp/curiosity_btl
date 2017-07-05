$fn=30;

difference(){
    cylinder(d=18,h=50);
    translate([0,0,-1])cylinder(d=16,h=62);
}

for (j=[0:60:300]){
    rotate([0,0,j])
    translate([9,-.5,0])
    cube([10,1,50]);
}

difference(){
    rotate([0,0,30])
    cylinder(d=57,h=50,$fn=6);
    rotate([0,0,30])translate([0,0,1])
    cylinder(d=55,h=62,$fn=6);
    translate([0,0,25])cube([30,60,60],center=true);
}

translate([0,0,0.5])
cube([30,39.7,1],center=true);
