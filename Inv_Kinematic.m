function [theta1, theta2, theta3, theta4, theta5, theta6]=...
    Inv_Kinematic(px,py,pz)

DH_Parameters;

theta1=atan2d(py,px);
theta234= 0; 
d=sqrt(px^2+py^2);
xd=d*cosd(theta1);
yd=d*sind(theta1);
r4=d-a4*cosd(theta234);
z4=pz-a4*sind(theta234);
s=sqrt((z4-a1)^2+r4^2);
theta3=real(acosd((s^2-a2^2-a3^2)/(2*a2*a3)));
beta=atan2d(real(a3*sind(theta3)),real(a2+a3*cosd(theta3)));
alpha=atan2d(z4-a1,r4);
theta2=alpha+beta;
theta4=theta234-theta2-theta3;
theta5=0;
theta6=0;
end
