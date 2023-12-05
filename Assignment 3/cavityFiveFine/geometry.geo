//+
Point(1) = {0, 0, 0, 0.09};
//+
Point(2) = {20, 0, 0, 0.09};
//+
Point(3) = {20, 10, 0, 0.09};
//+
Point(4) = {0, 10, 0, 0.09};
//+
Line(1) = {1, 2};
//+
Line(2) = {2, 3};
//+
Line(3) = {3, 4};
//+
Line(4) = {4, 1};
//+
Point(5) = {2, 4, 0, 0.09};
//+
Point(6) = {2, 6, 0, 0.09};
//+
Point(7) = {4, 6, 0, 0.09};
//+
Point(8) = {4, 4, 0, 0.09};


//+
Line(5) = {6, 7};
//+
Line(6) = {6, 5};
//+
Line(7) = {5, 8};
//+
Line(8) = {8, 7};
//+
Curve Loop(1) = {3, 4, 1, 2};
//+
Curve Loop(2) = {5, -8, -7, -6};
//+
Plane Surface(1) = {1, 2};
//+
Extrude {0, 0, 1} {
  Surface{1}; 
   Layers{1};
  Recombine;
}

//+
Physical Surface("inlet", 51) = {25};
//+
Physical Surface("outlet", 52) = {33};
//+
Physical Surface("frontAndBack", 53) = {50, 1};
//+
Physical Surface("top", 54) = {21};
//+
Physical Surface("bottom", 55) = {29};
//+
Physical Surface("square", 56) = {49, 37, 41, 45};
//+
Physical Volume("volume", 57) = {1};
