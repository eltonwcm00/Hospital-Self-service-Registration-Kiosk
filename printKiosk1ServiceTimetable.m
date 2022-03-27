function printKiosk1ServiceTimetable()
    
    ST = [1;2;3;4;5]; %inter-arrival time
    Prob = [0.20;0.15;0.10;0.25;0.30]; %probability
    CDF = [0.20;0.35;0.45;0.70;1.00]; %cdf
    RL = [1;11;36;46;71]; %lower range
    RU = [20;35;45;70;100]; %upper range
    
    disp('                       Kiosk 1 Service Time Table');
    disp('===========================================================================');
    disp('  Kiosk 1 Service Time  |   Probability   |     CDF     |       Range      ');
    printf('===========================================================================\n');
    
    fprintf(' %12.0f           |  %8.2f       | %8.2f    | %7.0f - %1.0f \n', [ST, Prob,CDF,RL,RU]');
    printf('===========================================================================\n\n');



