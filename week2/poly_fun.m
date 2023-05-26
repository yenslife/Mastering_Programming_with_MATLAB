function fh = poly_fun(p_list)

    power = length(p_list);

    function polynomial = poly(x)
        c = p_list(end);
     
        power = power - 1;
        if power == 0
            polynomial = c * (x^power);
            return;
        end
        p_list = p_list(1:end-1);

        polynomial = c * (x^power) + poly(x);

    end

    fh = @poly;
end

% 其實上面遞迴是比較不好的做法，最佳解是下面的利用 matlab 語言特性來解
%{
function fh = poly_fun(p)
    function polynomial = poly(x)
        polynomial = sum(p .* x.^(0:length(p)-1));
    end 
    
    fh = @poly;
end
%}

% modified the function without ANY loop
%{
function fh = poly_fun(p)
    function polynomial = poly(x)
        polynomial = 0;
        for ii = 1:length(p)
            polynomial = polynomial + p(ii) .* x.^(ii-1);
        end
    end    
    fh = @poly;
end
%}