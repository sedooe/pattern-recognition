### given data ###
trianglesX1 = [-4 -3 -2 -2 -1];
trianglesX2 = [4 3 2 1 2];
squaresX1 = [2 2 3 4 4];
squaresX2 = [-2 -4 -3 -4 -2];

triangles = [trianglesX1; trianglesX2];
squares = [squaresX1; squaresX2];
### end of block ###

meanOfTriangles = mean(triangles, 2); # 2 is dimension.
meanOfSquares = mean(squares, 2);

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

covarianceMatrixTriangles = createCovarianceMatrix(trianglesX1, trianglesX2);
covarianceMatrixSquares = createCovarianceMatrix(squaresX1, squaresX2);

function g = g(featureVector, covarianceMatrix, mean, x1, x2)
  invCovarianceMatrix = inv(covarianceMatrix);
  detCovarianceMatrix = det(covarianceMatrix);
  unknown = [x1-mean(1); x2-mean(2)];
  
  g = -log(detCovarianceMatrix) - (unknown' * invCovarianceMatrix * unknown);
endfunction

display(g(squares, covarianceMatrixSquares, meanOfSquares, 0, 0));
display(g(triangles, covarianceMatrixTriangles, meanOfTriangles, 0, 0));