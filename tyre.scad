$fn=90;
h=38/8;
d_ext=51.5;
difference(){
union(){
for (i=[0:15:105])
{
    rotate([0,0,i])
    {
linear_extrude(height=h,twist=0)
circle(d=d_ext,$fn=3);

translate([0,0,h])
linear_extrude(height=h,twist=6)
circle(d=d_ext,$fn=3);

rotate([0,0,-6])
translate([0,0,2*h])
linear_extrude(height=h,twist=-12)
circle(d=d_ext,$fn=3);

rotate([0,0,6])
translate([0,0,3*h])
linear_extrude(height=2*h,twist=12)
circle(d=d_ext,$fn=3);

rotate([0,0,-6])
translate([0,0,5*h])
linear_extrude(height=h,twist=-12)
circle(d=d_ext,$fn=3);

rotate([0,0,6])
translate([0,0,6*h])
linear_extrude(height=h,twist=6)
circle(d=d_ext,$fn=3);

translate([0,0,7*h])
linear_extrude(height=h,twist=0)
circle(d=d_ext,$fn=3);

}
}
cylinder(d=49,h=38);
}
translate([0,0,-1])cylinder(d=47,h=40);
}
