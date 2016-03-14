### given data ###
trianglesX1 = [-2 -4 -2 -4];
trianglesX2 = [-6 -6 -4 -4];
squaresX1 = [5 3 5 3];
squaresX2 = [4 4 8 8];
circlesX1 = [-5 -4 -6 -5];
circlesX2 = [4 6 6 8];

triangles = [trianglesX1; trianglesX2];
squares = [squaresX1; squaresX2];
circles = [circlesX1; circlesX2];
### end of block ###

meanOfTriangles = mean(triangles, 2); # 2 is dimension.
meanOfSquares = mean(squares, 2);
meanOfCircles = mean(circles, 2);

covarianceMatrixTriangles = createCovarianceMatrix(trianglesX1, trianglesX2);
covarianceMatrixSquares = createCovarianceMatrix(squaresX1, squaresX2);
covarianceMatrixCircles = createCovarianceMatrix(circlesX1, circlesX2);

g1 = g(covarianceMatrixTriangles, meanOfTriangles);
g2 = g(covarianceMatrixSquares, meanOfSquares);
g3 = g(covarianceMatrixCircles, meanOfCircles);
display(g1);
display(g2);
display(g3);
