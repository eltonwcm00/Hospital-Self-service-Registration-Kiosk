function patientDetails(totalPatient, arrivalTime, tsb1, tse1, tsb2, tse2, kiosk)
    
    for i=1: totalPatient
       if(kiosk(i)==1)
           fprintf('Patient %d arrives at minute %d in kiosk %d, gets service at minute %d and depart at minute %d\n', [i arrivalTime(i) kiosk(i) tsb1(i) tse1(i)]);
       else
           fprintf('Patient %d arrives at minute %d in kiosk %d, gets service at minute %d and depart at minute %d\n', [i arrivalTime(i) kiosk(i) tsb2(i) tse2(i)]);
       end
    end