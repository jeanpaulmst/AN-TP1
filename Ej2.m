%EJERCICIO 2- Integración de la función seno en ¼ del periodo con Método de
%Simpson Múltiple

function Ej2

format long
w= pi;
t0 = 0;
tf = 0.5;
N = 6;
dt = (tf-t0)/N;

dim = N+1;

for k=1 : dim
  t(k) = t0 + (k-1)*dt;
  y(k) = sin(w*t(k));
end

ISim = 0;

for k=2 : 2 : N
  ISim = ISim + dt*(y(k-1) + 4*y(k) + y(k+1));
end

ISim
ErrISim = abs(ISim-(1/pi))
logDt = log10(dt)
LogErrISim = log10(ErrISim)
%FALTA LA PENDIENTE


endfunction


