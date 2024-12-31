//
// ktRACK46
//
 
gap1 = 0.001;
gap2 = 0.002;
th = 2;


base();




module base()
{
difference()
{
    union()
    {
        translate([-65/2, -65/2, 0]) cube([90, 65, 15]);
        translate([0, 0, 15]) cylinder(r1=55/2, r2=38/2, h=65, $fn=100);
    }
    translate([0, 0, 15+65-2-gap1]) cylinder(r1=(38-4)/2, r2=(38-4)/2, h=2+gap2, $fn=100);
    translate([0, 0, 15-2]) cylinder(r1=55/2, r2=38/2, h=65, $fn=100);
    //translate([0, 0, -gap1]) cylinder(r1=55/2, r2=55/2, h=15-2+gap2, $fn=100);
    
    translate([45, -65/2, 5]) rotate([0, -5, 0]) cube([1.5, 65, 30]);
}
}
