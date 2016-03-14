### given data ###
p1 = 0.2; p2 = 0.3;
q1 = 0.8; q2 = 0.9;

pVector = [p1; p2];
qVector = [q1; q2];
### end of block ###

w1 = 0.25;
w2 = 0.75;
w0 = findw0(pVector, qVector, w1, w2);
wVector = [w1; w2];

x1 = sym("x1");
x2 = sym("x2");
xVector = [x1; x2];

gX = gBayes(xVector, wVector, w0);
display(gX);