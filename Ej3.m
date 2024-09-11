%EJERCICIO 3- Integración de la función Exponencial

function Ej3

w= 2;
N =6;
t0 =0;
tf=6/w;
dt=(tf-t0)/N;
dim = N+1;

for k=1 : dim           %Definición de abcisas y función
  t(k) = t0 + (k-1)*dt;
  y(k) = exp(-w*t(k));
end

Im = 0;
IM = 0;
ITrap = 0;

for k=1 : N         %Calculo con sumas de reimann y trapecios
  Im = Im + dt*y(k);
  IM = IM + dt*y(k+1);
  ITrap = ITrap + dt*(y(k) + y(k+1))*(1/2);
end

Im  %Mostrar los resultados
IM
ITrap

ErrIm = abs((1/w)*(1-exp(-6)) - Im)   %Errores
ErrIM = abs((1/w)*(1-exp(-6)) - IM)
ErrITrap = abs((1/w)*(1-exp(-6)) - ITrap)


endfunction

