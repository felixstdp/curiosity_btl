$fn=60;
pin();

difference(){
translate([8,-6,0])cube([15,12,8]);

translate([0,0,10])rotate([0,24,0])bar(30);
translate([0,0,4])cylinder(d=20,h=4);
translate([7.5,0,-1])cylinder(d=2.2,h=10);
}

module pin(){
difference(){
cylinder(d=20,h=4);
translate([0,0,-1])cylinder(d=8,h=9);
translate([0,0,2])cylinder(d=10.2,h=9);
for(i=[0:120:240]){
    rotate([0,0,i+34])
    translate([7.5,0,-1])cylinder(d=2.2,h=7);
}
}
}

module bar(length){
translate([0,0,3.5])rotate([360/16,0,0])rotate([0,90,0])
    cylinder(d=7.777,h=length,$fn=8);
}
