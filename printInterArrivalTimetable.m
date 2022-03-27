function printInterArrivalTimetable()
    
    Inter = [1;2;3;4;5]; %inter-arrival time
    Prob = [0.10;0.15;0.30;0.25;0.15]; %probability
    CDF = [0.10;0.35;0.65;0.80;1.00]; %cdf
    RL = [1;11;36;66;81]; %lower range
    RU = [10;35;65;80;100]; %upper range
    
    printf('                       Inter-Arrival Time Table\n');
    disp('=========================================================================');
    disp('  Inter-Arrival Time  |   Probability   |     CDF     |       Range      ');
    disp('=========================================================================');
    
    fprintf(' %12.0f           |  %8.2f       | %8.2f    | %7.0f - %1.0f \n', [Inter,Prob,CDF,RL,RU]);
    printf('=========================================================================\n\n');


