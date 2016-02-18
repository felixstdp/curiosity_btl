$fn=60;

translate([0,0,15])clamp();

bracket();

difference(){
translate([0,23,0])rotate([0,0,30])
bar(44);
translate([0,23,3.5])rotate([0,0,30])translate([48,0,0])
cylinder(d=16,h=7);
}

translate([0,23,0])rotate([0,0,30])translate([48,0,0])
difference(){
cylinder(d=16,h=3.5);
translate([0,0,-1])cylinder(d=6,h=9);
}

module bracket(){
translate([-4,-3.5,3])cube([8,7,13]);
translate([-4,0,3.5])rotate([0,90,0])cylinder(d=7,h=8);
translate([-4,0,0])cube([8,23,7]);
translate([0,23,0])cylinder(d=8,h=7);    
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

module bar(length){
translate([0,0,3.5])rotate([360/16,0,0])rotate([0,90,0])
    cylinder(d=7.577,h=length,$fn=8);
}
