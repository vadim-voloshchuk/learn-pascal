program FirstProgramm;
var
    length, width: real;
    area: integer;
begin
    readln(length);
    readln(width);

    area := Round(length * width);

    writeln('Area', area);
end.