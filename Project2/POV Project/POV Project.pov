global_settings{ assumed_gamma 1.0 }
#default{ finish{ ambient 0.1 diffuse 0.9 }} 

#include "colors.inc"
#include "textures.inc"
#include "glass.inc"
#include "metals.inc"
#include "golds.inc"
#include "stones.inc"
#include "woods.inc"
#include "shapes.inc"
#include "shapes2.inc"
#include "functions.inc"
#include "math.inc"
#include "transforms.inc"

#include "Mountain.inc"
#include "casita.inc"
#include "black_tupelo.inc"
#include "Boat.inc"

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Sky
// Source: POV Ray
sky_sphere {
	pigment {  image_map {png "fractal2.png"} scale 1 } // end of pigment
} //end of skysphere
                    
// Sun

#declare sunSphere =
sphere { 
    <0,0,0>, 2.5
    
    scale 0.1
    
    texture { 
        pigment{
            image_map {png "fractal.png"}
        } // end of pigment 
    } // end of texture     

    scale<1,1,1>  rotate<0,1,1>  translate<15,0.6,-4>  
}  // end of sphere ----------------------------------- 
       
// Sea
plane{ <0,1,0>, 26 
       texture{ Polished_Chrome
                normal{ bumps 0.25 scale <0.25,0.25,0.25>*0.5 turbulence 0.5 } 
                finish{ reflection 0.60 }}
}

// Fog
fog {
    distance 0.0004 
    colour rgbf<0.5, 0.5 , 0.7 , 1.0> *0.5
    fog_type 2
    fog_offset 7
    fog_alt .03
    turbulence .9
    turb_depth 0.35
  }
  
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Lights
light_source { <300,1000,1000> color rgb 1.0 }
  
    #declare Red = texture {
    pigment { color rgb<0.8, 0.2, 0.2> }
    finish { ambient 0.2 diffuse 0.5 }
  }         
  
    #declare Blue = texture {
    pigment { color rgb<0.2, 0.2, 0.8> }
    finish { ambient 0.2 diffuse 0.5 }
}

// Tree    
#declare Tree1 = union { 
	object { black_tupelo_13_stems pigment {color rgb <122/255, 17/255, 213/255>} }
      object { black_tupelo_13_leaves
      	texture { pigment {
      		gradient x
                	color_map {
                		[(1-cos(radians( 30)))/2 color rgb <1, 0, 0.1> ]
                		[(1-cos(radians(120)))/2 color rgb <0.6, 0.7, 0.3>]
                		[(1-cos(radians(120)))/2 color rgb <0.6, 0.3, 0.3>]}
                	scale 1.5
                	translate -1
                } 
                finish { ambient 0.15 diffuse 0.8 }}}
         rotate 120*y 
         translate <200, 220,200>
         scale .15
}

#declare Tree2 = union { 
	object { black_tupelo_13_stems pigment {color rgb <122/255, 17/255, 213/255>} }

         rotate 120*y 
         translate <175, 197, 100>
         scale .15
}

#declare Tree3 = union { 
	object { black_tupelo_13_stems pigment {color rgb <122/255, 17/255, 213/255>} }
      object { black_tupelo_13_leaves
      	texture { pigment {
      		gradient x
                	color_map {
                		[(1-cos(radians( 30)))/2 color rgb <1, 0, 0.1> ]
                		[(1-cos(radians(120)))/2 color rgb <0.6, 0.7, 0.3>]
                		[(1-cos(radians(120)))/2 color rgb <0.6, 0.3, 0.3>]}
                	scale 1.5
                	translate -1
                } 
                finish { ambient 0.15 diffuse 0.8 }}}
         rotate 120*y 
         translate <160, 197, 250>
         scale .15
}

#declare Tree4 = union { 
	object { black_tupelo_13_stems pigment {color rgb <122/255, 17/255, 213/255>} }

         rotate 120*y 
         translate <295, 260, 50>
         scale .10
}

#declare Tree5 = union { 
	object { black_tupelo_13_stems pigment {color rgb <122/255, 17/255, 213/255>} }
      object { black_tupelo_13_leaves
      	texture { pigment {
      		gradient x
                	color_map {
                		[(1-cos(radians( 30)))/2 color rgb <1, 0, 0.1> ]
                		[(1-cos(radians(120)))/2 color rgb <0.6, 0.7, 0.3>]
                		[(1-cos(radians(120)))/2 color rgb <0.6, 0.3, 0.3>]}
                	scale 1.5
                	translate -1
                } 
                finish { ambient 0.15 diffuse 0.8 }}}
         rotate 120*y 
          translate <143, 182,135>
         scale .15
}

#declare Tree6 = union { 
	object { black_tupelo_13_stems pigment {color rgb <122/255, 17/255, 213/255>} }

         rotate 120*y 
          translate <182, 220, 125>
         scale .15
}   


#declare Tree7 = union { 
	object { black_tupelo_13_stems pigment {color rgb <122/255, 17/255, 213/255>} }
      object { black_tupelo_13_leaves
      	texture { pigment {
      		gradient x
                	color_map {
                		[(1-cos(radians( 30)))/2 color rgb <1, 0, 0.1> ]
                		[(1-cos(radians(120)))/2 color rgb <0.6, 0.7, 0.3>]
                		[(1-cos(radians(120)))/2 color rgb <0.6, 0.3, 0.3>]}
                	scale 1.5
                	translate -1
                } 
                finish { ambient 0.15 diffuse 0.8 }}}
         rotate 120*y 
          translate <185, 200, 220>
         scale .15
}

#declare Tree8 = union { 
	object { black_tupelo_13_stems pigment {color rgb <0.8, 0.5, 0>} }
         rotate 120*y 
         translate <350, 133, -95>
         scale .25
}

// Boat
#declare Boat = object {
	boat
	scale 0.50
	rotate y*-10
	rotate z*0.5
	translate <16, 27.3, 13>
} 


// Camera
camera {
    
  //Vista montana
  location <8, 30, 5>     
  //location <5, 35, 10>
  //location <8,35,5>
   
  //location <-10, 30, 10>
  look_at  <20,30,14>  
  angle 90
}   


#declare house = 
union {
    object {casita} 
    scale 0.20
    rotate<0, 180, 0>
    translate<34, 33, 34>
    
    
}

// Scene 

union
{
    object { 
        Mountain 
    }
    
    object { 
        Mountain              
        
        translate -<34.1,34.1,34.1>
        rotate <0, 300, 0>
        translate <34.1,34.1,34.1>
        
        translate <60, 0, -60>
    }
    
   // object {
    //	Tree1
    //}
    
    object {
    	Tree2
    }
    
    object {
    	Tree3
    }
    
    object {
    	Tree4
    }
    
    object {
    	Tree5
    }
    
    object {
    	Tree6
    }   
    
     object {
    	Tree7
    }
    
    object {
    	Tree8
    }
    
    object {
    	Boat
    }
    
    object { 
           house
    }  
    
    object { 
           sunSphere
           translate <15, 27.7, 15>
    }
    
     object { 
           sunSphere
           translate <15, 26.45, 12>
    }

}

