function out_data = voters(in_data, varargin)
    % 檢查 vargarin 是奇數
    tmp = in_data;
    if nargin < 1 || rem(nargin, 2) == 0
        out_data = in_data;
        return;
    end    
    
    for ii = 1:2:nargin-1
        % check
        if ~(ischar(varargin{ii}) || isstring(varargin{ii})) || ~isnumeric(varargin{ii + 1}) || round(varargin{ii+1}) ~= varargin{ii+1}
            out_data = tmp;
            return;
        end
        in_data(end+1).Name = string(varargin{ii});
        in_data(end).ID = varargin{ii + 1};
    end

    out_data = in_data;
end