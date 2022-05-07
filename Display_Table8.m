%Pharmacy Management System , Project#4 , Ali Mohamed Aly Gad Hashish , 1190223 ,  Ali.Hashish001@gmail.com
function Display_Table8(extra_discount_table)
%   Displays table 8 in the command window
fprintf('Customer ID  Total amount of previous orders  Total amount of current orders  Extra discount(%%)  Total amount of current orders after the extra discount\n')
[r,c]=size(extra_discount_table);
for i=1:r
    fprintf(' %-10.f  %-31.2f  %-30.2f  %-17.2f  %-7.2f\n',extra_discount_table(i,[1 2 3 4 5]))
end
end