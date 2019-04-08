difference(){
union(){
    translate([-2.5,0,0])cube([55,17,15]);
    translate([52.5,17,0])rotate([90,-90,-90])
linear_extrude(55)
polygon([[0,0],[15,0],[0,8.7]]);
}
translate([-2.5,0,5])cube([55,10,10]);
translate([-2.5,27,0])cube([55,15,15]);

translate([25,5,0])cylinder(d=3.2,h=10,$fn=15);

translate([6,0,10])rotate([-90,0,0])
cylinder(d=3.2,h=100,$fn=15,center=true);
translate([6,15,10])rotate([-90,0,0]){
translate([-5.5,-11,0])cube([11,11,11]);
cylinder(d=11,h=100,$fn=15);
}
translate([44,0,10])rotate([-90,0,0])
cylinder(d=3.2,h=100,$fn=15,center=true);
translate([44,15,10])rotate([-90,0,0]){
translate([-5.5,-11,0])cube([11,11,11]);
cylinder(d=11,h=100,$fn=15);
}

translate([15,15,0])rotate([-60,0,0])
cylinder(d=3.2,h=25,$fn=20,center=true);
translate([35,15,0])rotate([-60,0,0])
cylinder(d=3.2,h=25,$fn=20,center=true);
translate([15,15,0])rotate([-60,0,0])
translate([0,0,-4])cylinder(d=7.5,h=8,$fn=6);
translate([35,15,0])rotate([-60,0,0])
translate([0,0,-4])cylinder(d=7.5,h=8,$fn=6);
}
