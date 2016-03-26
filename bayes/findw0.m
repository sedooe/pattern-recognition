function w0 = findw0(pVector, qVector, w1, w2)
  w0 = 0;
  for i = 1 : size(pVector)(1)
    w0 += log((1-pVector(i)) / (1-qVector(i)));
  endfor
  w0 = w0 + log(w1/w2);
  return;
endfunction