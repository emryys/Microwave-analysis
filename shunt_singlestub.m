
prompt = 'What is Z0 ';
Z0 = input(prompt);
prompt = 'What is stub charecteristic impeadance? ';
Zs=input(prompt);
prompt = 'What is ZL ';
ZL=input(prompt);

RL=real(ZL);
XL=imag(ZL);
syms lamda;
Y1=1/Zs;

if ( RL == Z0)
    t = -XL/(2*Z0);
    if ( t >= 0 )
            d=vpa(atan(t)/(2*pi),4)
            G= (RL*(1+t^2))/(RL^2+(XL+Z0*t)^2);
            B= ((RL^2)*t - (Z0-XL*t)*(XL+Z0*t))/ (Z0*(RL^2 + (XL+Z0*t)^2));
            lo = ( -atan(B/Y1) / (2*pi));
            ls = (atan(Y1/B) / (2*pi));
                        
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
           G= (RL*(1+t^2))/(RL^2+(XL+Z0*t)^2);
           B= ((RL^2)*t - (Z0-XL*t)*(XL+Z0*t))/ (Z0*(RL^2 + (XL+Z0*t)^2));
            lo = ( -atan(B/Y1) / (2*pi));
            ls = (atan(Y1/B) / (2*pi));
                        
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
     t1= (XL + sqrt(RL*((Z0-RL)^2 +XL^2) / Z0)) / (RL-Z0);
     t2= (XL - sqrt(RL*((Z0-RL)^2 +XL^2) / Z0)) / (RL-Z0);
        if ( t1 >= 0 )
            d1=vpa(atan(t1)/(2*pi),4)
            G= (RL*(1+t1^2))/(RL^2+(XL+Z0*t1)^2);
            B= ((RL^2)*t1 - (Z0-XL*t1)*(XL+Z0*t1))/ (Z0*(RL^2 + (XL+Z0*t1)^2));
            
            lo1 = ( -atan(B/Y1) / (2*pi));
            ls1 = (atan(Y1/B) / (2*pi));
                        
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
            G= (RL*(1+t1^2))/(RL^2+(XL+Z0*t1)^2);
            B= ((RL^2)*t1 - (Z0-XL*t1)*(XL+Z0*t1))/ (Z0*(RL^2 + (XL+Z0*t1)^2));
            
            
            lo1 = ( -atan(B/Y1) / (2*pi));
            ls1 = (atan(Y1/B) / (2*pi));
            
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
            G= (RL*(1+t2^2))/(RL^2+(XL+Z0*t2)^2);
            B= ((RL^2)*t2 - (Z0-XL*t2)*(XL+Z0*t2))/ (Z0*(RL^2 + (XL+Z0*t2)^2));
            
            lo2 = ( -atan(B/Y1) / (2*pi));
            ls2 = (atan(Y1/B) / (2*pi));
            
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
            G= (RL*(1+t2^2))/(RL^2+(XL+Z0*t2)^2);
            B= ((RL^2)*t2 - (Z0-XL*t2)*(XL+Z0*t2))/ (Z0*(RL^2 + (XL+Z0*t2)^2));
            
            lo2 = ( -atan(B/Y1) / (2*pi));
            ls2 = (atan(Y1/B) / (2*pi));
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






    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    


    