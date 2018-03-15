% This function convert two decimal values stored separately in 2 16-bit 
% registers to a single decimal value
% 2 input, 1 output, both in decimal.

function Decimal_Value=regs2_to_dec(reg_Hi,reg_Lo)
    reg_Hi_Hex = dec2hex(reg_Hi); % Convert the Hi register input into Hex value
    reg_Hi_Hex = pad(reg_Hi_Hex,4,'left','0'); % Pad zeros in front of Hex value to form 4 digit

    reg_Lo_Hex = dec2hex(reg_Lo); % Convert the Lo register input into Hex value
    reg_Lo_Hex = pad(reg_Lo_Hex,4,'left','0'); % Pad zeros in front of Hex value to form 4 digit

    % Combine reg_Hi_Hex, reg_Lo_Hex together to form a single Hex value
    Decimal_Value_Hex = [reg_Hi_Hex,reg_Lo_Hex];

    % Convert the final Hex value to decimal
    Decimal_Value = hex2dec(Decimal_Value_Hex);
end