function time = SelectPath()
    r = rand();
    if r < 0.2
        time = 10; % Time for P3
    elseif r < 0.7
        time = 20; % Time for P4
    elseif r < 0.8
        time = 30; % Time for P5
    else
        time = 40; % Time for P6
    end
end
