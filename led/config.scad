//// LED
// CONFIG

// Colors

led_color="Red";	// LED color
led_tr=0.5;		// LED transparency (0 to 1)
led_l_color="Silver";	// LED legs color
led_l_tr=1;		// LED legs transparency (0 to 1)


// Variables

vars=[
	[1.75, 2.2, 1.45, 1.35],	// 1mm LED
	[1.75, 3.4, 2.05, 1.75],	// 1.8mm LED
	[3, 3.74, 4.49, 1],		// 3mm LED
	[5, 5.9, 8.69, 1]		// 5mm LED
];

variant=3;

$fn=20;					// Resolution (faces per side on cylinders, cones, ...)
b_dia=vars[variant][0];			// Bulb diameter
l_dia=vars[variant][1];			// Base diameter
b_hei=vars[variant][2];			// Bulb height
l_hei=vars[variant][3];			// Base height


// Computed variables /!\ DON'T TOUCH THESE ONES /!\

pad=0.1;				// Padding for geometrical manifoldness
b_rad=(b_dia / 2);			// Bulb radius
l_rad=(l_dia / 2);			// Base radius
