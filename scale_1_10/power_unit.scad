$fn=30;

difference(){
    cylinder(d=20,h=60);
    translate([0,0,-1])cylinder(d=18,h=62);
}

for (j=[0:60:300]){
    rotate([0,0,j])
    translate([10,-.5,0])
    cube([12,1,60]);
}
