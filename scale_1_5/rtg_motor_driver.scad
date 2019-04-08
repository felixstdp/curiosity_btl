$fn=20;
difference(){
union(){    
    cylinder(d=100,h=12,$fn=6);
    cylinder(d=105,h=3,$fn=6);
}
    translate([0,0,3])
    cylinder(d=95,h=12,$fn=6);
    cylinder(d=70,h=12,$fn=60);
for(i=[60:120:300]){
 rotate([0,0,i]){
    translate([-20,0,7])rotate([90,0,0])
    cylinder(d=3,h=100);
    translate([20,0,7])rotate([90,0,0])
    cylinder(d=3,h=100);
    translate([-15,-120,3])cube([30,120,10]);
}
}
}

difference(){
translate([0,-27,1.5])cube([62,17,3],center=true);
translate([10,-25,0]) cylinder(d=3.2,h=3);
translate([-10,-25,0]) cylinder(d=3.2,h=3);
}
