function tetapp = fcn(tau1,tau2,tetap1,tetap2)
%%Parametros
m=1;
m1=1;
m2=1;
m3=m1+m2+m;
I1=0.1;
I2=0.1;
I3=1;
r=0.01;
l=0.1;
b=0.01;
%%Matriz de inercia
M11=I1+m1*r^2 +(I3*r^2)/l^2 +(m3*r^2)/4;
M12=(m3*r^2)/4 -(I3*r^2)/l^2;
M21=(m3*r^2)/4 -(I3*r^2)/l^2;
M22=I2+m2*r^2 +(I3*r^2)/l^2 +(m3*r^2)/4;
%%Matriz de inercia
M=[M11,M12;M21,M22];
%%Fricción vizcosa
B=[b*tetap1;b*tetap2];
%%Entrada
T=[tau1;tau2];
%%Salida
tetapp =M\T-B;
