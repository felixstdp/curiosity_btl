$fn=120;

//difference(){
//    cylinder(d=36,h=120);
//    translate([0,0,-1])cylinder(d=32,h=122);
//}
//
//for (j=[0:60:300]){
//    rotate([0,0,j])
//    translate([18,-1,0])
//    cube([30,2,120]);
//}

difference(){
    rotate([0,0,30])
    cylinder(d=134,h=120,$fn=6);
    rotate([0,0,30])translate([0,0,2])
    cylinder(d=131.6,h=130,$fn=6);
    translate([0,0,50])cube([70,140,144],center=true);
}

difference(){
translate([0,0,1])
cube([70,93.6,2],center=true);
cylinder(d=3.2,h=3);
}
