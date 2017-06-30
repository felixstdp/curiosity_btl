difference(){

linear_extrude(height=4)
polygon(
[[-65,3],
[0,8],
[65,3],
[65,-3],
[0,-8],
[-65,-3]]);

cylinder(d=5,h=10,center=true,$fn=30);
}
