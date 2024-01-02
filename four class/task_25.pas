{
    Напишите программу, которая ищет среди целых чисел, принадлежащих числовому отрезку [245 690; 245 756], простые числа.
    Выведите на экран все найденные простые числа в порядке возрастания, слева от каждого числа выведите его порядковый номер 
    в последовательности. Каждая пара чисел должна быть выведена в отдельной строке
    
}
program FindDivisors;
var
    startRange, endRange, num, i, order, count: longint;
begin
    startRange := 245690;
    endRange := 245756;
    order := 0;

    for i := startRange to endRange do
    begin
        order := order + 1;
        count := 0;

        for num := 1 to i do
        begin
            if (i mod num = 0) then
                count := count + 1;
        end;

        if count = 2 then
            writeln(order, ' ', i);
    end;
end.