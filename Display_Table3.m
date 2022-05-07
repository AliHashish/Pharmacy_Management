%Pharmacy Management System , Project#4 , Ali Mohamed Aly Gad Hashish , 1190223 ,  Ali.Hashish001@gmail.com
function Display_Table3(file_name)
%   Displays table 3 in the command window
fprintf('Customer ID  Drug ID   Discount\n')
table=Load_Table(file_name);
[r,c]=size(table);
for i=1:r
    fprintf(' %-10.f  %-7.f   %-8.1f\n',table(i,1),table(i,2),table(i,3))
end
end