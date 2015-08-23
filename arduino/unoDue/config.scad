//// Arduino Uno
// CONFIG

// Colors

pcb_color="Blue";	// PCB color
pcb_tr=1;		// PCB transparency (0 to 1)


// Variables

$fn=20;			// Resolution (faces per side on cylinders, cones, ...)
pcb_th=1.6;		// PCB thickness
h_dia=3.2;		// Holes diameter
h1=[15, 50.5];		// Hole 1 position (X, Y)
h2=[65.5, 35];		// Hole 2 position (X, Y)
h3=[65.5, 7];		// Hole 3 position (X, Y)
row1=[41.6, 50.5];	// Row 1 position (X, Y)
row2=[62.5, 50.5];	// Row 2 position (X, Y)
row3=[44.7, 2.54];	// Row 3 position (X, Y)
row4=[62.5, 2.54];	// Row 4 position (X, Y)


// Computed variables /!\ DO NOT TOUCH THOSE ONES /!\

pad=0.1;		// Padding for manifoldness
h_rad=(h_dia / 2);	// Holes radius
