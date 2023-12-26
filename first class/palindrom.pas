program Palindrome;
var
    inputString: string;
    i, len: integer;
    isPalindrome: boolean;
begin
    write('Введите строку: ');
    readln(inputString);
    inputString := LowerCase(inputString);
    len := Length(inputString);

    isPalindrome := true;

    for i := 1 to len div 2 do
    begin
        if inputString[i] <> inputString[len - i + 1] then
            isPalindrome := false;
    end;

    write(inputString, ' ' , isPalindrome);
end.

//"first_var" //snake case
//"FirstVar" //pascal case
//"firstVar" //camel case