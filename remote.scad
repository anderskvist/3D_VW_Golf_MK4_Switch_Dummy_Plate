/*
translate([-10,-17.5,-1.5]) cube([20,35,3]);
translate([-1.5,-17.5,1.5]) cube([3,10,2]);
translate([-2.5,-17.5,3.5]) cube([5,10,1]);
translate([-5,5,1.5]) cube([1,5,2]);
*/

x = 28;
y = 44;
z = 3;
a = 7;

difference() {
	translate([-x/2,-y/2,-z]) cube([x,y,z*2]);
	translate([-(x+10)/2,-(y+10)/2,3]) rotate([0,a,0]) cube([x+10,y+10,z+10]);
	translate([-(x+10)/2,-(y+10)/2,-12]) rotate([0,a,0]) cube([x+10,y+10,z+10]);
	translate([x/2,-y/2,-5]) rotate([0,0,270]) rounding(10,1);
	translate([-x/2,-y/2,-5]) rotate([0,0,180]) rounding(10,1);
	translate([-x/2,y/2,-5]) rotate([0,0,90]) rounding(10,2);
	translate([x/2,y/2,-5]) rotate([0,0,0]) rounding(10,2);
}
difference() {
	union() {
			translate([-(x-20)/2,-(y-6)/2,-z/2+1]) cube([x-20,y-6,22]);
		translate([-4,-18,13]) rotate([45,0,0]) cube([8,4,4]);
		translate([-4,18,13]) rotate([45,0,0]) cube([8,4,4]);
	}
	translate([-(x-18)/2,-(y-8)/2,-z/2+1]) cube([x-18,y-8,23]);
}


//#translate([-1,-22,1]) cube([2,2,15]);

module rounding(length, radius)
{
		
        translate([-radius,-radius,0]) difference()
        {
                cube([radius*2,radius*2,length]);
                translate([0,0,-1]) cylinder(length+2,radius,radius,$fn=20);
        }       
}
