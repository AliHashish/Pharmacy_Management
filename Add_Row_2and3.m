%Pharmacy Management System , Project#4 , Ali Mohamed Aly Gad Hashish , 1190223 ,  Ali.Hashish001@gmail.com
function table = Add_Row_2and3 (row,table)
%   Adds a row to table 2 or 3
row=Conditions(row,1,3);                   %Ensure it has exactly1 row and 3 columns
table(end+1,:)=row;
end