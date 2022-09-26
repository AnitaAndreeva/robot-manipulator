function [px, py, pz]=Fow_Kinematic(theta1,theta2, theta3, theta4, theta5, theta6)

DH_Parameters;

T1=DH(theta1, alpha1, a1, d1);
T2=DH(theta2, alpha2, a2, d2);
T3=DH(theta3, alpha3, a3, d3);
T4=DH(theta4, alpha4, a4, d4);
T5=DH(theta5, alpha5, a5, d5);
T6=DH(theta6, alpha6, a6, d6);

T=T1*T2*T3*T4*T5*T6;
p=T*[0;0;0;1];  
px=p(2); py=p(3); pz=p(1);
end
