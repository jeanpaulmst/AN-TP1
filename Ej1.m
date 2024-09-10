%EJERCICIO 1- Integración de la función seno en ¼ del periodo

function Ej1
%Parámetros
N= 20;  %Numero de intervalos
w = pi;
t0 = 0;
tf = 0.5;
dt=(tf-t0) /N;

dim = N+1; %Numero de elementos en los vectores !!!!! IMPORTANTE

%Inicialización de variables
Im=0;
IM=0;
ITrap=0;
w = pi;

for k=1 : dim
  t(k) = t0 + dt*(k-1);
  y(k) = sin(w*t(k));

end

for k=1 : N

  Im = Im + dt*y(k);
  IM = IM + dt*y(k+1);
  ITrap = ITrap + dt*(y(k) + y(k+1))*(1/2);

end

printf("Im = %d\n",Im)
printf("IM = %d\n",IM)
printf("ITrap = %d\n",ITrap)

ErrIm = (1/pi) - Im
logDt = log10(dt)
logErrIm = log10(ErrIm)
%Falta calcular la Pendiente



endfunction

Ej1
