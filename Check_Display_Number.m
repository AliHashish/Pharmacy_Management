%Pharmacy Management System , Project#4 , Ali Mohamed Aly Gad Hashish , 1190223 ,  Ali.Hashish001@gmail.com
function display_number = Check_Display_Number(display_number)
%   Ensures that the number is either 1 or 2
while display_number<1 || display_number>2 || display_number~=fix(display_number)
    display_number=input('Only enter the integer 1 or 2: ');
end
end