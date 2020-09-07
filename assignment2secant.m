%{
N=100;
p0=4;
p1=5;
e=0.00001;
f=@(x) x^2 - 17; %q1
%f=@(x) -cos(x)+0.5+sin(x); %q2
%f=@(x) (exp(-x))*(x^2+ 5*x + 2) + 1 %q3
i=1;
while i<=N
    p2=p1-(f(p1)*(p1-p0))/(f(p1)-f(p0));
    if abs(p2-p1)>e
        p0=p1;
        p1=p2;
    else 
        break;
    end
    i=i+1;
end
p2
%}
%{
f=@(x) 2*sin(x) -x
h=1
e=0.00001;
m=1;
disp('Finding initial guess by IVT');
for i=-5:h:5
    if f(i)*f(i+h)<0
        x0=i;
        x1=i+h;
        %else
    end
end
while m<=N
%g=2*cos(x)-1;
x= x1-(f(x1)*(x1-x0))/(f(x1)-f(x0));
if abs(x-x1)< e
    fprintf('value of the root is %d',x);
    break;
else
x0=x1;
x1=x;
end
m=m+1;
end
display(m)
%}