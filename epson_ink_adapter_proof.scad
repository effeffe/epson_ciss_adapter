/*
    Design of an adapter to fill ciss tanks using Epson 102 series or similar
    
    The idea is to remove the cap of the ink tank we want to refill, position the adapter and then place the bottle to fill. Lift the bottle once the desired ink level has been reached.
    Ideally, there should be an adapter per ink colour, which should be washed with water and dried after use.
    
    ©Filippo Falezza 2022, released under GPLv3 and followings
    
    Scale= 1unit/1cm
*/

$fn=100;
//proof of concept ink adapter
difference(){
    translate([0,0,0])
    cylinder(h = 3, d=2, center=true);
    translate([0,0,-1])
    cylinder(h=2.5, d=1.8, center = true);
    //2mm thick walls
    

translate([0,0,1.1])
cube([2,2,1],center = true);

translate([0,0,1])
cylinder(h=2,d=0.9,center = true);

}

//upper cylinder
difference(){
translate([0,0,1])
cylinder(h=1,d=1,center = true);

translate([0,0,1])
cylinder(h=2,d=0.9,center = true);

}

//small edge
difference(){
translate([0,0,0.2])
cylinder(h = 1, d=2, center=true);
translate([0,0,0])
    cylinder(h=2.5, d=1.8, center = true);
}

//cap not to fall in the ink tank
difference(){
translate([0,0,0])
cylinder(h = 0.5, d=2.3, center=true);
translate([0,0,0])
    cylinder(h=0.5, d=2.0, center = true);
}
