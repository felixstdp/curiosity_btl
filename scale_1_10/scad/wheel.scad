$fn=120;
difference(){
cylinder(d=47,h=38);
translate([0,0,-1])cylinder(d=45,h=40);
}
difference(){
union()
{
for(i=[0:60:300])
{
    rotate([0,0,i])translate([3,-0.75,0])
    cube(size=[20,1.5,10]);
} 
cylinder(d=16,h=10);
}
translate([0,0,-1])cylinder(d=3.35,h=21);
}
rotate([0,0,30])translate([1.15,-2,0])
cube(size=[2,4,10]);