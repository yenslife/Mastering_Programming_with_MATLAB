function reversed = reversal(v)
    % move the first element to last and reverse the rest of the vector
    if length(v) > 1
        first = v(1);
        reversed = reversal(v(2:end));
        reversed(end + 1) = first;
    else
        reversed = v;
    end
end