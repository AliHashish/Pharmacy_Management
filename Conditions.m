%Pharmacy Management System , Project#4 , Ali Mohamed Aly Gad Hashish , 1190223 ,  Ali.Hashish001@gmail.com
function array=Conditions(array, row, column)
%   Makes sure that the dimensions of the entered array
%   match the desired dimensions.
[r,c]=size(array);
while r ~= row || c ~= column
    fprintf('Please re-enter array with %d rows and %d columns: ',row,column);
    array=input('');
    [r,c]=size(array);
end
end