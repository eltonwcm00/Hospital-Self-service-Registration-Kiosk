function [serviceTimeRN, serviceT1, tsb1, tse1, serviceT2, tsb2, tse2, timeSpend, waitingTime, idle, patientIndex] = roundRobin(totalPatient, serviceTimeRN, arrivalTime)
    
     serviceT1 = zeros(1,totalPatient);
     serviceT2 = zeros(1,totalPatient);
     tsb1 = zeros(1,totalPatient);
     tse1 = zeros(1,totalPatient);
     tsb2 = zeros(1,totalPatient);
     tse2 = zeros(1,totalPatient);
     timeSpend = [];
     waitingTime = [];
     patientIndex=[]; %check the particular patient in which kiosk
    end1=0;
    end2=0;
    idle=[];
    
    for(i=1: totalPatient)
                
                if(mod(i,2)==1)
                    
                    patientIndex(i)=1;
                    
                    if(end1 <= arrivalTime(i))
                        tsb1(i) = arrivalTime(i);
                    else
                        tsb1(i) = end1;
                    end
                
                    if(serviceTimeRN(i)<20)
                        serviceT1(i)= 1;
                    elseif(serviceTimeRN(i)<35)
                        serviceT1(i)= 2;
                    elseif(serviceTimeRN(i)<45)
                        serviceT1(i)= 3;
                    elseif(serviceTimeRN(i)<70)
                        serviceT1(i)= 4;
                    elseif(serviceTimeRN(i)<100)
                        serviceT1(i)= 5;    
                  end
           
                  idle(i) = tsb1(i) - end1;
                  end1 = tsb1(i) + serviceT1(i);
                  tse1(i) = end1;
                  timeSpend(i) = tse1(i) - arrivalTime(i);
                  waitingTime(i) = tsb1(i) - arrivalTime(i);
                  serviceT2(i)=-1;
                  tsb2(i) = -1;
                  tse2(i) = -1;
                  
                elseif(mod(i,2)==0)
                    
                    patientIndex(i)=2;
                    
                    if(end2 <= arrivalTime(i))
                        tsb2(i) = arrivalTime(i);
                    else
                        tsb2(i) = end2;
                    end
                                                            
                  if(serviceTimeRN(i)<25)
                      serviceT2(i)= 2;
                  elseif(serviceTimeRN(i)<35)
                      serviceT2(i)= 3;
                  elseif(serviceTimeRN(i)<60)
                      serviceT2(i)= 4;
                  elseif(serviceTimeRN(i)<90)
                      serviceT2(i)= 5;
                  elseif(serviceTimeRN(i)<100)
                      serviceT2(i)=6;    
                  end
                  
            idle(i) = tsb2(i) - end2;      
            end2 = tsb2(i) + serviceT2(i);           
            tse2(i) = end2;
            timeSpend(i) = tse2(i) - arrivalTime(i);           
            waitingTime(i) = tsb2(i) - arrivalTime(i);;
            serviceT1(i)=-1;
            tsb1(i) = -1;
            tse1(i) = -1;
            
           end      
     end