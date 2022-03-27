function displaySimulationT2(totalPatient, serviceTimeRN, serviceT1 ,tsb1, tse1, serviceT2, tsb2, tse2, timeSpend, waitingTime, idle)
    printf('\n\n                                                 Similation Table - Part 2\n');
    printf('====================================================================================================================================\n');
    printf('         |                |               Kiosk 1                 |               Kiosk 2                 |       |         |      |\n');
    printf(' Patient | Random Num for |---------------------------------------|---------------------------------------| Time  | Waiting | Time |\n');
    printf('         | Service Time   | Service | Time Service | Time Service | Service | Time Service | Time Service | Spent | Time    | Idle |\n');
    printf('         |                | Time    | Begins       | Ends         | Time    | Begins       | Ends         |       |         |      |\n');
    printf('====================================================================================================================================\n');
    for(i=1: totalPatient)
        fprintf('    %-5d|       %-9d|', [i serviceTimeRN(i)]);
      if(serviceT1(i) == -1)
        fprintf('         |')
    else
        fprintf('    %-4d |',serviceT1(i))
    end
    if(tsb1(i) == -1)
        fprintf('              |')
    else 
        fprintf('      %-7d |',tsb1(i))
    end
    
    if(tse1(i) == -1)
        fprintf('              |')
    else
        fprintf('      %-7d |',tse1(i))
    end
    
    if(serviceT2(i) == -1)
        fprintf('         |')
    else
        fprintf('    %-4d |',serviceT2(i))
    end
    if(tsb2(i) == -1)
        fprintf('              |')
    else
        fprintf('      %-7d |',tsb2(i))
    end
    
    if(tse2(i) == -1)
        fprintf('              |')
    else
        fprintf('      %-7d |',tse2(i))
    end
  
        %fprintf('|    %-7d|    %-9d|    %-6s|    %-9s|    %-9s|    %-6s|    %-9s|    %-9s|    %-7d|    %-9d|\n', [i serviceTimeRN(i) s1 tsb1(i) tse1(i) s2 tsb2(i) tse2(i) timeSpend(i) waitingTime(i)]);
    fprintf('   %-4d|    %-5d|  %-3d |\n', [timeSpend(i) waitingTime(i) idle(i)]);
    end
    