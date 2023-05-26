function out = grader(func1, func2, varargin)
    % we assume that both functions take exactly one input argument
    out = true;
        for ii = 1:nargin-2
        out1 = func1(varargin{ii});
        out2 = func2(varargin{ii});
        if (out1 ~= out2)
            out = false;
            return;
        end
    end
    
end