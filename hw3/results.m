addpath (strcat(pwd, "/fisher"));

classA = [[-1; 3; 2], [0; 2; 4], [1; 3; 3], [2; 1; 1]];
classB = [[-3; -1; -1], [-2; 2; 0], [-1; 1; -2], [-1; -2; 0], [1; 0; -2]];
display(fisher(classA, classB));