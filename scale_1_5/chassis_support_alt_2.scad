difference(){
translate([-25,0,0])cube([50,36,10]);
translate([0,20,0])cylinder(d=5,h=10,$fn=20);
translate([-20,0,5])rotate([-90,0,0])
    cylinder(d=3.2,h=50,$fn=20);
translate([20,0,5])rotate([-90,0,0])
    cylinder(d=3.2,h=50,$fn=20);
translate([17,8,0])minkowski(){
cube([10,20,10]);
cylinder(d=4,h=0.01,$fn=24);
}
translate([-27,8,0])minkowski(){
cube([10,20,10]);
cylinder(d=4,h=0.01,$fn=24);
}  
}
