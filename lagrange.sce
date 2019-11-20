//lagrange
clc;
x=[5 6 9 11];
y=[12 13 14 16]
X=10;
printf("\n x values:")
disp(x);
printf("\n y values:")
disp(y);
sum1 =0;
n=length(x);
for i=1:n
    term=1;
    for j=1:n
        if i~=j then 
            term = term*(X-x(j))/(x(i)-x(j));
            end
end
sum1 = sum1+term*y(i);
end
printf("\n estimated value of f(10):%f",sum1)
