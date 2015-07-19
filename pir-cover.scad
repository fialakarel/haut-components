/**
 *    PIR_cover
 * 
 *    @author         Karel Fiala
 *    @email          fiala.karel@gmail.com
 */

$fn=200;

module PIR_cover(rounded = 0) {

    // code
    pir_width = 11.5/2;
    pir_height = 22;
    wall_thick = 0.7;
    
    difference() {
        union() {
            difference() {
                cylinder(r1=pir_width + wall_thick, r2=pir_width + wall_thick, h=pir_height, center=true);
                cylinder(r1=pir_width, r2=pir_width, h=pir_height, center=true);
            }
            translate([0, 0, -pir_height/2 + wall_thick/2])
                    cylinder(r1=pir_width, r2=pir_width, h=wall_thick, center=true);
            
            if (rounded == 0) {
                difference() {
                    cube([pir_width*2  + 2*wall_thick, pir_width*2  + 2*wall_thick, pir_height], center = true);
                    cube([pir_width*2, pir_width*2, pir_height], center = true);
                }
                translate([0, 0, -pir_height/2 + wall_thick/2])
                    cube([pir_width*2, pir_width*2, wall_thick], center = true);
            }
        }
        translate([0, 0, -pir_height/2 + wall_thick/2])
            cube([5, 3, wall_thick], center = true);
    }

}


// calling
PIR_cover(rounded = 1);