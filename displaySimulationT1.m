function displaySimulationT1(totalPatient, interArrivalTimeRN)
    printf('\n\n');    
    disp('                           Similation Table - Part 1');
    disp('===========================================================================================');
    disp('  Patient  |   Random Num for       |     Inter-Arrival Time     |       Arrival Time      ');
    disp('           |   Inter Arrival Time   |                            |');
    printf('===========================================================================================\n');
    
    interAT = [];
    sum=0;
    for i=1:totalPatient
            if(interArrivalTimeRN(i)==0)
                interAT(i)= 0;
            elseif(interArrivalTimeRN(i)<10)
                interAT(i)= 1;
            elseif(interArrivalTimeRN(i)<35)
                interAT(i)= 2;
            elseif(interArrivalTimeRN(i)<65)
                interAT(i)= 3;
            elseif(interArrivalTimeRN(i)<80)
                interAT(i)= 4;
            elseif(interArrivalTimeRN(i)<100)
                interAT(i)= 5;    
            end
            sum = sum + interAT(i);
            arrivalTime(i)= sum;  
            
            fprintf(' %5.0f     |  %10.0f            |     %10.0f             |   %10.0f          |\n', [i interArrivalTimeRN(i) interAT(i) arrivalTime(i)]);
    end

    