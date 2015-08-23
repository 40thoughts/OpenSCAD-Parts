//// Arduino Uno/Duemilanove
// DESIGN

// Import files
include <./config.scad>
use <./parts/connectors/headerM/header.scad>


// Pin header modules

module pinRow1(shape=true) {
	translate([row1[0], row1[1], pcb_th]) rotate([0, 0, 180]) {
		if(shape) {
			pinRow(8);
		}

		else {
			pinRow(8, shape=false);
		}
	}
}

module pinRow2(shape=true) {
	translate([row2[0], row2[1], pcb_th]) rotate([0, 0, 180]) {
		if(shape) {
			pinRow(8);
		}

		else {
			pinRow(8, shape=false);
		}
	}	
}

module pinRow3(shape=true) {
	translate([row3[0], row3[1], pcb_th]) rotate([0, 0, 180]) {
		if(shape) {
			pinRow(6);
		}

		else {
			pinRow(6, shape=false);
		}
	}
}

module pinRow4(shape=true) {
	translate([row4[0], row4[1], pcb_th]) rotate([0, 0, 180]) {
		if(shape) {
			pinRow(6);
		}

		else {
			pinRow(6, shape=false);
		}
	}
}


// Design

module unoDue(shape=true) {
	if(shape) {
		color(pcb_color, pcb_tr) {									// PCB
			difference() {
				linear_extrude(height = pcb_th) polygon([[0,0], [65,0], [65,2], [68,5], [68,37], [65,40], [65,53], [0,53]], convexity = 10);
		
				union() {
					translate([h1[0], h1[1], -pad]) cylinder(r=h_rad, h=(pcb_th + (pad * 2)));
					translate([h2[0], h2[1], -pad]) cylinder(r=h_rad, h=(pcb_th + (pad * 2)));
					translate([h3[0], h3[1], -pad]) cylinder(r=h_rad, h=(pcb_th + (pad * 2)));
					pinRow1(shape=false);
					pinRow2(shape=false);
					pinRow3(shape=false);
					pinRow4(shape=false);
				}
			}
		}

		pinRow1();
		pinRow2();
		pinRow3();
		pinRow4();
	}

	else {
		echo("TODO");
	}

}


// DEBUG

unoDue();

color("Silver", 0.5)									// USB Port
  translate([-6.35, 32.38, 0]) cube([15.87, 12.7, 10]);

color("Black", 0.5)									// Power Supply
  translate([-1.9, 3.175, 0]) cube([13.33, 8.89, 10]);
