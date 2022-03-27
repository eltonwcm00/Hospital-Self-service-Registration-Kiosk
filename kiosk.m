function kiosk()
    
printf('\n************ Welcome to EPHR Simulator !************\n\n');
%get input
    totalPatient = input('Number of patients in this simulator: ');
printf('\n----------------------------------------------------------');
%get random number
printf('\n            Type of Random Number Generator');
printf('\n----------------------------------------------------------');
printf('\n1. Mixed LCG \n2. Multiplicative LCG \n3. Additive LCG\n4. Exponential Distribution\n5. Uniform Distribution\n');
printf('----------------------------------------------------------\n');
%get the generator choice from user
    generatorChoice = input('Enter which random numbers generator to be used: ');
%generate random number
    interArrivalTimeRN = [];
    serviceTimeRN = [];
    [interArrivalTimeRN, serviceTimeRN] = randomNumGenerator(totalPatient, generatorChoice);
   
    printf('\n\n-------------------------------------------------------');
    printf('\n                  Waiting Rules');
    printf('\n-------------------------------------------------------');
    printf('\n1. Idle Kiosk (Kiosk 1 Priority) \n2. Round Robin\n');
    printf('--------------------------------------------------------\n');
    rules = input('Enter which waiting rules to be used: ');
    
    
    
printf('\n\n                       Inter-Arrival Time Table\n');
    disp('=========================================================================');
    disp('  Inter-Arrival Time  |   Probability   |     CDF     |       Range      ');
    disp('=========================================================================');
  printf('           1          |       0.10      |     0.10    |       1 - 10     ');
  printf('\n           2          |       0.15      |     0.35    |       11 - 35    ');
  printf('\n           3          |       0.30      |     0.65    |       36 - 65    ');
  printf('\n           4          |       0.25      |     0.80    |       66 - 80    ');
  printf('\n           5          |       0.15      |     1.00    |       81 - 100   ');
    printf('\n=========================================================================\n\n');

    %printInterArrivalTimetable();
    printKiosk1ServiceTimetable();
    printKiosk2ServiceTimetable();
    %calculate arrival time
    arrivalTime = [];
    arrivalTime = calArrTime(totalPatient, interArrivalTimeRN);
    if(rules == 1)
            [serviceTimeRN, serviceT1, tsb1, tse1, serviceT2, tsb2, tse2, timeSpend, waitingTime, idle, patientIndex] = idleKiosk(totalPatient, serviceTimeRN, arrivalTime);
        
    elseif(rules == 2)% round robin            
            [serviceTimeRN, serviceT1, tsb1, tse1, serviceT2, tsb2, tse2, timeSpend, waitingTime, idle, patientIndex] = roundRobin(totalPatient, serviceTimeRN, arrivalTime);
    end
    
 disp('------------------------------------------------------------------------------------');
 disp('                       Patient Arrival & Departure Details');
 disp('------------------------------------------------------------------------------------');
 patientDetails(totalPatient, arrivalTime, tsb1, tse1, tsb2, tse2, patientIndex);

 
displaySimulationT1(totalPatient, interArrivalTimeRN);
displaySimulationT2(totalPatient, serviceTimeRN, serviceT1 ,tsb1, tse1, serviceT2, tsb2, tse2, timeSpend, waitingTime, idle);
systemPerformance(totalPatient, serviceT1 ,serviceT2, timeSpend, waitingTime);

hist(timeSpend, [min(timeSpend)-1:max(timeSpend)+2]);
title('Frequency Distribution of Time Spend');
xlabel('Time');
ylabel('Frequency');
