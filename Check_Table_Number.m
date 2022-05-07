%Pharmacy Management System , Project#4 , Ali Mohamed Aly Gad Hashish , 1190223 ,  Ali.Hashish001@gmail.com
function table_number = Check_Table_Number(table_number)
%   Ensures that table number is either 1, 2 or 3
while table_number<1 || table_number>3 || table_number~=fix(table_number)
    table_number=input('Only enter the integer 1 or 2 or 3: ');
end
end