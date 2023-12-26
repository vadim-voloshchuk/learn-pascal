{
    Текстовый файл содержит строки различной длины. Общий объём файла не превышает 1 Мбайт. 
    Строки содержат только заглавные буквы латинского алфавита (ABC…Z).
    Определите количество строк, в которых буква E встречается чаще, чем буква A.
    
    Для выполнения этого задания следует написать программу. 
    Ниже приведён файл, который необходимо обработать с помощью данного алгоритма.
}

program CountStrings;
var
    inputFile: text;
    currentLine: string;
    i, eCount, aCount, lineCount: integer;
begin
    Assign(inputFile, 'inf_22_10_20_24.txt');
    Reset(inputFile);

    eCount := 0;
    aCount := 0;
    lineCount := 0;

    while not eof(inputFile) do
    begin
        readln(inputFile, currentLine);

        for i := 1 to length(currentLine) do
        begin
            if currentLine[i] = 'E' then
                eCount := eCount + 1
            else if currentLine[i] = 'A' then
                aCount := aCount + 1;
        end;

        if eCount > aCount then
            lineCount := lineCount + 1;

        eCount := 0;
        aCount := 0;

    end;
    
    WriteLn(lineCount);

end.