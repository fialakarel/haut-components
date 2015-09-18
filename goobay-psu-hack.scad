/**
 *    goobay_psu_case
 * 
 *    @author         Karel Fiala
 *    @email         fiala.karel@gmail.com
 */

$fn=100;

module goobay_psu_case() {

    x = 34;
    y = 46;
    z = 20;
    
    wall_thick = 0.8;
    bottom_thick = 0.5;

    difference() {
        cube([x + 2*wall_thick, y + 2*wall_thick, z + bottom_thick]);
        translate([wall_thick, wall_thick, bottom_thick])
            cube([x, y, z + 10]);
        
        // USB
        translate([15, y, 3])
            color("red") cube([15, 3*wall_thick, 10]);
    }

}


// calling
goobay_psu_case();