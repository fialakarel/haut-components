$fn=200;

difference() {
import("/home/kajaf/Dropbox/projects/haut/haut-components/rpi-a-plus/piaplus-top.stl");

translate([-15, 12, 0])
color("red")
    cube([25, 5, 7], center=true);
    
translate([24, 0, 0])
color("green")
    cube([7, 52, 7], center=true);
}

// pridat 4 nozicky 12mm 

translate([26, 30, 0])
    cylinder(d=4, h=12, center=false);
translate([26, -30, 0])
    cylinder(d=4, h=12, center=false);
translate([-26, 30, 0])
    cylinder(d=4, h=12, center=false);
translate([-26, -30, 0])
    cylinder(d=4, h=12, center=false);