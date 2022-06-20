$fn=90;

h=76/8;
d_ext=97.5;
giro=[0,0,-6,6,0,-6,6,0]/1.5;
helice=[0,6,-12,6,6,-12,6,0]/1.5;

difference(){
union(){
for (i=[0:15:105])
{
rotate([0,0,i])
for (j=[0:1:7])
{
translate([0,0,h*j])
rotate([0,0,giro[j]])
minkowski(){
linear_extrude(height=h,twist=helice[j])
circle(d=d_ext+5,$fn=3);
cylinder(d=3,h=0.000001);
}
}
}
cylinder(d=97.5,h=h*8);
}
translate([0,0,-1])cylinder(d=94.5,h=h*8+2);
}
