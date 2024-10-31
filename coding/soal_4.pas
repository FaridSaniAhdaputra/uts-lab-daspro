program soal_uts_nomor4;
uses crt;
var
    n, i, j: integer;
    prima: boolean;
begin
    clrscr;
    write('Masukkan nilai batas (n): '); readln(n);
    writeln('Bilangan prima antara 1 dan ', n, ' adalah: ');
    for i := 2 to n do
    begin
        prima := true; 
        for j := 2 to i - 1 do
        begin
            if (i mod j = 0) then
            begin
                prima := false; 
                break;
            end;
        end;
        if prima then
            write(i, ',');
    end;
        writeln;
    readln;
end.
