### given data ###
p1 = 0.2; p2 = 0.3; p3 = 0.4;
q1 = 0.9; q2 = 0.9; q3 = 0.9;

pVector = [p1; p2; p3];
qVector = [q1; q2; q3];
### end of block ###

w1 = 0.5;
w2 = 0.5;
w0 = findw0(pVector, qVector, w1, w2);
wVector = [w1; w2];

x1 = sym("x1");
x2 = sym("x2");
x3 = sym("x3");
xVector = [x1; x2; x3];

gX = gBayes(xVector, wVector, w0);
display(gX);