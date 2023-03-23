function summa = digit_sum(in)
    if (in < 10)
        summa = in;
    else
        summa = rem(in, 10) + digit_sum(floor(in/10));
    end
end