
% Adam Sun
function runge
%when N is greater 20099,
%the change of y will be less than 0.000001
N = 20099;
h = 2.0/N; % step size
t = 0.0; % start point
w = 0.1; % initial value

fprintf('Step 0: t = %6.4f, w = %18.15f\n', t, w);

for i=1:N
    k1 = h*f(t,w);
    k2 = h*f(t+h/2, w+k1/2);
    k3 = h*f(t+h/2, w+k2/2);
    k4 = h*f(t+h, w+k3);

    w = w + (k1+2*k2+2*k3+k4)/6;
    t = t + h;
    if (k1+2*k2+2*k3+k4)/6 < 0.000001
        break;
    end
    fprintf('Step %d: t = %6.4f, w = %18.15f\n', i, t, w);
end

format long

%%%%%%%%%%%%%%%%%%
function v = f(t,y)
v = y^2+sin(t);