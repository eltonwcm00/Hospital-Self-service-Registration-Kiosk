function systemPerformance(totalPatient, serviceT1 ,serviceT2, timeSpend, waitingTime)
            
    printf('\n\nSystem Performance: \n------------------\n');
    count=0;
    sum1=0;
    sum2=0;
    avgServiceTime1=0;
    avgServiceTime2=0;
    sumWaiting=0;
    avgWaitingT=0;
    probWaiting=0;
    sumSpend=0;
    avgTimeSpend=0;
                
    for i=1:totalPatient
        %avg Service Time
        if(serviceT1(i)~= -1)
            sum1 = sum1 + serviceT1(i);
        end
        if(serviceT2(i)~= -1)
            sum2 = sum2 + serviceT2(i);
        end
        
        %avg time spend
        sumSpend =sumSpend + timeSpend(i);
        
        %avg waiting time
        sumWaiting = sumWaiting + waitingTime(i);
        if(waitingTime(i) > 0)
            count = count+1;
        end
                        
    end
    
    avgServiceTime1 = sum1/totalPatient;
    avgServiceTime2 = sum2/totalPatient;
    avgTimeSpend = sumSpend/totalPatient;
    avgWaitingT = sumWaiting/totalPatient;
    probWaiting = count/totalPatient;
    printf('Kiosk 1 Average Service Time: %0.2f', avgServiceTime1);
    printf('\nKiosk 2 Average Service Time: %0.2f', avgServiceTime2);
     printf('\nAverage Time Spend: %0.2f', avgTimeSpend);
    printf('\nProbability that a patient has to wait in the queue: %0.2f', probWaiting);
    printf('\nAverage waiting time: %0.2f', avgWaitingT);
    printf('\n');
    %disp(['Average waiting time: ', num2str(avgWaitingT)]);
     