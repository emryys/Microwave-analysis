
prompt = 'What is Z0 ';
Z0 = input(prompt);
prompt = 'What is stub charecteristic impeadance? ';
Zs=input(prompt);
prompt = 'What is ZL ';
ZL=input(prompt);

YL=1/ZL;
GL=real(YL);
BL=imag(YL);
syms lamda;


if ( GL == Y0)
    t = -BL/(2*Y0);
    if ( t >= 0 )
            d=vpa(atan(t)/(2*pi),4)
            R= (GL*(1+t^2))/(GL^2+(BL+Y0*t)^2);
            X= ((GL^2)*t - (Y0-BL*t)*(BL+Y0*t))/(Y0*(GL^2 + (BL+Y0*t)^2));
            lo = ( atan(Zs/X) / (2*pi));
            ls = (-atan(X/Zs) / (2*pi));
                        
            while(lo <0)
                lo=lo+0.5;
            end
            
            while(ls <0)
                ls=ls+0.5;
            end
            lo
            ls
    else
           d=vpa((pi+atan(t))/(2*pi),4)
            R= (GL*(1+t^2))/(GL^2+(BL+Y0*t)^2);
            X= ((GL^2)*t - (Y0-BL*t)*(BL+Y0*t))/(Y0*(GL^2 + (BL+Y0*t)^2));
            lo = ( atan(Zs/X) / (2*pi));
            ls = (-atan(X/Zs) / (2*pi));
                        
            while(lo <0)
                lo=lo+0.5;
            end
            
            while(ls <0)
                ls=ls+0.5;
            end
            lo
            ls
    end

else
     t1= (BL + sqrt(GL*((Y0-GL)^2 +BL^2) / Y0)) / (GL-Y0);
     t2= (BL - sqrt(GL*((Y0-GL)^2 +BL^2) / Y0)) / (GL-Y0);
        if ( t1 >= 0 )
            d1=vpa(atan(t1)/(2*pi),4)
            R= (GL*(1+t1^2))/(GL^2+(BL+Y0*t1)^2);
            X= ((GL^2)*t1 - (Y0-BL*t1)*(BL+Y0*t1))/(Y0*(GL^2 + (BL+Y0*t1)^2));
            lo1 = ( atan(Zs/X) / (2*pi));
            ls1 = (-atan(X/Zs) / (2*pi));
            while(lo1 <0)
                lo1=lo1+0.5;
            end
            
            while(ls1 <0)
                ls1=ls1+0.5;
            end
            lo1
            ls1
            
        else
            d1=vpa((pi+atan(t1))/(2*pi),4)

            R= (GL*(1+t1^2))/(GL^2+(BL+Y0*t1)^2);
            X= ((GL^2)*t1 - (Y0-BL*t1)*(BL+Y0*t1))/(Y0*(GL^2 + (BL+Y0*t1)^2));
            lo1 = ( atan(Zs/X) / (2*pi));
            ls1 = (-atan(X/Zs) / (2*pi));
            while(lo1 <0)
                lo1=lo1+0.5;
            end
            
            while(ls1 <0)
                ls1=ls1+0.5;
            end
            lo1
            ls1
        end
        
        if ( t2 >= 0 )
            d2=vpa(atan(t2)/(2*pi),4)

            R= (GL*(1+t2^2))/(GL^2+(BL+Y0*t2)^2);
            X= ((GL^2)*t2 - (Y0-BL*t2)*(BL+Y0*t2))/(Y0*(GL^2 + (BL+Y0*t2)^2));
            lo2 = ( atan(Zs/X) / (2*pi));
            ls2 = (-atan(X/Zs) / (2*pi));
            
            while(lo2 <0)
                lo2=lo2+0.5;
            end
            
            while(ls2 <0)
                ls2=ls2+0.5;
            end
            lo2
            ls2
        else
            d2=vpa((pi+atan(t2))/(2*pi),4)       

            R= (GL*(1+t2^2))/(GL^2+(BL+Y0*t2)^2);
            X= ((GL^2)*t2 - (Y0-BL*t2)*(BL+Y0*t2))/(Y0*(GL^2 + (BL+Y0*t2)^2));
            lo2 = ( atan(Zs/X) / (2*pi));
            ls2 = (-atan(X/Zs) / (2*pi));
            while(lo2 <0)
                lo2=lo2+0.5;
            end
            
            while(ls2 <0)
                ls2=ls2+0.5;
            end
            lo2
            ls2
            
        end  
end






    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    


    