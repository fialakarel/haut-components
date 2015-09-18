/**
 *    rpi_a_plus_case
 * 
 *    @author         Karel Fiala
 *    @email          fiala.karel@gmail.com
 */

$fn=100;

module cyl(x, y, z) {
    
    rad = 2;
    
    hull() {
        translate([0, 0, 0])
            cylinder(d = rad, h = z);
        
        translate([x, 0, 0])
            cylinder(d = rad, h = z);
        
        translate([0, y, 0])
            cylinder(d = rad, h = z);
        
        translate([x, y, 0])
            cylinder(d = rad, h = z);
    }
}

module legs(x, y, l_height) {
    
    l_out = 5;
    l_in = 3;
    
    translate([3, 3, 0])
        difference() {
            cylinder(d = l_out, h = l_height);
            cylinder(d = l_in, h = l_height + 10);
        }
    translate([3, y-1, 0])
        difference() {
            cylinder(d = l_out, h = l_height);
            cylinder(d = l_in, h = l_height + 10);
        }
    translate([x-0.5 - 4, 3, 0])
        difference() {
            cylinder(d = l_out, h = l_height);
            cylinder(d = l_in, h = l_height + 10);
        }
    translate([x-0.5 - 4, y-1, 0])
        difference() {
            cylinder(d = l_out, h = l_height);
            cylinder(d = l_in, h = l_height + 10);
        }
}

module lid(x, y, wall_thick, bottom_thick) {
    difference() {
        union() {
            // top
            cyl(x + 2*wall_thick, y + 2*wall_thick, bottom_thick);
            
            // limec
            translate([wall_thick, wall_thick, 0])
                cyl(x, y, bottom_thick + 3);
        }
        translate([wall_thick + 1, wall_thick + 1, bottom_thick])
            cyl(x - 2, y - 2, bottom_thick + 3);
    }
}

module rpi_a_plus_case() {

    wall_thick = 0.8;
    bottom_thick = 0.5;
    x = 57;
    y = 64;
    z = 14;
    bottom_legs_height = 3.5;
    
    difference() {
    
        union() {
            difference() {
                cyl(x + 2*wall_thick, y + 2*wall_thick, z + bottom_thick);
                translate([wall_thick, wall_thick, bottom_thick])
                    cyl(x, y, z + 10);
            }
    
        legs(x, y, bottom_legs_height);
    }
    
    // USB
    color("red")
        translate([18, y + wall_thick, wall_thick + 5])
            cube([13, 3*wall_thick, 10 + 7]);
    
    
    // power
    color("red")
        translate([x + wall_thick, 4.5 + wall_thick, wall_thick + 1])
        cube([3*wall_thick, 11, 9]);
    
    // SD
    color("red")
        translate([(x-15)/2 + 0.5, -2*wall_thick, wall_thick + 1])
        cube([14, 3*wall_thick, 2.5]);
    
    }

    // MAIN LID (top)
    difference() {
        // lid
        union() {
            // lid
            translate([-x - 10, 0, 0])
                lid(x, y, wall_thick, bottom_thick + 0.25);
            
            //legs
            translate([-9, 0, 0])
                mirror() {
                    legs(x, y, z - bottom_thick + 0.25 - bottom_legs_height);
                }
        }
    
        // GPIO
        translate([-15, 7, - 2*bottom_thick])
            color("red") cube([6, 52, 4*bottom_thick]);
    
        // camera flex cable
        translate([-x-7, y-21, - 2*bottom_thick])
            color("red") cube([24, 5, 4*bottom_thick]);    
        
    }
    
    

}


// calling
rpi_a_plus_case();