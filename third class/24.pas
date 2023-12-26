{
    Текстовый файл состоит не более чем из 10^6 символов X, Y и Z. 
    Определите максимальное количество идущих подряд символов, среди которых каждые два соседних различны.

    Для выполнения этого задания следует написать программу. 
    Ниже приведён файл, который необходимо обработать с помощью данного алгоритма.
}
program MaxConsecutiveDifferent;
var
    inputString: string;
    inputFile: TextFile;
    i, currentSeq, maxSeq: integer; 

begin
    Assign(inputFile, '24_demo.txt');
    Reset(inputFile);

    readln(inputFile, inputString);

    close(inputFile);

    currentSeq := 0;
    maxSeq := 0;

    WriteLn(inputString);

    for i:=1 to length(inputString) - 1 do
    begin
        if inputString[i] <> inputString[i + 1] then
        begin
            currentSeq := currentSeq + 1;
            if currentSeq > maxSeq then
                maxSeq := currentSeq;
        end
        else
        begin
            currentSeq := 1;
        end;
        
    end;

    WriteLn(maxSeq);

end.