  $fn=50;
 difference() {
    translate([0,0,-20]) rotate([0,0,45]) cylinder(d2=90*1.4,d=100*1.4,h=40,$fn=4);
     
// cooler
    translate([0,0,-3]) cube([85,85,40],center=true);
// espacio
    translate([0,0,-7]) cube([20,90,20],center=true);
     
     // perforaciones
    translate([0,40,-6]) rotate([90,0,0]) cylinder(d=5,h=20,center=true);
    translate([0,-40,-10]) rotate([90,0,0]) cylinder(d=8,h=20,center=true);


   for (i = [0:90:360])
    rotate([0,0,i])
        translate([53,53,0])
        rotate([0,-13,45])
        cube([20,20,60],center=true);

    translate([0,0,17])
    cylinder(d=40,h=2); 
}  


difference() {
    cylinder(d=38,h=2);
    translate([10,0,-.25])
    cylinder(d=5,h=1.75);
    translate([-10,0,-.25])
    cylinder(d=5,h=1.5);
}


 translate([0,0,-20]) { 
     cube([78,78,4],center=true);
     translate([0,0,-2])  minkowski() {
     cube([90,90,2],center=true);
         cylinder(d=5,h=.1);
     }
 }

translate([0,0,24])
 
difference() {
    cylinder(d=38,h=2);
    translate([10,0,.25])
    cylinder(d=5,h=1.75);
    translate([-10,0,.25])
    cylinder(d=5,h=1.75);
}
