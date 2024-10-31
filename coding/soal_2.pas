program soal_uts_nomor2;
uses crt;
var
    n, i, angka, total: integer;
    rataRata: real;
begin
    clrscr;
    write('Masukkan jumlah angka (N): ');
    readln(n);  
    total := 0;
    for i := 1 to n do
    begin
        write('Angka ke-', i, ': ');
        readln(angka);
        total := total + angka;
    end;
    rataRata := total / n;
    writeln('Jumlah Total: ', total);
    writeln('Rata-rata: ', rataRata:0:1);
    readln;
end.
