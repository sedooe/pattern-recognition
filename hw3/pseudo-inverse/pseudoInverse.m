function result = pseudoInverse(A, B)
  A = [ones(1, columns(A)); A];
  B = [(ones(1, columns(B)))*-1; B*-1];
  Y = [A B]';
  result = (inv(Y' * Y) * Y') * ones(rows(Y), 1);
  return;
end