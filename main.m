% gradient descent
% min_x f(x)=x^2
clc,clear;
close all;
alp=0.1;% in (0,0.5)
bet=0.2;% in (0,1)
f=@(x)x^2;%function
gf=@(x)2*x;%gradient of f
dx=@(x)-2*x;%negative gradient of f
iter_max=20;%maximum iteration number
x=10;% inintial point
x2(1)=x;
epsilon=1e-3;%accuracy
val=zeros(iter_max+1,1);
val(1)=f(x);
for iter=1:iter_max
t=linear_search(f,gf,x,dx,alp,bet);% linear search the step
x = x + t*dx(x);%update point x
x2(iter+1)=x;
val(iter+1)=f(x);
% condition stop condition
if abs(val(iter+1)-val(iter))<=epsilon
    break
end
end
%plot function curve and iteration points

x1=-10:1:10;
for ii=1:length(x1)
y1(ii)=f(x1(ii));
end
figure
hold on
plot(x1,y1,'b-','linewidth',1);
plot(x2,val(1:iter+1),'ro','linewidth',1.5);
box on
xlabel('x');
ylabel('y');
legend('y=x^2','gradient descent');
grid on
