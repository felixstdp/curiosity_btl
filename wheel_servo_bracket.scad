translate([0,8,3])clamp();

translate([10,-10,-6])cylinder(d=18,h=0.5);
translate([-10,-10,-6])cylinder(d=18,h=0.5);

difference(){
rotate([-90,0,0])translate([-4,0,0])bracket();
translate([-0.75,0,6])cube([1.5,22,22]);
}    

module bracket(){
$fn=60;
rotate([0,90,0])
difference(){
union(){
cube([27,6,8]);
rotate([0,0,225])translate([0,-6,0])cube([11,6,8]);
difference(){
cylinder(r=6,h=8);
translate([-10,-20,-1])cube([24,20,20]);
}
translate([27,3,0])rotate([0,0,-90])
cylinder(d=6,h=8);
difference(){
union(){
translate([24,-26,0])cube([6,29,8]);
translate([24,-26,4])rotate([0,90,0])
cylinder(d=24,h=6);
}
translate([21,-26,4])rotate([0,90,0])
cylinder(d=7.5,h=9);
}
}
//translate([-18,-20,-1])cube([10,10,20]);
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
