function [f, trace] = fibo_trace(n, v)
    
    trace = [v n];
    if n <= 2
        f = 1;
    else
        %f = fibo_trace(n-2, trace) + fibo_trace(n-1, trace);
        [f1, t1] = fibo_trace(n-2, trace);
        [f2, t3] = fibo_trace(n-1, t1);
        f = f2 + f1;
        trace = t3;
    end

end