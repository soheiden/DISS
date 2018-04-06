// POV 3.x input script : 1-2.pov 
// try povray +W1920 +H1000 -I1-2.pov -O1-2.pov.tga +P +X +A +FT +C
#if (version < 3.5) 
#error "POV3DisplayDevice has been compiled for POV-Ray 3.5 or above.\nPlease upgrade POV-Ray or recompile VMD."
#end 
#declare VMD_clip_on=array[3] {0, 0, 0};
#declare VMD_clip=array[3];
#declare VMD_scaledclip=array[3];
#declare VMD_line_width=0.0020;
#macro VMDC ( C1 )
  texture { pigment { rgbt C1 }}
#end
#macro VMD_point (P1, R1, C1)
  #local T = texture { finish { ambient 1.0 diffuse 0.0 phong 0.0 specular 0.0 } pigment { C1 } }
  #if(VMD_clip_on[2])
  intersection {
    sphere {P1, R1 texture {T} #if(VMD_clip_on[1]) clipped_by {VMD_clip[1]} #end no_shadow}
    VMD_clip[2]
  }
  #else
  sphere {P1, R1 texture {T} #if(VMD_clip_on[1]) clipped_by {VMD_clip[1]} #end no_shadow}
  #end
#end
#macro VMD_line (P1, P2, C1)
  #local T = texture { finish { ambient 1.0 diffuse 0.0 phong 0.0 specular 0.0 } pigment { C1 } }
  #if(VMD_clip_on[2])
  intersection {
    cylinder {P1, P2, VMD_line_width texture {T} #if(VMD_clip_on[1]) clipped_by {VMD_clip[1]} #end no_shadow}
    VMD_clip[2]
  }
  #else
  cylinder {P1, P2, VMD_line_width texture {T} #if(VMD_clip_on[1]) clipped_by {VMD_clip[1]} #end no_shadow}
  #end
#end
#macro VMD_sphere (P1, R1, C1)
  #local T = texture { pigment { C1 } }
  #if(VMD_clip_on[2])
  intersection {
    sphere {P1, R1 texture {T} #if(VMD_clip_on[1]) clipped_by {VMD_clip[1]} #end no_shadow}
    VMD_clip[2]
  }
  #else
  sphere {P1, R1 texture {T} #if(VMD_clip_on[1]) clipped_by {VMD_clip[1]} #end no_shadow}
  #end
#end
#macro VMD_cylinder (P1, P2, R1, C1, O1)
  #local T = texture { pigment { C1 } }
  #if(VMD_clip_on[2])
  intersection {
    cylinder {P1, P2, R1 #if(O1) open #end texture {T} #if(VMD_clip_on[1]) clipped_by {VMD_clip[1]} #end no_shadow}
    VMD_clip[2]
  }
  #else
  cylinder {P1, P2, R1 #if(O1) open #end texture {T} #if(VMD_clip_on[1]) clipped_by {VMD_clip[1]} #end no_shadow}
  #end
#end
#macro VMD_cone (P1, P2, R1, C1)
  #local T = texture { pigment { C1 } }
  #if(VMD_clip_on[2])
  intersection {
    cone {P1, R1, P2, VMD_line_width texture {T} #if(VMD_clip_on[1]) clipped_by {VMD_clip[1]} #end no_shadow}
    VMD_clip[2]
  }
  #else
  cone {P1, R1, P2, VMD_line_width texture {T} #if(VMD_clip_on[1]) clipped_by {VMD_clip[1]} #end no_shadow}
  #end
#end
#macro VMD_triangle (P1, P2, P3, N1, N2, N3, C1)
  #local T = texture { pigment { C1 } }
  smooth_triangle {P1, N1, P2, N2, P3, N3 texture {T} #if(VMD_clip_on[1]) clipped_by {VMD_clip[1]} #end no_shadow}
#end
#macro VMD_tricolor (P1, P2, P3, N1, N2, N3, C1, C2, C3)
  #local NX = P2-P1;
  #local NY = P3-P1;
  #local NZ = vcross(NX, NY);
  #local T = texture { pigment {
    average pigment_map {
      [1 gradient x color_map {[0 rgb 0] [1 C2*3]}]
      [1 gradient y color_map {[0 rgb 0] [1 C3*3]}]
      [1 gradient z color_map {[0 rgb 0] [1 C1*3]}]
    }
    matrix <1.01,0,1,0,1.01,1,0,0,1,-.002,-.002,-1>
    matrix <NX.x,NX.y,NX.z,NY.x,NY.y,NY.z,NZ.x,NZ.y,NZ.z,P1.x,P1.y,P1.z>
  } }
  smooth_triangle {P1, N1, P2, N2, P3, N3 texture {T} #if(VMD_clip_on[1]) clipped_by {VMD_clip[1]} #end no_shadow}
#end
camera {
  orthographic
  location <0.0000, 0.0000, -2.0000>
  look_at <-0.0000, -0.0000, 2.0000>
  up <0.0000, 3.0000, 0.0000>
  right <5.7600, 0.0000, 0.0000>
}
light_source { 
  <-0.1000, 0.1000, -1.0000> 
  color rgb<1.000, 1.000, 1.000> 
  parallel 
  point_at <0.0, 0.0, 0.0> 
}
light_source { 
  <1.0000, 2.0000, -0.5000> 
  color rgb<1.000, 1.000, 1.000> 
  parallel 
  point_at <0.0, 0.0, 0.0> 
}
background {
  color rgb<1.000, 1.000, 1.000>
}
#default { texture {
 finish { ambient 0.000 diffuse 0.650 phong 0.1 phong_size 40.000 specular 0.500 }
} }
#declare VMD_line_width=0.0020;
// MoleculeID: 0 ReprID: 0 Beginning VDW
VMD_sphere(<-0.1990,-0.4439,-0.4853>,0.2165,rgbt<0.900,0.900,0.900,0.000>)
VMD_sphere(<-0.6707,-0.4587,-0.2023>,0.2165,rgbt<0.900,0.900,0.900,0.000>)
VMD_sphere(<-0.4232,-0.8871,-0.1556>,0.2165,rgbt<0.900,0.900,0.900,0.000>)
VMD_sphere(<-0.1731,-0.4547,0.1834>,0.2165,rgbt<0.900,0.900,0.900,0.000>)
VMD_sphere(<-0.6763,-0.4547,0.2739>,0.2165,rgbt<0.900,0.900,0.900,0.000>)
VMD_sphere(<-0.4250,-0.8905,0.5770>,0.2165,rgbt<0.900,0.900,0.900,0.000>)
VMD_sphere(<-0.1746,0.4122,-0.3890>,0.2165,rgbt<0.900,0.900,0.900,0.000>)
VMD_sphere(<-0.6756,0.4150,-0.2053>,0.2165,rgbt<0.900,0.900,0.900,0.000>)
VMD_sphere(<-0.4208,-0.0270,-0.1515>,0.2165,rgbt<0.900,0.900,0.900,0.000>)
VMD_sphere(<-0.1731,0.4167,0.1834>,0.2165,rgbt<0.900,0.900,0.900,0.000>)
VMD_sphere(<-0.6763,0.4167,0.2739>,0.2165,rgbt<0.900,0.900,0.900,0.000>)
VMD_sphere(<-0.4250,-0.0190,0.5770>,0.2165,rgbt<0.900,0.900,0.900,0.000>)
VMD_sphere(<0.5801,-0.0196,-0.3885>,0.2165,rgbt<0.900,0.900,0.900,0.000>)
VMD_sphere(<0.0740,-0.0262,-0.2044>,0.2165,rgbt<0.900,0.900,0.900,0.000>)
VMD_sphere(<0.3337,-0.4480,-0.1334>,0.2165,rgbt<0.900,0.900,0.900,0.000>)
VMD_sphere(<0.5815,-0.0190,0.1834>,0.2165,rgbt<0.900,0.900,0.900,0.000>)
VMD_sphere(<0.0783,-0.0190,0.2739>,0.2165,rgbt<0.900,0.900,0.900,0.000>)
VMD_sphere(<0.3297,-0.4547,0.5770>,0.2165,rgbt<0.900,0.900,0.900,0.000>)
VMD_sphere(<0.5848,0.8467,-0.3610>,0.2165,rgbt<0.900,0.900,0.900,0.000>)
VMD_sphere(<0.0729,0.8454,-0.1977>,0.2165,rgbt<0.900,0.900,0.900,0.000>)
VMD_sphere(<0.3289,0.4128,-0.1536>,0.2165,rgbt<0.900,0.900,0.900,0.000>)
VMD_sphere(<0.5815,0.8524,0.1834>,0.2165,rgbt<0.900,0.900,0.900,0.000>)
VMD_sphere(<0.0783,0.8524,0.2739>,0.2165,rgbt<0.900,0.900,0.900,0.000>)
VMD_sphere(<0.3297,0.4167,0.5770>,0.2165,rgbt<0.900,0.900,0.900,0.000>)
VMD_sphere(<-0.1805,-1.0233,-0.3621>,0.1645,rgbt<1.000,0.700,0.700,0.000>)
VMD_sphere(<-0.4292,-0.6142,-0.3538>,0.1645,rgbt<1.000,0.700,0.700,0.000>)
VMD_sphere(<-0.6605,-1.0393,-0.3619>,0.1645,rgbt<1.000,0.700,0.700,0.000>)
VMD_sphere(<-0.1494,-0.7545,0.0254>,0.1645,rgbt<1.000,0.700,0.700,0.000>)
VMD_sphere(<-0.4452,-0.3215,0.0353>,0.1645,rgbt<1.000,0.700,0.700,0.000>)
VMD_sphere(<-0.6788,-0.7272,0.0282>,0.1645,rgbt<1.000,0.700,0.700,0.000>)
VMD_sphere(<0.0582,-0.5884,0.4255>,0.1645,rgbt<1.000,0.700,0.700,0.000>)
VMD_sphere(<-0.1733,-0.1874,0.4254>,0.1645,rgbt<1.000,0.700,0.700,0.000>)
VMD_sphere(<-0.4049,-0.5884,0.4255>,0.1645,rgbt<1.000,0.700,0.700,0.000>)
VMD_sphere(<-0.1823,-0.1579,-0.3522>,0.1645,rgbt<1.000,0.700,0.700,0.000>)
VMD_sphere(<-0.4371,0.2533,-0.3631>,0.1645,rgbt<1.000,0.700,0.700,0.000>)
VMD_sphere(<-0.6547,-0.1712,-0.3622>,0.1645,rgbt<1.000,0.700,0.700,0.000>)
VMD_sphere(<-0.1557,0.1168,0.0286>,0.1645,rgbt<1.000,0.700,0.700,0.000>)
VMD_sphere(<-0.4404,0.5499,0.0260>,0.1645,rgbt<1.000,0.700,0.700,0.000>)
VMD_sphere(<-0.6806,0.1426,0.0229>,0.1645,rgbt<1.000,0.700,0.700,0.000>)
VMD_sphere(<0.0582,0.2830,0.4255>,0.1645,rgbt<1.000,0.700,0.700,0.000>)
VMD_sphere(<-0.1733,0.6841,0.4254>,0.1645,rgbt<1.000,0.700,0.700,0.000>)
VMD_sphere(<-0.4049,0.2830,0.4255>,0.1645,rgbt<1.000,0.700,0.700,0.000>)
VMD_sphere(<0.5656,-0.5865,-0.3580>,0.1645,rgbt<1.000,0.700,0.700,0.000>)
VMD_sphere(<0.3200,-0.1845,-0.3586>,0.1645,rgbt<1.000,0.700,0.700,0.000>)
VMD_sphere(<0.0857,-0.5998,-0.3749>,0.1645,rgbt<1.000,0.700,0.700,0.000>)
VMD_sphere(<0.6012,-0.3185,0.0306>,0.1645,rgbt<1.000,0.700,0.700,0.000>)
VMD_sphere(<0.3144,0.1132,0.0266>,0.1645,rgbt<1.000,0.700,0.700,0.000>)
VMD_sphere(<0.0800,-0.2923,0.0312>,0.1645,rgbt<1.000,0.700,0.700,0.000>)
VMD_sphere(<0.8128,-0.1527,0.4255>,0.1645,rgbt<1.000,0.700,0.700,0.000>)
VMD_sphere(<0.5814,0.2484,0.4254>,0.1645,rgbt<1.000,0.700,0.700,0.000>)
VMD_sphere(<0.3498,-0.1527,0.4255>,0.1645,rgbt<1.000,0.700,0.700,0.000>)
VMD_sphere(<0.5745,0.2871,-0.3609>,0.1645,rgbt<1.000,0.700,0.700,0.000>)
VMD_sphere(<0.3151,0.6958,-0.3624>,0.1645,rgbt<1.000,0.700,0.700,0.000>)
VMD_sphere(<0.0952,0.2651,-0.3618>,0.1645,rgbt<1.000,0.700,0.700,0.000>)
VMD_sphere(<0.5953,0.5571,0.0224>,0.1645,rgbt<1.000,0.700,0.700,0.000>)
VMD_sphere(<0.3134,0.9883,0.0241>,0.1645,rgbt<1.000,0.700,0.700,0.000>)
VMD_sphere(<0.0779,0.5791,0.0279>,0.1645,rgbt<1.000,0.700,0.700,0.000>)
VMD_sphere(<0.8128,0.7187,0.4255>,0.1645,rgbt<1.000,0.700,0.700,0.000>)
VMD_sphere(<0.5814,1.1198,0.4254>,0.1645,rgbt<1.000,0.700,0.700,0.000>)
VMD_sphere(<0.3498,0.7187,0.4255>,0.1645,rgbt<1.000,0.700,0.700,0.000>)
// MoleculeID: 0 ReprID: 1 Beginning VDW
VMD_sphere(<-0.1456,-0.4682,-0.7919>,0.0823,rgbt<1.000,0.000,0.000,0.000>)
VMD_sphere(<-0.1741,-0.3344,-0.8999>,0.0541,rgbt<1.000,1.000,1.000,0.000>)
VMD_sphere(<0.1869,-0.6058,-0.5201>,0.0541,rgbt<1.000,1.000,1.000,0.000>)
// MoleculeID: 0 ReprID: 2 Beginning dynamic bonds
VMD_cylinder(<-0.14555515,-0.46819702,-0.79190356>,<-0.15981820,-0.40129769,-0.84592044>0.0361,rgbt<1.000,0.000,0.000,0.000>,1)
VMD_cylinder(<-0.15981820,-0.40129769,-0.84592044>,<-0.17408124,-0.33439842,-0.89993733>0.0361,rgbt<1.000,1.000,1.000,0.000>,1)
// End of POV-Ray 3.x generation 
