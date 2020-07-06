# Microwave-analysis
Matching Networks and Stub Tuning

You can find the required transmission line length and stub length by only inputing load impedance
and charecteristic impedance of the transmission line. 

Stubs are realized both open circuit and short circuit.

Note : All numerical values is presented in terms of lamda of the transmission line
Example :

What is Z0 50   %For lossles case it is real
What is stub charecteristic impeadance? 75 %if the charecteristic impedance of the stub is different
What is ZL 100+80j %impedance of the load (doesn't need to be complex)

d1 = %first solution or second solution it is arbitrary
 
    0.2134 %length from load to stub
 
lo1 =  %length from open circuit towards generator for 1 solution

    0.3238

ls1 = %length from short circuit towards generator for 1 solution

    0.0738
 
d2 = %first solution or second solution it is arbitrary
 
    0.3697
 
lo2 = %length from open circuit towards generator for 2 solution

    0.1762

ls2 = %length from short circuit towards generator for 2 solution

    0.4262

NOTE : This is only to ease the calculations. Not practical use can be found.(For example : single frequency)
