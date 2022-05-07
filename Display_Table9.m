%Pharmacy Management System , Project#4 , Ali Mohamed Aly Gad Hashish , 1190223 ,  Ali.Hashish001@gmail.com
function Display_Table9(sales_table)
%   Displays table 9 in the command window
fprintf('Drug ID  Total number of ordered drugs  Total price\n')
[r,c]=size(sales_table);
for i=1:r
    fprintf(' %-6.f  %-29.f  %-7.2f\n',sales_table(i,:))
end
end