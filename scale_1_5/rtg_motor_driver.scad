$fn=20;
difference(){
    cylinder(d=60,h=10,$fn=6,center=true);
    cylinder(d=58,h=10,$fn=6,center=true);
    translate([-10,0,0])rotate([90,0,0])
    cylinder(d=3,h=100);
    translate([10,0,0])rotate([90,0,0])
    cylinder(d=3,h=100);
rotate([0,0,120]){
    translate([-10,0,0])rotate([90,0,0])
    cylinder(d=3,h=100);
    translate([10,0,0])rotate([90,0,0])
    cylinder(d=3,h=100);
}
rotate([0,0,240]){
    translate([-10,0,0])rotate([90,0,0])
    cylinder(d=3,h=100);
    translate([10,0,0])rotate([90,0,0])
    cylinder(d=3,h=100);
}
}
