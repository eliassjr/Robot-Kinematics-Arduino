theta1 = ((app.Angulo1Spinner.Value-100)*pi/180);
theta2 = ((app.Angulo2Spinner.Value-100)*pi/180);
theta3 = ((app.Angulo3Spinner.Value-140)*pi/180);


L(1)= Link([0 0.45 0 pi/2]);
L(2)= Link([0 0 0.9 0]);
L(3)= Link([0 0 1.1 0]);

rob=SerialLink(L)

MT = rob.fkine([theta1 theta2 theta3])

x = MT.t(1,1);
y = MT.t(2,1);
z = MT.t(3,1);

