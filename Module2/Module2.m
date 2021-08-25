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

%problem b
figure(1); 
plot(x)

%problem c
figure(1)
plot(x,y,'-*k'); 

% problem d
x_min = -2;
x_max = 2;
y_min = x_min;
y_max = x_max;
x_d = x_min + rand(1,100) * (x_max-x_min);
y_d = y_min + rand(1,100) * (y_max-y_min);

%problem e
plot(x_d, y_d)

%problem f
starting_x = -2 + rand(1,100) * (2+2);
starting_y = -2 + rand(1,100) * (2+2);
c = -0.8;
d = 0.156;
figure(1);
for n=1:100
    nMax = 22;
    x_temp = zeros(1, nMax);
    y_temp = zeros(1, nMax);
    x_temp(1) = starting_x(n);
    y_temp(1) = starting_y(n);
    for i=2:22  
        x_temp(i) = x_temp(i-1).^2-y_temp(i-1).^2 + c;
        y_temp(i) = 2*x_temp(i-1)*y_temp(i-1)+d;
    end
    if(x_temp(22)>-2 && x_temp(22)<2 && y_temp(22)>-2 && y_temp(22)<2)
        plot(x_temp(1),y_temp(1),'or'); 
        hold on;
    else
        plot(x_temp(1),y_temp(1),'ob');        
        hold on;
    end
end
hold off

%problem g
starting_x = -2 + rand(1,1e5) * (2+2);
starting_y = -2 + rand(1,1e5) * (2+2);
c = -0.8;
d = 0.156;
figure(1);

for n=1:1e5
    nMax = 22;
    x_temp = zeros(1, nMax);
    y_temp = zeros(1, nMax);
    x_temp(1) = starting_x(n);
    y_temp(1) = starting_y(n);
    for i=2:22  
        x_temp(i) = x_temp(i-1).^2-y_temp(i-1).^2 + c;
        y_temp(i) = 2*x_temp(i-1)*y_temp(i-1)+d;
    end
    if(x_temp(22)>-2 && x_temp(22)<2 && y_temp(22)>-2 && y_temp(22)<2)
        plot(x_temp(1),y_temp(1),'or'); 
        hold on;
    else
        plot(x_temp(1),y_temp(1),'ob');        
        hold on;
    end
end
hold off


%problem h
starting_x = -2 + rand(1,1e5) * (2+2);
starting_y = -2 + rand(1,1e5) * (2+2);
c=11;
d=2;
figure(1);
for n=1:1e5
    nMax = 22;
    x_temp = zeros(1, nMax);
    y_temp = zeros(1, nMax);
    x_temp(1) = starting_x(n);
    y_temp(1) = starting_y(n);
    for i=2:22  
        x_temp(i) = x_temp(i-1).^2-y_temp(i-1).^2 + c;
        y_temp(i) = 2*x_temp(i-1)*y_temp(i-1)+d;
    end
    if(x_temp(22)>-2 && x_temp(22)<2 && y_temp(22)>-2 && y_temp(22)<2)
        plot(x_temp(1),y_temp(1),'or'); 
        hold on;
    else
        plot(x_temp(1),y_temp(1),'ob');        
        hold on;
    end
end
hold off


%problem i
starting_x = -2 + rand(1,1e5) * (2+2);
starting_y = -2 + rand(1,1e5) * (2+2);
c=11;
d=2;
figure(1);
for n=1:1e5
    nMax = 22;
    x_temp = zeros(1, nMax);
    y_temp = zeros(1, nMax);
    x_temp(1) = starting_x(n);
    y_temp(1) = starting_y(n);
    for i=2:22  
        x_temp(i) = x_temp(i-1).^2-y_temp(i-1).^2 + c;
        y_temp(i) = 2*x_temp(i-1)*y_temp(i-1)+d;
    end
    if(x_temp(22)>-2 && x_temp(22)<2 && y_temp(22)>-2 && y_temp(22)<2)
        plot(x_temp(1),y_temp(1),'or'); 
        hold on;
    else
        plot(x_temp(1),y_temp(1),'ob');        
        hold on;
    end
end
hold off





