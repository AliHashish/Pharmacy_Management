%Pharmacy Management System , Project#4 , Ali Mohamed Aly Gad Hashish , 1190223 ,  Ali.Hashish001@gmail.com
function Save_Table(table,file_name)
%   Enters numerical data of table to excel starting from second row
xlswrite(file_name,table,'Sheet1','A2');
end