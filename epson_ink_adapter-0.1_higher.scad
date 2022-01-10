/*
    Design of an adapter to fill ciss tanks using Epson 102 series or similar
    
    The idea is to remove the cap of the ink tank we want to refill, position the adapter and then place the bottle to fill. Lift the bottle once the desired ink level has been reached.
    Ideally, there should be an adapter per ink colour, which should be washed with water and dried after use.
    
    ©Filippo Falezza 2022, released under GPLv3 and followings
    
    Scale= 1unit/1mm
*/

//need to cut it in lower cylinder and upper structure due to printing limitations
//higher structure
$fn=100;

//main upper cylinder
difference(){
translate([0,0,0])
cylinder(h = 5, d=20);

translate([0,0,-1])
cylinder(h=7,d=9);

}

//small edge
difference(){
translate([0,0,5])
cylinder(h = 3, d=20);
translate([0,0,4])
    cylinder(h=5, d=18);
}

//upper cylinder
difference(){
translate([0,0,5])
cylinder(h=10,d=10);

translate([0,0,4])
cylinder(h=12,d=9);
}
