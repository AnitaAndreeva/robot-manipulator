function Tmat=DH(theta, alpha, a, d)
Tmat=...
 [cosd(theta) -sind(theta) 0 0;sind(theta) cosd(theta) 0 0;0 0 1 0;0 0 0 1]*...
 [1 0 0 0;0 1 0 0;0 0 1 d;0 0 0 1]*...
 [1 0 0 a;0 1 0 0;0 0 1 0;0 0 0 1]*... 
 [1 0 0 0; 0 cosd(alpha) -sind(alpha) 0; 0 sind(alpha) cosd(alpha) 0; 0 0 0 1];
end