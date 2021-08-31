dAdt = @(A,AP,I,IK) -konA * (Ptot - AP) * A + koffA*AP + kcatA*IK;
dAPdt = @(A,AP,I,IK) +konA * (Ptot - AP) * A - koffA*AP - kcatI*AP;
dIdt = @(A,AP,I,IK) -konI * (Ktot - IK) * I + koffI*IK + kcatI*AP;
dIKdt = @(A,AP,I,IK) +konI * (Ktot - IK) * I - koffI*IK - kcatA*IK;


Ptot=1;
Ktot=1;
I = 1;
A = 0;
AP = 0;
IK = 0;
konA = 10;
koffA = 10;
konI = 10;
koffI = 10;
kcatI = 10;
kcatA = 100;

%problem d
%[T, X] = ode45(@(t,x)[dAdt(x(1),x(2),x(3),x(4));dAPdt(x(1),x(2),x(3),x(4));dIdt(x(1),x(2),x(3),x(4));dIKdt(x(1),x(2),x(3),x(4))], [0,100],[0,0,1,0] );
%plot(T,X)

%problem e

%actPro = diff(X(:,2))./diff(T);
figure(1)
for Ktot=1e-3:1e2
    [T, X] = ode45(@(t,x)[dAdt(x(1),x(2),x(3),x(4));dAPdt(x(1),x(2),x(3),x(4));dIdt(x(1),x(2),x(3),x(4));dIKdt(x(1),x(2),x(3),x(4))], [0,100],[0,0,1,0] );
    actPro = diff(X(:,2))./diff(T);
    for i=1:100
        if actPro(i)==0
            disp(i);
            plot(X(i,2),i);
            hold on
        end
    end
end
