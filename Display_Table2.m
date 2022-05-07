%Pharmacy Management System , Project#4 , Ali Mohamed Aly Gad Hashish , 1190223 ,  Ali.Hashish001@gmail.com
function Display_Table2(file_name)
%   Displays table 2 in the command window
fprintf('Customer ID  Previous Order Amount  Total Drugs\n')
table=Load_Table(file_name);
[r,c]=size(table);
for i=1:r
    fprintf(' %-10.f  %-20.f   %-11.f\n',table(i,1),table(i,2),table(i,3))
end
end