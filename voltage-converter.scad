
$fn=50;

x=22;
y=60.5;
z=15;

wall=1.5;


// vicko
/*
union() {

    hull() {
        translate([0, 0, 0])
            cylinder(d=2, h=1, center=true);

        translate([x+ 2*wall, 0, 0])
            cylinder(d=2, h=1, center=true);
            
        translate([0, y+ 2*wall, 0])
            cylinder(d=2, h=1, center=true);

        translate([x+2*wall, y+ 2*wall, 0])
            cylinder(d=2, h=1, center=true);
    }

    translate([wall, wall, wall])
    difference() {
    hull() {
        translate([0, 0, 0])
            cylinder(d=2, h=1, center=true);

        translate([x, 0, 0])
            cylinder(d=2, h=1, center=true);
            
        translate([0, y, 0])
            cylinder(d=2, h=1, center=true);

        translate([x, y, 0])
            cylinder(d=2, h=1, center=true);
    }
    translate([wall, wall, wall-1])
    hull() {
        translate([0, 0, 0])
            cylinder(d=2, h=1, center=true);

        translate([x-2*wall, 0, 0])
            cylinder(d=2, h=1, center=true);
            
        translate([0, y-2*wall, 0])
            cylinder(d=2, h=1, center=true);

        translate([x-2*wall, y-2*wall, 0])
            cylinder(d=2, h=1, center=true);
    }
}
}
*/

// telo

difference() {

    hull() {
        translate([0, 0, 0])
            cylinder(d=2, h=z, center=true);

        translate([x+ 2*wall, 0, 0])
            cylinder(d=2, h=z, center=true);
            
        translate([0, y+ 2*wall, 0])
            cylinder(d=2, h=z, center=true);

        translate([x+2*wall, y+ 2*wall, 0])
            cylinder(d=2, h=z, center=true);
    }

    translate([wall, wall, wall])
    hull() {
        translate([0, 0, 0])
            cylinder(d=2, h=z, center=true);

        translate([x, 0, 0])
            cylinder(d=2, h=z, center=true);
            
        translate([0, y, 0])
            cylinder(d=2, h=z, center=true);

        translate([x, y, 0])
            cylinder(d=2, h=z, center=true);
    }
}
