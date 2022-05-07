%Pharmacy Management System , Project#4 , Ali Mohamed Aly Gad Hashish , 1190223 ,  Ali.Hashish001@gmail.com
function Display_Table1(file_name)
%   Displays table 1 in the command window
fprintf('Drug ID  Price\n')
table=Load_Table(file_name);
[r,c]=size(table);
for i=1:r
    fprintf(' %-7.f %-8.2f\n',table(i,1),table(i,2))
end
end