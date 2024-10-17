function path = SelectPath()
    r = rand();
    if r < 0.2
        path = 1; % Path to P3
    elseif r < 0.7
        path = 2; % Path to P4
    elseif r < 0.8
        path = 3; % Path to P5
    else
        path = 4; % Path to P6
    end
end
