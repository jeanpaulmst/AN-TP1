%EJERCICIO 5- Obtención de la función Integral de 𝒔𝒆𝒏(𝝅 𝒕)

function Ej5

  N=200;
  t0=0;
  tf=2;
  dt=(tf-t0)/N;
  w =pi;

  dim=N+1

  G(1)= -1/pi

  for k=1 :dim
    t(k) = t0 + (k-1)*dt;
    y(k) = sin(w*t(k));
  endfor

  for k=2:dim
    G(k) = G(k-1) + dt*((y(k-1)+y(k))/2);

  endfor

  t
  y

  figure(1)
  plot(t,G, "r", t,y,"b")
  grid on

endfunction

Ej5
