% define ODE and parameters
a_0 = 500; % molecules per hour
a_1 = 0.5; % molecules per hour, per existing molecule of A
b = 4; % 1/hrs
dPdt =@(P) (a_0 + a_1*P) - b*P;

[T,X]=ode45(@(t,x)dPdt(x),[0,300],0);

figure(2);clf;

%plot(X)

plot(diff(X))