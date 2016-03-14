function g = gBayes(xVector, wVector, w0)
  g = 0;
  for i = 1 : size(wVector)(1)
    g += wVector(i) * xVector(i);
  endfor
  g += w0;
  return;
endfunction