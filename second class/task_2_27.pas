{
  В первой строке подаются два натуральных числа N  — количество натуральных чисел в 
  последовательности и K  — минимальное расстояние, допустимое между любыми двумя элементами.
  Требуется найти минимальное значение произведения тройки элементов так, что между любыми 
  элементами тройки расстояние между двумя элементами не менее K (т. е. разность их индексов по 
  модулю больше или равна K).
        Входные данные.
            Файл А
            Файл В
}

program MinProduct;

var
    N, K, i, j, l, minX: Integer;
    arrA: array of Integer;
    inputFile: TextFile;

begin
    AssignFile(inputFile, '27A.txt');
    Reset(inputFile);

    ReadLn(inputFile, N, K);
    SetLength(arrA, N);
    for i := 0 to N - 1 do
        Read(inputFile, arrA[i]);

    CloseFile(inputFile);

    minX := Integer.MaxValue;
    for i:=0 to N-3 do
      for j:=i+K to N - 2 do
        for l:=j+K to N - 1 do
          minX := Min(minX, arrA[i] * arrA[j] * arrA[l]);
   WriteLn('Min:', minX);

    
end.

{
1 2 3 4 5 6 8 9 

N-3   N-2  N-1
0     5    34

}