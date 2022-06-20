$fn=12;
difference(){

union(){    
difference(){
cylinder(d=100.5,h=13,$fn=6);
translate([0,0,3])cylinder(d=97,h=11,$fn=6);
}    
for(i=[0:120:300]){
rotate([0,0,i])translate([0,39.5,7]) 
    cube([41,8,12],center=true);    
}
}
translate([0,0,-1])cylinder(d=72,h=14,$fn=6);    
    
for(i=[0:120:300]){
rotate([0,0,i]){
    translate([-16,0,9])rotate([-90,0,0])
    cylinder(d=3.2,h=100);
    translate([16,0,9])rotate([-90,0,0])
    cylinder(d=3.2,h=100);
    translate([-12,0,3])cube([24,120,11]);
}
}
translate([-12,0,-1])cube([24,120,11]);
}

difference(){
translate([0,-9,1.5])cube([72,30,3],center=true);
translate([10,-8,-1])cylinder(d=3.2,h=5);
translate([-10,-8,-1])cylinder(d=3.2,h=5);
translate([19,-15,-1])cylinder(d=6,h=5);
translate([-19,-15,-1])cylinder(d=6,h=5);
cylinder(d=3.2,h=4);    
}
