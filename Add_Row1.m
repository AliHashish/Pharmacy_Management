%Pharmacy Management System , Project#4 , Ali Mohamed Aly Gad Hashish , 1190223 ,  Ali.Hashish001@gmail.com
function table1 = Add_Row1 (row,table1)
%   Adds a row to table 1
row=Conditions(row,1,2);                   %Ensure it has exactly1 row and 2 columns
table1(end+1,:)=row;
end