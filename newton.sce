clc;
x = 1:5

y =[10 26 58 112 194]

X =1.4;
printf("\n x values: ")
disp(x);
printf("\n y  values: ")
disp(y);
n= length (x);
h = x(2)-x(1);
p =(X-x(n))/h;
sum1 =y(n);
term =1;
printf("\n difference table")
for i=1:n-1
    printf("\n");
    for j=1:n-i
        y(j)=y(j+1)-y(j);
        printf("\n t%d",y(j));
        
end
term = term*(p-i+1)/i;
sum1 = sum1 + term*y(1);
end
printf("\n the value of f(1.4):%f",sum1);
