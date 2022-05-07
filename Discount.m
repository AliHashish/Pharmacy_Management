%Pharmacy Management System , Project#4 , Ali Mohamed Aly Gad Hashish , 1190223 ,  Ali.Hashish001@gmail.com
function discount_table = Discount (table1,table3)
%   Computes the discount table
discount_table(:,[1 2])=table3(:,[1 2]);       %Takes the customer and drug IDs
[r,c]=size(table3);
for i=1:r
    discount_table(i,3)=table1(find(discount_table(i,2)==table1(:,1)),2);      %Takes the price of each drug row by row
end
discount_table(:,4)=((100-table3(:,3))/100).*discount_table(:,3);              %Calculates the price after discount
end