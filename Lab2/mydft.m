 % Experiment 2
 % 12-02-2021
 % Ayush Basak - 19ucc016

function y = mydft(x, t0, ts)
  N = t0/ts;
  y = zeros(1,N);
  for r = 1:N
    y(r) = 0;
    for k = 1:N
      y(r) = y(r) + (x(k) .* exp( (-1j * (r-1) * 2 * pi * (k-1))/N));
    endfor
  endfor
endfunction
