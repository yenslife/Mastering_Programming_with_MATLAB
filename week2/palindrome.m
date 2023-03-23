function logic = palindrome(str)
    if length(str) <= 1
        logic = true;
        return
    end
    % 頭尾一樣
    if str(1) == str(end)
        logic = palindrome(str(2:end-1));
    else
        logic = false;

end