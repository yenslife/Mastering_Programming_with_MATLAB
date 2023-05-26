function [a, b] = lin_reg(x, y)
    % matrix mul
    % A * x = b
    % x = A \ b
    M = [x;ones(1,length(x))]
    M = M'\y'
    a = M(1);
    b = M(2);
end