program soal_uts_nomor3;
uses crt;
var
    i, j, tinggi: integer;
begin
    clrscr;
    write('Tinggi segitiga: ');
    readln(tinggi);
    
    for i := 1 to tinggi do
    begin
        for j := 1 to i do
        begin
            if (j mod 2 = 1) then
                write('1')
            else
                write('0');
        end;
        writeln;
    end;
    readln;
end.
