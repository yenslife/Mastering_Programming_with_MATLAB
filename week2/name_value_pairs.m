function db = name_value_pairs(varargin)
    % error checking
    if nargin == 0 || rem(nargin, 2) ~= 0
        %fprintf("input amount must be even\n");
        db = {};
        return;
    end
    
    for ii = 1:length(varargin)/2
        if ~isa(varargin{ii*2-1}, 'char')
            db = {};
            return
        end
        db(ii,:) = {varargin{ii*2-1}, varargin{ii*2}};
    end    

end
% test: db = name_value_pairs('name','John Smith','age',32,'children',{'Joe' 'Jill'})