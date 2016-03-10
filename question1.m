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

covarianceMatrixTriangles = createCovarianceMatrix(trianglesX1, trianglesX2);
covarianceMatrixSquares = createCovarianceMatrix(squaresX1, squaresX2);

g1 = g(triangles, covarianceMatrixTriangles, meanOfTriangles);
g2 = g(squares, covarianceMatrixSquares, meanOfSquares);
gX = g1-g2;
display(gX);
