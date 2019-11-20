//3/8th 
clc;
funcprot();
function y=f(x)
    y=1/(1+x^2)
endfunction
x0=input("lower limit of the interval:");
xn=input("upper limit of the interval:");
n=input("no of the subintervals(multiples of 3):");
h=(xn-x0)/n;
sum1 = f(x0)+f(xn);
for i=1:n-1
    if modulo(i,3)==0 then
        sum1=sum1+2*f(x0+i*h);
    else
        sum1=sum1+3*f(x0+i*h);
        end
end
printf("\n estimated vlaue of given integration :%f",3*h/8*sum1);
