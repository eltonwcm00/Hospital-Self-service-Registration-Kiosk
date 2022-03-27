function [interArrivalTimeRN, serviceTimeRN] = randomNumGenerator(totalPatient, generatorChoice)
    
    x = round(rand*100);
    y = round(rand*100);
    a = 13;
    c = 57;
    
    interArrivalTimeRN(1) = 0;
    
    if(generatorChoice == 1)
        %Mixed LCG
        %interArrivalTimeRN(1) = 0;
        interArrivalTimeRN(2) = mod(((a * x) + c),100);
        for i=3:totalPatient
            interArrivalTimeRN(i)=mod(((a * interArrivalTimeRN(i-1)) + c),100);
            %temp(i) = interArrivalTimeRN(i);
        end
        serviceTimeRN(1) = mod(((a * y) + c),100);
        for i=2:totalPatient
            serviceTimeRN(i)=mod(((a * serviceTimeRN(i-1)) + c),100);
        end
        
    elseif(generatorChoice == 2)
        %Multiplicative LCG
        %interArrivalTimeRN(1) = 0;
        interArrivalTimeRN(2) = mod((17 * x),100);
        for i=3:totalPatient
            interArrivalTimeRN(i)=mod((17 * interArrivalTimeRN(i-1)),100);
        end
        serviceTimeRN(1) = mod((17 * y),100);
        for i=2:totalPatient
            serviceTimeRN(i)=mod((17 * serviceTimeRN(i-1)),100);
        end

    elseif(generatorChoice == 3)
        %Additive LCG
        %interArrivalTimeRN(1) = 0;
        interArrivalTimeRN(2) = mod((x + 53),100);
        for i=3:totalPatient
            interArrivalTimeRN(i)=mod((interArrivalTimeRN(i-1) + 53),100);
        end
        serviceTimeRN(1) = mod((y + 53),100);
        for i=2:totalPatient
            serviceTimeRN(i)=mod((serviceTimeRN(i-1) + 53),100);
        end
        
     elseif(generatorChoice == 4)
        %Exponential Distribution 
        %interArrivalTimeRN(1) = 0;           
        for i=2:totalPatient
            x=-log(1-rand);
                if(x < 1)
                    x=x*100;
                else
                    x=x*10;
                end
            interArrivalTimeRN(i)=round(x);
          
        end

        for i=1:totalPatient
            x=-log(1-rand);
                if(x < 1)
                    x=x*100;
                else
                    x=x*10;
                end
            serviceTimeRN(i)=round(x);
        end
        
       elseif(generatorChoice == 5) 
           %Uniform Distribution
           a=0;
           b=99;
           
           for i=2:totalPatient
               r(i)=rand;
               interArrivalTimeRN(i) = a+((b-a)*r(i));
               interArrivalTimeRN(i) = ceil(interArrivalTimeRN(i));
           end
           
           for i=1:totalPatient
               r(i)=rand;
               serviceTimeRN(i) = a+((b-a)*r(i));
               serviceTimeRN(i) = ceil(serviceTimeRN(i));
           end         
    end
            
    printf('\nRandom Numbers for Inter-Arrival Time:     ');
    for i=2:totalPatient
        fprintf('%2.0f ',interArrivalTimeRN(i));
    end
    %disp(interArrivalTimeRN);
    printf('\n\nRandom Numbers for Service Time      : ');
    for i=1:totalPatient
        fprintf('%2.0f ',serviceTimeRN(i));
    end
    %disp(serviceTimeRN);
    