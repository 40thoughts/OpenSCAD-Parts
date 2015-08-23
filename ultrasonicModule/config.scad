//// Ultrasonic Module
// CONFIG

// Colors

pcb_color="Blue";	// PCB color
pcb_tr=1;		// PCB transparency (0 to 1)
pr_color="Silver";	// Probe color
pr_tr=1;		// Probe transparency (0 to 1)
pr_n_color="Black";	// Probe net color
pr_n_tr=0.3;		// Probe net transparency (0 to 1)


// Variables

$fn=20;			// Resolution (faces per side on cylinders, cones, ...)
g_hei=15;		// Global height
pcb_len=45;		// PCB length
pcb_wid=20;		// PCB width
pcb_th=1.2;		// PCB thickness
pr_dia=16;		// Probe diameter
pr_th=2;		// Probe border thickness
pr_n_th=0.5;		// Probe net thickness
pr_n_g=0.5;		// Probe net gap depth
pr_spa=27;		// Space between the probes (center)
s_h_dia=2;		// Screw holes diameter
s_h_dep=10;		// Screw holes depth
s_x_spa=40;		// Screw spacing in X (center)
s_y_spa=15;		// Screw spacing in Y (center)


// Computed variables /!\ DON'T TOUCH THESE ONES /!\

pad=0.1;			// Padding for geometrical manifoldness
pr_rad=(pr_dia / 2);		// Probe radius
s_h_rad=(s_h_dia / 2);		// Screw holes radius
