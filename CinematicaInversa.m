px=app.PxSpinner.Value;
py=app.PySpinner.Value;
pz=app.PzSpinner.Value;


L(1)= Link([0 0.45 0 pi/2]);
L(2)= Link([0 0 0.9 0]);
L(3)= Link([0 0 1.1 0]);

robo=SerialLink(L)


T = [ 1 0 0 px;
      0 1 0 py;
      0 0 1 pz;
      0 0 0 1]
  
try
    q = robo.ikine(T, 'mask', [1 1 1 0 0 0])
    app.Angulo1CIEditField.Value=(q(1)*180/pi)+100;
    app.Angulo2CIEditField.Value=(q(2)*180/pi)+100;
    app.Angulo3CIEditField.Value=(q(3)*180/pi)+140;
    A1 =app.Angulo1CIEditField.Value
    A2 =app.Angulo2CIEditField.Value
    A3 =app.Angulo3CIEditField.Value
    a.servoWrite(6,A1);
    a.servoWrite(5,A2);
    a.servoWrite(4,A3);
    app.StatusEditField.Value="Valores validos";
    
catch
    
end