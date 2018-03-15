% reference:    https://en.wikipedia.org/wiki/Ziegler%E2%80%93Nichols_method
%               http://www.cc.ntut.edu.tw/~jcjeng/Chap6_PID%20Tuning.pdf
Ku=65;%96
Tu=318;%155

P=George_PID_Test(0.5*Ku,0,0);
PI=George_PID_Test(0.45*Ku,1.2/Tu,0);
PD=George_PID_Test(0.8*Ku,0,Tu/8);
PID=George_PID_Test(0.6*Ku,2/Tu,Tu/8);
PIR=George_PID_Test(0.7*Ku,2.5/Tu,3*Tu/20);
OS=George_PID_Test(0.33*Ku,2/Tu,Tu/3);
NOS=George_PID_Test(0.2*Ku,2/Tu,Tu/3);