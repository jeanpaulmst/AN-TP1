%EJERCICIO 6- Obtención de la función Integral de 𝒚(𝒕) = e^-pt


function Ej6

  N=100;
  t0=0;
  tf=3;
  dt=(tf-t0)/N;
  p =2;
  dim = N+1;

  %Abcisas e imagen
  for k=1 : dim
    t(k) = t0 + (k-1)*dt;
    y(k) = exp(-p*t(k));
  endfor

  %Calculo de la función primitiva
  G(1)=0;
  for k=2:dim
    G(k) = G(k-1) + dt*(y(k) + y(k-1))/2;
  endfor

  figure(1)
  plot(t,G, "r", t,y,"b")
  grid on

endfunction

Ej6
