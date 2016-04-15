X = [0 1 2; 2 1 1];
Y = [1 2 3; 3 3 2];
bias = 2;

display(pla1(X, Y)); #result: [-2; -2; 7]
display(pla2(X, Y)); #result: [-3; -5; 16]
display(pla3(X, Y, bias)); #result: [-3; -6; 17]
display(pla4(X, Y, bias)); #result: [-5; -8; 25]