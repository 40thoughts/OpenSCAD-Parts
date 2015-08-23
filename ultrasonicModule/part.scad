//// Ultrasonic Module
// DESIGN

// Import external files

include <./config.scad>;		// Configuration file


// Module design

module sonicModule(sl, s_dep=s_h_dep,shape=true) {
	if(shape) {					// Add material
		difference() {
			union() {
				color(pcb_color, pcb_tr=1) {
					translate([-(pcb_len / 2), -(pcb_wid / 2), 0]) cube([pcb_len, pcb_wid, pcb_th]);
				}

				color(pr_color, pr_tr) {
					difference() {
						union() {
							translate([-(pr_spa / 2), 0, pad]) cylinder(r = pr_rad, h = (g_hei - pad));
							translate([(pr_spa / 2), 0, pad]) cylinder(r = pr_rad, h = (g_hei - pad));
						}

						union() {
							translate([-(pr_spa / 2), 0, (pcb_th + pad)]) cylinder(r = (pr_rad - pr_th), h = (g_hei + pad - pcb_th));
							translate([(pr_spa / 2), 0, (pcb_th + pad)]) cylinder(r = (pr_rad - pr_th), h = (g_hei + pad - pcb_th));
						}
					}
				}

				color(pr_n_color, pr_n_tr) {
					union() {
						translate([-(pr_spa / 2), 0, (g_hei - (pr_n_th + pr_n_g))]) cylinder(r = (pr_rad - pr_th - pad), h = pr_n_th);
						translate([(pr_spa / 2), 0, (g_hei - (pr_n_th + pr_n_g))]) cylinder(r = (pr_rad - pr_th - pad), h = pr_n_th);
					}
				}
			}

			union() {
				translate([-(s_x_spa / 2), -(s_y_spa / 2), -pad]) cylinder(r = s_h_rad, h = (pcb_th + (pad * 2)));
				translate([(s_x_spa / 2), (s_y_spa / 2), -pad]) cylinder(r = s_h_rad, h = (pcb_th + (pad * 2)));
			}
		}
	}

	else {						// Subtract material
		translate([-((pcb_len + sl) / 2), -((pcb_wid + sl) / 2), -pad]) cube([(pcb_len + sl), (pcb_wid + sl), (pcb_th + (pad * 2))]);
		translate([-(pr_spa / 2), 0, pad]) cylinder(r = pr_rad + sl, h = (g_hei - pad + sl));
		translate([(pr_spa / 2), 0, pad]) cylinder(r = pr_rad + sl, h = (g_hei - pad + sl));
		translate([-(s_x_spa / 2), -(s_y_spa / 2), -pad]) cylinder(r = s_h_rad, h = s_dep);
		translate([(s_x_spa / 2), (s_y_spa / 2), -pad]) cylinder(r = s_h_rad, h = s_dep);
	}
}


// DEBUG


sonicModule();