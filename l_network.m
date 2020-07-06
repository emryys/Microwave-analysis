% L NETWORK

clc;
clearvars;
prompt = 'What is Z0 ';
Z0 = input(prompt);
prompt = 'What is ZL ';
ZL=input(prompt);
prompt = 'What is frequency ';
f=input(prompt);
Y0=1/Z0;
RL=real(ZL);
XL=imag(ZL);

if ( RL > Z0)
    fprintf("\n \n FIRST SOLUTION  \n ");
    B1=( XL + sqrt(RL/Z0) * sqrt( RL^2 + XL^2 -Z0*RL))/ (RL^2 + XL^2)
    X1= 1/B1 + XL*Z0/RL -Z0/(B1*RL)
    
    if ( B1 > 0 )
        Cb1 = B1*Y0 / (2*pi*f)
    else
        Lb1= -B1*Z0 / (2*pi*f)
    end 
    
    if ( X1 > 0 )
        Lx1= X1*Z0 / (2*pi*f)
    else
        Cx1 = -X1*Y0 / (2*pi*f) 
    end 
 
     fprintf("\n \n SECOND SOLUTION  \n ");
    B2=( XL - sqrt(RL/Z0) * sqrt( RL^2 + XL^2 -Z0*RL))/ (RL^2 + XL^2)
    X2= 1/B2 + XL*Z0/RL -Z0/(B1*RL)
    
    
    if ( B2 > 0 )
        Cb2 = B2*Y0 / (2*pi*f)
    else
        Lb2= -B2*Z0 / (2*pi*f)
    end 
    
    if ( X2 > 0 )
        Lx2= X2*Z0 / (2*pi*f)
    else
        Cx2 = -X2*Y0 / (2*pi*f) 
    end 
    
else
     fprintf("\n \n FIRST SOLUTION  \n ");
    B1= (sqrt((Z0-RL)/RL)/Z0)
    X1= sqrt(RL*(Z0-RL)) -XL
    
    
    if ( B1 > 0 )
        Cb1 = B1*Y0 / (2*pi*f)
    else
        Lb1= -B1*Z0 / (2*pi*f)
    end 
    
    if ( X1 > 0 )
        Lx1= X1*Z0 / (2*pi*f)
    else
        Cx1 = -X1*Y0 / (2*pi*f) 
    end 
    
    fprintf("\n \n SECOND SOLUTION  \n ");
    B2= (-sqrt((Z0-RL)/RL)/Z0)
    X2= sqrt(RL*(Z0-RL)) -XL
    
    if ( B2 > 0 )
        Cb2 = B2*Y0 / (2*pi*f)
    else
        Lb2= -B2*Z0 / (2*pi*f)
    end 
    
    if ( X2 > 0 )
        Lx2= X2*Z0 / (2*pi*f)
    else
        Cx2 =- X2*Y0 / (2*pi*f) 
    end 
    
end
     