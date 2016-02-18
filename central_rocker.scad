$fn=60;

bar(74);
pin();

module pin(){
difference(){
cylinder(d=16,h=3.5);
translate([0,0,-1])cylinder(d=6,h=9);
for(i=[0:120:240]){
    rotate([0,0,i])
    translate([6,0,-1])cylinder(d=2.2,h=5);
}
}
}

module bar(length){
translate([0,0,3.5])rotate([360/16,0,0])rotate([0,90,0])
    cylinder(d=7.577,h=length,$fn=8);
}
