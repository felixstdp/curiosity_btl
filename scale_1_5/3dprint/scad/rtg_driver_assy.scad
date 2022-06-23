$fn=12;
difference(){

union(){    
difference(){
union(){
cylinder(d=100.5,h=13,$fn=6);
translate([-52.5,0,0])cube([105,16,8]);
}
translate([0,0,3])cylinder(d=97,h=11,$fn=6);
translate([0,4,4.5])rotate([0,90,0])cylinder(d=2.35,h=200,center=true);
translate([0,12,4.5])rotate([0,90,0])cylinder(d=2.35,h=200,center=true);
}

    
for(i=[0:120:300]){
rotate([0,0,i])translate([0,39.5,7]) 
    cube([47,8,12],center=true);    
}
}
translate([0,0,-1])cylinder(d=72,h=14,$fn=6);    
    
for(i=[0:120:300]){
rotate([0,0,i]){
    translate([-18,0,9])rotate([-90,0,0])
    cylinder(d=2.9,h=100);
    translate([18,0,9])rotate([-90,0,0])
    cylinder(d=2.9,h=100);
    translate([-16,0,3])cube([32,120,11]);
}
}
translate([-16,0,-1])cube([32,120,11]);
}

difference(){
translate([0,-9,1.5])cube([72,30,3],center=true);
translate([10,-8,-1])cylinder(d=3.2,h=5);
translate([-10,-8,-1])cylinder(d=3.2,h=5);
translate([19,-15,-1])cylinder(d=6,h=5);
translate([-19,-15,-1])cylinder(d=6,h=5);
cylinder(d=3.2,h=4);    
}
