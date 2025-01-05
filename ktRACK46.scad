//
// ktRACK46
//
 
gap1 = 0.001;
gap2 = 0.002;
th = 2;

W = 75;
L = 170;
BTW = 67.5+0.5;
BTD = 67.5+0.5;
BTH = 15;

base();







module base()
{
difference()
{
    union()
    {
        translate([-65/2, -W/2, 0]) cube([L, W, 15]);
        translate([0, 0, 15]) cylinder(r1=55/2, r2=38/2, h=65, $fn=100);
        translate([40+BTW/2, 0, 15]) rotate([0, 0, 45]) cylinder(r1=53, r2=50, h=10, $fn=4);
    }
    translate([0, 0, 15+65-2-gap1]) cylinder(r1=(38-4)/2, r2=(38-4)/2, h=2+gap2, $fn=100);
    translate([0, 0, 15-2]) cylinder(r1=55/2, r2=38/2, h=65, $fn=100);
    //translate([0, 0, -gap1]) cylinder(r1=55/2, r2=55/2, h=15-2+gap2, $fn=100);
    
    translate([12/2+40, 12/2-BTD/2, 15])
    minkowski()
    {
        cube([BTW-12, BTD-12, 1]);
        cylinder(r=12/2, h=BTH-1, $fn=100);
    }
    
    translate([L-40, -W/2, 5]) rotate([0, -5, 0]) cube([1.5, W, 30]);
}
}
