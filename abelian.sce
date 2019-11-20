//scilab prgm to check z7,+7*7 is an abelian under addition

clc;
k=[];
z=[0 1 2 3 4 5 6]
n= length(z);
for i=1:n
    for j=1:n
        k=modulo(z(i)+z(j),7);
        if(find((z==k))==[])then
            printf("\n z is not closed under addition");
            printf("\n z is not a ring under multiplication");
            abort;
        end
        end
end
for i=1:n-2
    k1=modulo(z(i)+modulo(z(i+1)+z(i+2),7),7);
    k2=modulo(modulo(z(i)+z(i+1),7)+z(i+2),7);
    if k1~=k2 then
        printf("\n z7 is not associative under multiplication");
        printf("\n z7 is not a group under multiplication");
        abort;
        end
end
e=0;
for i = 1:n
    if modulo(z(i)+e,7~=z(i)|modulo(e+z(i),7~=z(i)then
        printf("\n Identity law doesnot hold good");
        printf("\n z7u is not a group under multiplication");
        abort;
        end
end
flag=0
for i=1:n
    for j =1:n
        if modulo(z(i)+z(j),7)==e &modulo(z(j)+z(i),7)==e then
            flag=1;break;
            end
end

if flag ==0 then  then
    printf("\ninverse law holds good in z");
    printf("\n z7 is not a ring");
    abort;
end
end
for i=1:n
    for j=1:n
        k1=modulo(z(i)+z(j),7);
        k2=modulo(z(j)+z(i),7);
        if k1~=k2 then 
            printf("\n commutative law fails");
            printf("z is not abelian group under addition");
            abort;
end
end
end
//to check multiplication is associative 

for i=1:n-2
    
    k1=modulo(z(i)*modulo(z(i+1)*z(i+2),7),7);
    k2 = modulo(z(i)*z(i+1),7)*z(i+2),7);
    
    if k1~=k2 then
        printf("\n z7 is not associative under multiplication");
        prinitf("\n z7 is not a semi group under multiplication");
        abort;
    end
    
end
//multiplication distributive law

for i=1:n-2
    k1=modulo(z(i)*modulo(z(i+1)+z(i+2),7),7);
    k2=modulo(z(i)*z(i+1),7);k3=modulo(z(i)*z(i+2),7);
    k=modulo(k2+k3,7);
    if k1~=k then 
        printf("\n z7 is not a distributive under multiplication");
        printf("\n z7 is not a ring");
        abort;
        end
end
printf("\nz7 is a riing ");









