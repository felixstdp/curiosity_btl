// to be printed in filaflex or similar

$fn=90;

h=38/8;
d_ext=51.5;
giro=[0,0,-6,6,0,-6,6,0];
helice=[0,6,-12,6,6,-12,6,0];

difference(){
union(){
for (i=[0:15:105])
{
rotate([0,0,i])
for (j=[0:1:7])
{
translate([0,0,h*j])
rotate([0,0,giro[j]])
linear_extrude(height=h,twist=helice[j])
circle(d=d_ext,$fn=3);
}
}
cylinder(d=49,h=38);
}
translate([0,0,-1])cylinder(d=47,h=40);
}
