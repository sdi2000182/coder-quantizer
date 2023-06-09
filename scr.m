t=-0:0.01:5;
x=4*sin(t);
[E,Y]=quantizer1000(x,8);
z=coder(Y,8);

%auto einai gia to erwthma 2 ws mia enallaktiki lysh oxi gia to 3