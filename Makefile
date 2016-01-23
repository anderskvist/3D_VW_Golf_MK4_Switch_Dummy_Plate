all: left.stl right.stl

left.stl: dummy_panel.scad
	openscad -o left.stl -D left_r=4 -D right_r=1 dummy_panel.scad

right.stl: dummy_panel.scad
	openscad -o right.stl -D left_r=1 -D right_r=4 dummy_panel.scad
