% This function convert a single decimal value to two separate decimal
% values, so as to store in 2 16-bits registers.
% 1 input, 2 output, both in decimal.

function [reg_Hi,reg_Lo]=dec_to_regs2(Original)

    Original_Hex = dec2hex(Original,8); % Convert decimal input a into hex string with 8 digits

    reg_Hi_Hex = Original_Hex(1:4); % Hi register equals to the first 4 digit of Original_Hex 
    reg_Hi = hex2dec(reg_Hi_Hex); % Convert hex value back to decimal for Hi reg 

    reg_Lo_Hex = Original_Hex(5:8); % Lo register equals to the last 4 digit of Original_Hex
    reg_Lo = hex2dec(reg_Lo_Hex); % Convert hex value back to decimal for Lo reg 

end