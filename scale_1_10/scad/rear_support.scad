difference(){
linear_extrude(height=14)
polygon([[25.6,-10],[25.6,14],[28.2,21.8],[39.6,21.8],[39.6,26.8],[25.4,26.8],[11.4,11.8],[0,0],[-4,0],[-4,-10]]);
translate([-10,-4,7])rotate([0,90,0])
    cylinder(d=2,h=40,$fn=15);
translate([0,-4,7])rotate([0,90,0])
    cylinder(d=5,h=40,$fn=15);
}
