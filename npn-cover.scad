/**
 *    NPN_cover
 * 
 *    @author         Karel Fiala
 *    @email          fiala.karel@gmail.com
 */

$fn=200;

module NPN_cover() {

    // code
    npn_width = 11;
    npn_thick = 5;
    npn_height = 28 - 7;
    wall_thick = 0.7;
    
    difference() {
        translate([0, 0, -wall_thick])
            cube([npn_width + 2*wall_thick, npn_thick + 2*wall_thick, npn_height], center = true);
        cube([npn_width, npn_thick, npn_height], center = true);
        
        translate([0, 0, -npn_height/2 - wall_thick])
            cube([7, 4, wall_thick*2], center = true);
    }

}


// calling
NPN_cover();