difference(){
translate([-8,-11,0])cube([16,22,15]);
difference(){
    translate([0,0,-1])cylinder(d=12.2,h=25,$fn=60);
    translate([6.1,0,-1])cube([2,16,40],center=true);
    translate([-6.1,0,-1])cube([2,16,40],center=true);
}
translate([0,14,-15])rotate([45,0,0])cube(30,center=true);
translate([-1,0,-1])cube([2,22,25]);
translate([-9,8,7.5])rotate([0,90,0])
cylinder(d=2.2,h=21,$fn=12);
translate([-9,8,7.5])rotate([0,90,0])
cylinder(d=2.8,h=10,$fn=12);
}

difference(){
union(){
translate([-8,-38,0])cube([16,32,6]);
translate([-8,-38,0])cube([16,6,37]);
translate([0,-32,37])rotate([90,0,0])
cylinder(d=16,h=6,$fn=120);
}
translate([0,-56,0])rotate([45,0,0])cube(30,center=true);
translate([0,-31,29])rotate([90,0,0])
cylinder(d=6.8,h=8,$fn=40);
translate([0,-31,38])rotate([90,0,0])
cylinder(d=1.2,h=8,$fn=40);
translate([0,-31,18])rotate([90,0,0])
cylinder(d=1.2,h=8,$fn=40);
translate([0,-36,28])rotate([90,0,0])
hull(){
cylinder(d=5.5,h=7,$fn=40);
translate([0,13.6,0])cylinder(d=4,h=7,$fn=40);
translate([0,-13.6,0])cylinder(d=4,h=7,$fn=40);
}  
}
