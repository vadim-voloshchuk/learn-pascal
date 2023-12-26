{
    Текстовый файл состоит не более чем из 10^6 символов X, Y и Z. 
    Определите максимальную длину цепочки вида XYZXYZXYZ... 
    (составленной из фрагментов XYZ, последний фрагмент может быть неполным).

    // Реализовать внутри цикла!!! //

    Для выполнения этого задания следует написать программу. 
    Ниже приведён файл, который необходимо обработать с помощью данного алгоритма.
}
program MaxConsecutiveDifferent;
var
    inputString: string;
    inputFile: TextFile;
    i, currentSeq, maxSeq, maxIndex: integer; 

begin
    Assign(inputFile, '24_demo.txt');
    Reset(inputFile);

    readln(inputFile, inputString);

    close(inputFile);

    currentSeq := 0;
    maxSeq := 1;
    i := 1;

    WriteLn(inputString);

    while i <= length(inputString) - 2 do
    begin
        if (inputString[i] = 'X') and (inputString[i + 1] = 'Y') and (inputString[i + 2] = 'Z') then
        begin
            currentSeq := currentSeq + 3;
            if currentSeq > maxSeq then
                maxSeq := currentSeq;
                maxIndex := i + 2;
            i := i + 3;
        end
        else
        begin
            currentSeq := 0;
            i := i + 1;
        end;
        
    end;

    WriteLn(maxSeq);

end.