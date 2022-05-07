%Pharmacy Management System , Project#4 , Ali Mohamed Aly Gad Hashish , 1190223 ,  Ali.Hashish001@gmail.com
clear,clc
table1=[] ;  table2=[] ;  table3=[] ;                          %Declaring the variables, to avoid any potential error
action= 1.5;                                                   %To ensure the program enters the while loop
while action~=10
    Actions                                                    %Displays the available actions
    action=input('Enter an integer for the action between 1 and 10: ');
    clc                                                        %Clears the command window before performing any action
    if action==1
        fprintf('You chose action 1: Add a row to table 1\n')
        row=input('Enter Drug ID and price: ');
        table1=Add_Row1(row,table1);
        fprintf('\n')
    elseif action==2
        fprintf('You chose action 2: Add a row to table 2\n')
        row=input('Enter Customer ID, Total amount of all previous orders, and Total drugs number of all previous orders: ');
        table2=Add_Row_2and3(row,table2);
        fprintf('\n')
    elseif action==3
        fprintf('You chose action 3: Add a row to table 3\n')
        row=input('Customer ID, Drug ID, and discount (%): ');
        table3=Add_Row_2and3(row,table3);
        fprintf('\n')
    elseif action==4
        fprintf('You chose action 4: Load a table\n')
        table_number=input('Choose which table to load. 1, 2 or 3: ');
        table_number=Check_Table_Number(table_number);                        %Ensures it is a valid number
        file_name=input('Enter file name: ','s');                             %Takes the name of the file to be loaded
        if table_number==1
            table1=Load_Table(file_name);
        elseif table_number==2
            table2=Load_Table(file_name);
        else                                                                  %No need to use elseif, as we have already checked that the number entered is either 1, 2 or 3
            table3=Load_Table(file_name);
        end
        fprintf('\n')
    elseif action==5
        fprintf('You chose action 5: Save a table\n')
        table_number=input('Choose which table to save. 1, 2 or 3: ');
        table_number=Check_Table_Number(table_number);                        %Ensures it is a valid number
        file_name=input('Enter file name: ','s');                             %Takes the name of the file to be saved
        if table_number==1
            xlswrite(file_name,{'Drug ID','Price'})
            Save_Table(table1,file_name);
        elseif table_number==2
            xlswrite(file_name,{'Customer ID','Previous Order Amount','Total Drugs'})
            Save_Table(table2,file_name);
        else                                                                  %No need to use elseif, as we have already checked that the number entered is either 1, 2 or 3
            xlswrite(file_name,{'Customer ID','Drug ID','Discount'})
            Save_Table(table3,file_name);
        end
        fprintf('\n')
    elseif action==6
        fprintf('You chose action 6: Display a table\n')
        table_number=input('Choose which table to display. 1, 2 or 3: ');
        table_number=Check_Table_Number(table_number);                        %Ensures it is a valid number
        file_name=input('Enter file name: ','s');
        if table_number==1
            Display_Table1(file_name);
        elseif table_number==2
            Display_Table2(file_name);
        else                                                                  %No need to use elseif, as we have already checked that the number entered is either 1, 2 or 3
            Display_Table3(file_name);
        end
        pause=input('\nPress Enter to continue. ','s');                       %Gives the user enough time to check the table, before clearing the command window again
        clc
    elseif action==7
        fprintf('You chose action 7: Display discount table\n')
        discount_table=Discount(table1,table3);                               %Computes the discount table
        fprintf('Choose 1 to display on screen or 2 to write on an excel file: ')
        display_type=input('');
        display_type=Check_Display_Number(display_type);                      %Ensures it is a valid number
        if display_type==1                                                    %Displays table in command window
            fprintf('\n')
            Display_Table7(discount_table)
            pause=input('\nPress Enter to continue. ','s');                   %Gives the user enough time to check the table, before clearing the command window again
        else                                                                  %No need to use elseif, as we have already checked that the number entered is either 1 or 2
            file_name=input('Enter file name: ','s');
            xlswrite(file_name,{'Customer ID','Drug ID','Drug Price','Drug Price After Discount'})
            Save_Table(discount_table,file_name)                              %Displays table in an excel file
        end
        clc
    elseif action==8
        fprintf('You chose action 8: Display extra discount table\n')
        discount_table=Discount(table1,table3);                               %Computes the discount table in case the user skipped step 7
        extra_discount_table=Extra_Discount(table2,discount_table);           %Computes the extra discount table
        fprintf('Choose 1 to display on screen or 2 to write on an excel file: ')
        display_type=input('');
        display_type=Check_Display_Number(display_type);                      %Ensures it is a valid number
        if display_type==1                                                    %Displays table in command window
            fprintf('\n')
            Display_Table8(extra_discount_table)
            pause=input('\nPress Enter to continue. ','s');                   %Gives the user enough time to check the table, before clearing the command window again
        else                                                                  %No need to use elseif, as we have already checked that the number entered is either 1 or 2
            file_name=input('Enter file name: ','s');                         %Displays table in an excel file
            xlswrite(file_name,{'Customer ID','Total Amount of All Previous Orders','Total Amount of All Current Orders','Extra Discount','Total Amount of All Current Orders After The Extra Discount'})
            Save_Table(extra_discount_table,file_name)
        end
        clc
    elseif action==9
        fprintf('You chose action 9: Display sales table\n')
        sales_table=Sales(table1,table3);                                     %Computes the sales table
        fprintf('Choose 1 to display on screen or 2 to write on an excel file: ')
        display_type=input('');
        display_type=Check_Display_Number(display_type);                      %Ensures it is a valid number
        if display_type==1                                                    %Displays table in command window
            fprintf('\n')
            Display_Table9(sales_table)
            pause=input('\nPress Enter to continue. ','s');                   %Gives the user enough time to check the table, before clearing the command window again
        else                                                                  %No need to use elseif, as we have already checked that the number entered is either 1 or 2
            file_name=input('Enter file name: ','s');                         %Displays table in an excel file
            xlswrite(file_name,{'Drug ID','Total Number of Ordered Drugs','Total Price'})
            Save_Table(sales_table,file_name)
        end
        clc
    elseif action~=10                                                         %Shows an error message in case the user inputs an invalid number
        pause=input('You entered an invalid number. Press Enter to retry. ','s');        %Gives the user enough time to check the table, before clearing the command window again
        clc
    end
end
fprintf('Exiting the program.\n')                                           %Shows a simple short good bye message