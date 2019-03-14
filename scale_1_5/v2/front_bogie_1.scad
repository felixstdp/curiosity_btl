$fn=20;

translate([0,0,5])
difference(){
    cylinder(d=45,h=15,$fn=60);
    translate([0,0,4])cylinder(d=35,h=12,$fn=60);
    translate([0,0-1])cylinder(d=20,h=12,$fn=60);
}

translate([5.95,0,0])
difference(){
translate([0,0,2.5])cube([50,16,5],center=true);
translate([21.4,3.7,-1])cylinder(d=2.7,h=10);
translate([-21.4,3.7,-1])cylinder(d=2.7,h=10);
translate([-21.4,-3.7,-1])cylinder(d=2.7,h=10);
translate([21.4,-3.7,-1])cylinder(d=2.7,h=10);
translate([-5.95,0-1])cylinder(d=22,h=12,$fn=60);    
}

difference(){
rotate([0,0,-22])
rotate([-14,0,0])
translate([0,30,16])
rotate([90,0,0])
difference(){
cube([17,17,42],center=true);
cube([10,10,42],center=true);
}
translate([0,0,5])cylinder(d=35,h=16,$fn=60);
translate([0,0,25])cube([100,100,10],center=true);
}
