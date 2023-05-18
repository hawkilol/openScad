 
width=37;
depth=27;
heigth=18;
pinHole = [width/2 + 7, depth/6, heigth/3];

cube = [width, depth, heigth];
cubeTop = [width, depth, heigth/4];
cubeTopInDiff = [width- 3, depth-3, heigth/4];

cubeTopInDiffHollow = [width- 5, depth-5, heigth/4 +1];



cubeInDiff = [width- 3, depth -3, heigth];


cubeUsb = [width/2 + 2.5, depth/3 -0.5, heigth/4 + 0.5];
//Caixa
cubeDHT = [width/2 - 3, depth/2 -1, heigth/3];
$fn=50;
   // minkowski(){
down_angle = 1;


washer_angle = 5;

$fn = 30;

module head (){
  difference () { 
   hull(){
  translate ([0,0,9]) rotate([90,0,0]) cylinder(d = 10 /2 -0.5 , h = 12 /2 -2, center = true);
    
  translate ([3,0,6])   scale([2,1,1])  cylinder(d = 12 /2 -0.5, h = 4/2 -1, center = true);
} // end hull

*translate ([0,0,8]) rotate([90,0,0]) cylinder(d = 10.2/2 -2, h = 6.1/2 -2 , center = true);

translate ([0.5,0,8.5]) rotate([90,0,0]) cylinder(d = 3/2 + 1.5, h = 20/2 + 2, center = true); // axe

translate ([10,0,-13]) rotate([0,90,0]) cylinder(d = 23/2 -2, h = 40/2 -2, center = true); //arondi du bas
} // end diff
}// end

module support () {
    cylinder (d = 23/2, h = 3/2, center = true);

}// end support


minkowski(){
     
  //989583499 samuel
translate([0,0,0,0]){ 
    difference(){
    
    difference(){
    //cube(15, center=true);
       
//    //cube([2.5,3,3], center=true);
    
         
    cube(cube, center=true);
    
    translate([0,0,1]){
        
        cube(cubeInDiff, center=true);
          
     
        
        
       
    }
    
   
    translate([10,0,6]){
        cube(cubeUsb, center=true);
        
        
    } 
        
    
    
   
    
}

translate([11,0,-7]){
    cube(cubeDHT, center=true);
    }
    }


    
}
sphere(0.5);
//}

}
//Tampa


union(){
    
    
    rotate([0,90,180]){
        translate([-4,0,13]){
        head(); 
        }
        
        }
    
   
 
translate([-45,0,-6]){
    difference(){
        minkowski(){ 
    difference(){
        union(){
    //cube(15, center=true);
    
    cube(cubeTop, center=true);
        
    translate([0,0,1.5]){
        difference(){
            cube(cubeTopInDiff, center=true); 
//            cube(cubeTopInDiffHollow, center=true); 
             //cube(cubeTopInDiffHollow, center=true);
            }
           
        
        }    
        
    
    
    }
    translate([0,0,1]){
        
             
            cube(cubeTopInDiffHollow, center=true); 
             //cube(cubeTopInDiffHollow, center=true);
           
           
        
        }    
    
        
    }
    sphere(0.5);
}
    //    
    translate([0,-8,0]){
        minkowski(){
            cube(pinHole, center=true);
            sphere(0.5);
        }
        
    }
    translate([0,8,0]){
        minkowski(){
            cube(pinHole, center=true);
            sphere(0.5);
        }
        
    }
    

}    
    
} 
 }
    



//intersection(){
//    cube(15,center=true);
 //   sphere(10);
 //   }

