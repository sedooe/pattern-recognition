function g = g(featureVector, covarianceMatrix, mean, probability)
  x1 = sym("x1"); #symbolic variables.
  x2 = sym("x2"); #TODO: dependency documentation. (symbolic, sympy, anaconda)

  invCovarianceMatrix = inv(covarianceMatrix); #inverse
  detCovarianceMatrix = det(covarianceMatrix); #determinant
  unknown = [x1-mean(1); x2-mean(2)];

  g = -log(detCovarianceMatrix) - (unknown' * invCovarianceMatrix * unknown);
endfunction
