%Pharmacy Management System , Project#4 , Ali Mohamed Aly Gad Hashish , 1190223 ,  Ali.Hashish001@gmail.com
function Display_Table7 (discount_table)
%   Displays table 7 in the command window
fprintf('Customer ID  Drug ID  Drug price  Drug price after discount\n')
[r,c]=size(discount_table);
for i=1:r
    fprintf(' %-10.f  %-6.f   %-11.f %-5.f\n',discount_table(i,1),discount_table(i,2),discount_table(i,3),discount_table(i,4))
end
end