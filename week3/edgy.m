function out = edgy(img)

    [row, col] = size(img);

    img = double(img); % 因為要計算
    out = zeros(row - 2, col - 2); % Note that the output has two fewer rows and columns than the input since the pixels in the first and last columns and rows do not have enough neighbors for the required computation.
    
    cx = [-1 0 1;-2 0 2;-1 0 1];
    cy = [1 2 1;0 0 0;-1 -2 -1];

    for i = 1:row-2
        for j = 1:col-2
            sx = img(i:i+2,j:j+2) .* cx;
            sy = img(i:i+2,j:j+2) .* cy;
            sumx = sum(sum(sx));
            sumy = sum(sum(sy));
            m = sqrt(sumx.^2 + sumy.^2);
            out(i,j) = m;
        end
    end
    out = uint8(out);
end

%test
%{
cc = imread('CocaCola.png');
figure
imshow(cc);
edg = edgy(cc);
figure
imshow(edg);
%}