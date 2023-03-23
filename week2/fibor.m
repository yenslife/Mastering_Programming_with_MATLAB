function f = fibor(n)
    if n == 1
        f = 1;
    elseif n == 2
        f = [1 1];
    else
        f = fibor(n-1);
        f = [f 1+sum(f(1:end-1))];
    end
end
