function maximum = recursive_max(v)

    if length(v) > 1
        if v(1) > v(2)
            v(2) = [];
            maximum = recursive_max(v);
        else
            v(1) = [];
            maximum = recursive_max(v);
        end
    else
        maximum = v;
    end
end