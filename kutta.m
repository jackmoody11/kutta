function [output] = kutta(h,initial,done)
%h = 0.05;                                             % step size
x = 0:h:done;                                       % Calculates upto 0.4
y = zeros(1,length(x)); 
y(1) = initial;                                          % initial condition where y(0) is expressed as y(1)
f = @(t,r) 6 + t - r;                              % y' = f(t,r)

    for i=1:(length(x)-1)                              % calculation loop
        k1 = f(x(i),y(i));
        k2 = f(x(i)+0.5*h,y(i)+0.5*h*k1);
        k3 = f((x(i)+0.5*h),(y(i)+0.5*h*k2));
        k4 = f((x(i)+h),(y(i)+k3*h));

        y(i+1) = y(i) + (1/6)*(k1+2*k2+2*k3+k4)*h;
        % main equation (shows value of y after each h step size)
    end
    disp('y(i)=' y(1:length(x)-1))

end
