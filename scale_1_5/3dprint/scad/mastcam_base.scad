difference(){
hull(){
translate([-12,-12,0])cube([24,24,1]);
translate([0,0,0])cylinder(d=12,h=20,$fn=60);
}
translate([0,0,2])cylinder(d=8.8,h=20,$fn=30);
}
