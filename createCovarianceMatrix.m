### for MATLAB, this function is unnecessary.
### cov(trianglesX1, trianglesX2) is enough to get covariance matrix of triangles.
### see: http://www.mathworks.com/help/matlab/ref/cov.html#bumhyrj
function covarianceMatrix = createCovarianceMatrix(firstFeatureVector, secondFeatureVector)
  covarianceMatrix = [
    cov(firstFeatureVector, 1) cov(firstFeatureVector, secondFeatureVector, 1); #first row
    cov(secondFeatureVector, firstFeatureVector, 1) cov(secondFeatureVector, 1) #second row
  ];
  ### in `cov` function, third parameter determines the type of normalization to use.
  ### 0 -> divides by N-1 [default]
  ### 1 -> divides by N
  return;
endfunction
