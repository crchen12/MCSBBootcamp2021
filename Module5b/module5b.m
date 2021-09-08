e = 0.08;
a=0.5;
b=0.2;
dvdt = @(v,w) v - 1/3*v^3 - w;
dwdt = @(v,w) e*(v + a - b*w);


dxdt = @(t,x)[dvdt(x(1),x(2)); dwdt(x(1),x(2))];

[T, X] = ode45(dxdt, [0,100], [-0,-0.5]);

figure; hold on;
%plot(T,X(:,1),'-r'); % red for RNA
%plot(T,X(:,2),'-', 'color', [0.5 0 1]); % purple for protein
%ylabel('Molecular concentration (micromolar)')
%xlabel('Time (hours)')




% Problem 2
I0 = 1.0;
tStart = 40;
tStop = 47;
I = @(t) I0*(t>tStart).*(t<tStop);



e = 0.08;
a=1.0;
b=0.2;
dvdt = @(v,w,t) v - 1/3*v^3 - w +I(t);
dwdt = @(v,w,t) e*(v + a - b*w);

dxdt = @(t,x)[dvdt(x(1),x(2),t); dwdt(x(1),x(2),t)];



[T, X] = ode45(dxdt, [0,100], [-1.129,-0.649]);
%sterdy state: v -1.129; w -0.649




%figure; hold on;
%plot(T,X(:,1),'-r'); 
%plot(T,X(:,2),'-', 'color', [0.5 0 1]); 
%ylabel('Values')
%xlabel('Time (hours)')



% Problem 4
I0 = 1.0;
tStart = 40;
tStop = 47;
I = @(t) I0*(t>tStart).*(t<tStop);



e = 0.08;
a=1.0;
b=0.2;
dvdt = @(v,w,t) v - 1/3*v.^3 - w ;
dwdt = @(v,w,t) e*(v + a - b*w);

dxdt = @(t,x)[dvdt(x(1:10),x(11:20))+I(t).*[0;0;0;1;0;0;0;0;0;0]; dwdt(x(1:10),x(11:20));];



[T, X] = ode45(dxdt, [0,100], [-1.5*ones(10,1);-0.5*ones(10,1)]);
%sterdy state: v -1.129; w -0.649



% Problem 5
I0 = 1.0;
tStart = 40;
tStop = 47;
I = @(t) I0*(t>tStart).*(t<tStop);



e = 0.08;
a=1.0;
b=0.2;
D= 0.9;
dvdt = @(v,w,t) v - 1/3*v.^3 - w;
dwdt = @(v,w,t) e*(v + a - b*w);

dxdt = @(t,x)[dvdt(x(1:10),x(11:20))+I(t).*[0;0;0;1;0;0;0;0;0;0]+D.*([x(10);x(1:9)]-2*x(1:10)+[x(2:10);x(1)]); dwdt(x(1:10),x(11:20));];



[T, X] = ode45(dxdt, [0,100], [-1.5*ones(10,1);-0.5*ones(10,1)]);
%sterdy state: v -1.129; w -0.649


% movie
for nt=1:numel(T)
    figure(5); clf; hold on; box on;
    plot(X(nt,1:10));
    set(gca,'ylim', [-2.5,2.5]);
    xlabel('Cell');
    ylabel('Voltage');
    drawnow;
end

figure; hold on;
plot(T,X(:,1:10),'-r'); 
plot(T,X(:,11:20),'-', 'color', [0.5 0 1]); 
ylabel('Values')
xlabel('Time (hours)')


