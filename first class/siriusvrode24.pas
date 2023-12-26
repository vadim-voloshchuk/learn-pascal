program SumBetweenZeros;
var
    arr: array of integer;
    sum, firstZero, secondZero, num, i, N: integer;
begin
    firstZero := -1;
    secondZero := -1;
    sum := 0;

    write('Input N:' );
    readln(N);
    SetLength(arr, N);

    for i := 1 to N do
    begin
        write('Input num:' );
        readln(num);
        arr[i] := num;
    end;

    for i := N downto 1 do
    begin
        if arr[i] = 0 then
            begin
            if (secondZero = -1) or (firstZero = -1) then
                begin
                if secondZero = -1 then
                    secondZero := i
                else
                    firstZero := i
                end;
            end;
    end;

    for i := firstZero to secondZero do
        sum := sum + arr[i];
    
    writeln('Sum: ', sum);

end.