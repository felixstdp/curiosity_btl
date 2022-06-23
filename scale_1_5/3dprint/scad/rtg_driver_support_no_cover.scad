$fn=12;
difference(){

union(){    
cylinder(d=105,h=3,$fn=6);
difference(){
translate([0,0,3])cylinder(d=100.5,h=10,$fn=6);
translate([0,0,3])cylinder(d=97,h=10,$fn=6);
}    
for(i=[0:120:300]){
rotate([0,0,i])translate([0,39.5,7]) 
    cube([41,8,12],center=true);    
}
}
cylinder(d=70,h=12,$fn=60);    
    
for(i=[0:120:300]){
rotate([0,0,i]){
    translate([-16,0,9])rotate([-90,0,0])
    cylinder(d=3.2,h=100);
    translate([16,0,9])rotate([-90,0,0])
    cylinder(d=3.2,h=100);
    translate([-12,0,3])cube([24,120,10]);
}
}
}


difference(){
translate([0,-12,1.5])cube([72,24,3],center=true);
translate([10,-8,0]) cylinder(d=3.2,h=3);
translate([-10,-8,0]) cylinder(d=3.2,h=3);
translate([19,-15,0]) cylinder(d=6,h=3);
translate([-19,-15,0]) cylinder(d=6,h=3);
}
