%Pharmacy Management System , Project#4 , Ali Mohamed Aly Gad Hashish , 1190223 ,  Ali.Hashish001@gmail.com
function sales_table = Sales (table1,table3)
%   Computes the sales table
sales_table(:,1)=table1(:,1);                                          %Takes the drug IDs
[r,c]=size(sales_table);
for i=1:r
    sales_table(i,2)=sum(table3(:,2)==sales_table(i,1));               %Counts how many times a certain drug was ordered
end
sales_table(:,3)=sales_table(:,2).*table1(:,2);                        %Calculates the total price without any discount
end