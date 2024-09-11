%EJERCICIO 4- Integración de funciones trigonométricas

function Ej4

  N=8;
  tita0=0;
  titaf=2*pi;
  dtita=(titaf - tita0) /N ;

  dim=N+1;  %cantidad de elementos dedl vector

  for k=1 : dim
    tita(k) = tita0 +(k-1)*dtita;
    CoseTita(k) = cos(tita(k)); %Calcula mal el coseno, arreglar
    SenoTita(k) = sin(tita(k));
  endfor

  tita
  CoseTita
  SenoTita

endfunction

Ej4
