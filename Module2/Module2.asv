% How much caffeine is there in the jar?

% n - number of days
% x - fraction of caffeinated 

nMax = 20; % max number of days to simulate

N = 10; % number of scoops in each jar
x = zeros(1,nMax); % fraction caffeinated
x(1) = 1.0; % initial fraction caffeinated

for n=2:nMax
    
    x(n) = (1-1/N) * x(n-1);
    %x(n) = x(n-1) - 1/N*x(n-1);
    
end % finished loop through days

% THE MODEL ^
% ------------------------------------------
% THE BEHAVIOR / THE OUTPUT ? 

figure(1); 
plot(x,'-ok');
ylabel('fraction caffeinated')
xlabel('Days')




%Module 2: Project 1 Getting to know Matlab
nMax = 100;
x = zeros(1, nMax);
y = zeros(1, nMax);
x(1) = 0.1;
y(1) = 0.1;
c = -0.8;
d = 0.156;

for n=2:nMax    
    x(n) = x(n-1).^2-y(n-1).^2 + c;
    y(n) = 2*x(n-1)*y(n-1)+d;
end

figure(1); 
plot(x)%problem b
figure(1)
plot(x,y,'-*k'); %problem c












