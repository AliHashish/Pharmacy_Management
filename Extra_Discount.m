%Pharmacy Management System , Project#4 , Ali Mohamed Aly Gad Hashish , 1190223 ,  Ali.Hashish001@gmail.com
function extra_discount_table= Extra_Discount (table2,discount_table)
%   Computes the extra discount table
extra_discount_table(:,[1 2])=table2(:,[1,2]);                      %Takes the customer ID and total amount of previous orders
[r,c]=size(table2);
for i=1:r
    extra_discount_table(i,3)=sum(discount_table((find(table2(i,1)==discount_table(:,1))),4));    %calculates the price paid by each customer (i.e total amount of current order) after the initial discount
    if extra_discount_table(i,2)>=10000                             %Gives extra discounts based on previous orders
        previous_discount(i)=10;
    elseif extra_discount_table(i,2)>=3000
        previous_discount(i)=5;
    elseif extra_discount_table(i,2)>=1000
        previous_discount(i)=3;
    elseif extra_discount_table(i,2)>200
        previous_discount(i)=1;
    else
        previous_discount(i)=0;
    end
    if extra_discount_table(i,3)>=1000                              %Gives extra discounts based on current orders
        current_discount(i)=10;
    elseif extra_discount_table(i,3)>=500
        current_discount(i)=5;
    elseif extra_discount_table(i,3)>=250
        current_discount(i)=2;
    else
        current_discount(i)=0;
    end
end
extra_discount_table(:,4)=current_discount+previous_discount;                                   %Calculates the total extra discount
extra_discount_table(:,5)=(100-extra_discount_table(:,4))/100.*extra_discount_table(:,3);       %Calculates the final price for current orders after the extra discounts
end