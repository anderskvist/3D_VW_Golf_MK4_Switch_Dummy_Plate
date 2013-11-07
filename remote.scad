/*
translate([-10,-17.5,-1.5]) cube([20,35,3]);
translate([-1.5,-17.5,1.5]) cube([3,10,2]);
translate([-2.5,-17.5,3.5]) cube([5,10,1]);
translate([-5,5,1.5]) cube([1,5,2]);
*/

x = 29; // 29.4
y = 45; //45.5
z = 3;
a = 7;

difference() {
	union() {
		difference()	{
			translate([-x/2,-y/2,-z]) cube([x,y,z*3]);
			translate([-(x+10)/2,-(y+10)/2,5]) rotate([0,a,0]) cube([x+10,y+10,z+10]);
//			translate([-16.99,-2.5,-7]) cube([8,5,30]);
		}
		difference() {
			translate([-11,-20,-1]) cube([22,40,18]);
			translate([-9,-18,-1]) cube([18,36,19]);
			translate([11,20,-1]) rotate([0,0,0]) rounding(19,2);
			translate([-11,20,-1]) rotate([0,0,90]) rounding(19,2);
			translate([11,-20,-1]) rotate([0,0,270]) rounding(19,2);
			translate([-11,-20,-1]) rotate([0,0,180]) rounding(19,2);
     		translate([-(x-16)/2,-(y-4)/2,6]) cube([x-16,y-4,22]);
//			translate([-16.99,-2.5,-7]) cube([8,5,30]);
		}


	}

	translate([-(x+10)/2,-(y+10)/2,-12]) rotate([0,a,0]) cube([x+10,y+10,z+10]);
	translate([x/2,-y/2,-5]) rotate([0,0,270]) rounding(10,1);
	translate([-x/2,-y/2,-5]) rotate([0,0,180]) rounding(10,1);
	translate([-x/2,y/2,-5]) rotate([0,0,90]) rounding(10,4);
	translate([x/2,y/2,-5]) rotate([0,0,0]) rounding(10,4);
}
difference() {
	union() {
		translate([-(x-20)/2,-(y-5)/2,-z/2+1]) cube([x-20,y-5,22]);
		translate([-4,-19,14]) rotate([45,0,0]) cube([8,4,4]);
		translate([-4,19,14]) rotate([45,0,0]) cube([8,4,4]);
	}
	translate([-(x-18)/2,-(y-9)/2,-z/2+1]) cube([x-18,y-9,23]);
	translate([-x/2,-y/2,18.5]) cube([x,y,10]);
}

translate([-13,9,1]) cube([2,2,12]);
translate([-13,-11,1]) cube([2,2,12]);
translate([11,9,-2]) cube([2,2,15]);
translate([11,-11,-2]) cube([2,2,15]);

//#translate([-1,-22,1]) cube([2,2,15]);

module rounding(length, radius)
{
		
        translate([-radius,-radius,0]) difference()
        {
                cube([radius*2,radius*2,length]);
                translate([0,0,-1]) cylinder(length+2,radius,radius,$fn=20);
        }       
}
