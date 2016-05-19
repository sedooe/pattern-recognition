function result = fisher(A, B)
  meanA = getMean(A);
  meanB = getMean(B);
  meanDiff = meanA - meanB;
  s1 = getS(A, meanA);
  s2 = getS(B, meanB);
  sW = s1 + s2;
  result = inv(sW) * meanDiff;
  return;
end