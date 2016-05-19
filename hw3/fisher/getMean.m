function meanVector = getMean(A)
  rowSize = rows(A);
  columnSize = columns(A);
  meanVector = [];
  for i = 1 : rowSize
    meanVector(i, :) = sum(A(i, :)) / columnSize;
  end
  return;
end