//// Pin header
// DESIGN

// Import files

include <./config.scad>

// Pin design

module pin(h_dia=0.9, p_len=6, shape=true) {
	if(shape) {											// Add material
		color(pin_color, pin_tr) {
			translate([-(pin_wid / 2), -(pin_wid / 2), -pin_b_len]) cube([pin_wid, pin_wid, (pin_b_len + sup_hei + p_len)]);
		}

		color(sup_color, sup_tr) {
			translate([-(sup_wid / 2), -(sup_len / 2), 0]) linear_extrude(height = sup_hei) polygon([[sup_bev_wid,0], [(sup_wid - sup_bev_wid),0], [sup_wid,sup_bev_wid], [sup_wid,(sup_len - sup_bev_wid)], [(sup_wid - sup_bev_wid),sup_len], [sup_bev_wid,sup_len], [0,(sup_len - sup_bev_wid)], [0,sup_bev_wid]], convexity = N);
		}
	}

	else {													// Subtract material
		translate([0, 0, -pin_b_len]) cylinder(r=(h_dia / 2), h=(pin_b_len + sup_hei + p_len));
	}
}


// Pin row

module pinRow(num, h_dia=0.9, p_len=6, shape=true) {
	for (i = [0 : (num - 1)]) {
		translate([(i * sup_wid), 0, 0]) {
			pin(h_dia, p_len, shape);
		}
	}
}


// DEBUG

pin();
translate([0, 5, 0]) pinRow(10);