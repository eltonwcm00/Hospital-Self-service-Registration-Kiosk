function printKiosk2ServiceTimetable()
    
    Inter = [2;3;4;5;6]; %inter-arrival time
    Prob = [0.25;0.10;0.25;0.30;0.10]; %probability
    CDF = [0.25;0.35;0.60;0.90;1.00]; %cdf
    RL = [1;26;36;61;91]; %lower range
    RU = [25;35;60;90;100]; %upper range
    
    disp('                       Kiosk 2 Service Time Table');
    disp('===========================================================================');
    disp('  Kiosk 2 Service Time  |   Probability   |     CDF     |       Range      ');
    printf('===========================================================================\n');
    
    fprintf(' %12.0f           |  %8.2f       | %8.2f    | %7.0f - %1.0f \n', [Inter, Prob,CDF,RL,RU]');
    printf('===========================================================================\n\n');



