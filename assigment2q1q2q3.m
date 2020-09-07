%{
format long
syms x;
a=x^2-17 %q2 (1)
%a=-cos(x)+ 1/2 + sin(x)  %q2 (2)
%a=(exp(-x))*(x^2+ 5*x + 2) + 1 %q2 (3)
f=inline(a)       
b=diff(a)
g=inline(b)      
x0=4.5   
error=1
n=1;
tol=0.00001
while error>tol
	x1=x0-f(x0)/g(x0);
	error=abs(x1-x0);
	%er(n)=error;
	x0=x1;
%%n=n+1;
end
%plot(er)
x0
%}
%{
f=@(x) 2*sin(x) -x %q2 (4)
h=1
e=0.00001
disp('Finding initial guess by IVT');
for i=-5:h:5
    if f(i)*f(i+h)<0
        a=i;
        b=i+h;
        else
    end
end
 disp(a)
 disp(b)
 x=(a+b)/2;
 disp(x);
 x2=x-1
 N=10;
 i=1;
 r=0;
while i<N
    g=2*cos(x)-1;
    x1= x-f(x)/g;
    if abs(x1-x)< e
        r=x1;
        break;
end
i=i+1;
x2=x;
x=x1;
end
%}
fprintf('value of the root is %d',r);