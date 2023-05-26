function out = mixit(music, w)
% music is a K by N values, where N is the number of tracks, K is the
% number of samples per track

% w: N double scalars representing the "weights" of the tracks

% out: K element column vector

% 就是每一個 track 是由不同的樂器組成，要改變樂器聲音的權重

    music = double(music);

    music = 2 * music / 65535 - 1; % 這條公式可以用畫兩條數線來算，就想成以前華氏轉攝氏溫度那樣算
    out = music * w(:);
    
    % 記得 scale (怕爆音)
    if max(abs(out)) > 1
        out = out / max(abs(out));
    end

end