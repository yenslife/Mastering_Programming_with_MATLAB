function v = reversal(v)
    if length(v) > 1
        % v = flip(v) % 最好的方法就是用內建函式，但這邊要練習 recursive 降低時間複雜度
        % 可以把他切一半處理，加速
        v = [v(end) reversal(v(floor(end/2)+1:end-1)) reversal(v(1:floor(end/2))) ];
        % v = [reversal2(v(ii+1:end)) reversal2(v(1:ii))];
    end
end