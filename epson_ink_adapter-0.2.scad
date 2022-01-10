/*
    Design of an adapter to fill ciss tanks using Epson 102 series or similar
    
    The idea is to remove the cap of the ink tank we want to refill, position the adapter and then place the bottle to fill. Lift the bottle once the desired ink level has been reached.
    Ideally, there should be an adapter per ink colour, which should be washed with water and dried after use.
    
    ©Filippo Falezza 2022, released under GPLv3 and followings
    
    Scale= 1unit/1mm
*/

/*
* NEED to measure the followings:
* tank hole diameter
* tank hole ring cut diameter (optional) - il gradino che c'e' nel buco per intendersi
* epson refill inlet diameter
*/

//Variables
$fn=100;

air_hole = 2;
air_offset = 6.5;
inlet_outer_dia = 10;
inlet_inner_dia = 6;
inlet_height = 10;
cylinder_diameter = 20;
cylinder_height = 30;


ring_offset = 20;
ring_height = 3;
ring_thickness = 5;
ring_vertical_offset = -5;

edge_height = 3;
edge_thickness = 2;

//main cylinder
/* //OLD cylinder
difference(){
    translate([0,0,0])
    cylinder(h = 30, d=20);
    
    difference(){
    translate([0,0,0])
    cylinder(h=25, d= 20 - (walls_thickness*2));
    //2mm thick walls
    
        difference(){
        translate([5,-10,0])
        cube([5,20,25]);

        //air hole
        translate([air_offset,0,0])
        cylinder(h=30, d=air_hole);
        }
    }
    translate([0,0,25])
    cylinder(h=7, d= inlet_inner_dia);

    //air hole
    translate([air_offset,0,25])
    cylinder(h=5,d= air_hole);

}
*/
difference(){
    translate([0,0,0])
    cylinder(h = cylinder_height, d=cylinder_diameter);
    
    translate([0,0,0])
    //cylinder(h=30, d= 20 - (walls_thickness*2));
    cylinder(h=cylinder_height, d= inlet_inner_dia);

    //air hole
    translate([air_offset,0,0])
    cylinder(h=cylinder_height, d=air_hole);
}

//outer ring
/*difference(){
    translate([0,0,ring_offset])
    cylinder(h = ring_height, d = 20 + ring_thickness);
    translate([0,0,ring_offset])
    cylinder(h = ring_height, d = 20);
    //2mm thick walls
}*/

//outer cone (better than a ring)
difference(){
    translate([0,0,ring_vertical_offset])
    cylinder(h = ring_offset+10, r1=0, r2 = 10 + ring_thickness/2);
    
    translate([0,0,ring_vertical_offset])
    cylinder(h = cylinder_height + 5, d = cylinder_diameter);
    //2mm thick walls
}

//small edge
difference(){
translate([0,0,cylinder_height])
cylinder(h = edge_height, d=cylinder_diameter);
translate([0,0,cylinder_height])
    cylinder(h=edge_height, d= cylinder_diameter - (edge_thickness*2));
}

//inlet
difference(){
translate([0,0,cylinder_height])
cylinder(h=inlet_height,d=inlet_outer_dia);

translate([0,0,cylinder_height])
cylinder(h=inlet_height,d=inlet_inner_dia);
}
