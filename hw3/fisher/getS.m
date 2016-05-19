function s = getS(A, meanA)
  s = zeros(rows(A(:, 1)));
  for i = 1 : columns(A)
    diff = A(:, i) - meanA;
    s += diff * diff';
  end
  return;
end