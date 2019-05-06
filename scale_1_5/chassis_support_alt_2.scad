difference(){
translate([-15,0,0])cube([30,36,10]);
translate([0,20,0])cylinder(d=5,h=10,$fn=20);
}

difference(){
translate([-25,0,0])cube([50,6,10]);
translate([-20,0,5])rotate([-90,0,0])
    cylinder(d=3.2,h=10,$fn=20);
translate([20,0,5])rotate([-90,0,0])
    cylinder(d=3.2,h=10,$fn=20);
}

translate([0,30,0])
difference(){
translate([-25,0,0])cube([50,6,10]);
translate([-20,0,5])rotate([-90,0,0])
    cylinder(d=3.2,h=10,$fn=20);
translate([20,0,5])rotate([-90,0,0])
    cylinder(d=3.2,h=10,$fn=20);
}
