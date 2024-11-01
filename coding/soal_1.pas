program soal_uts_nomor1;
uses crt;
var
    namaAnggota, hari, produk1, produk2, produk3: string;
    harga1, harga2, harga3, totalHarga, totalDiskon, pembayaranAkhir, diskonHari, diskonMember, diskonJumlahProduk, totalDiskonPersen : real;
    jumlah1, jumlah2, jumlah3, jumlahProduk, poin: integer;
begin
    clrscr;
    writeln('===== Program Kasir Supermarket =====');
    write('Nama Anggota: '); readln(namaAnggota);
    write('Hari : '); readln(hari);
    writeln('Input Produk:');
    write('Nama Produk 1: '); readln(produk1);
    write('Harga Produk 1: Rp'); readln(harga1);
    write('Jumlah Produk 1: '); readln(jumlah1);
    write('Nama Produk 2: '); readln(produk2);
    write('Harga Produk 2: Rp'); readln(harga2);
    write('Jumlah Produk 2: '); readln(jumlah2);
    write('Nama Produk 3: '); readln(produk3);
    write('Harga Produk 3: Rp'); readln(harga3);
    write('Jumlah Produk 3: '); readln(jumlah3);

    totalHarga := (harga1 * jumlah1) + (harga2 * jumlah2) + (harga3 * jumlah3);
    diskonHari := 0.0;
    if (hari = 'Senin')  then
        diskonHari := 10
    else if (hari = 'Selasa') then
        diskonHari := 5
    else if (hari = 'Rabu') then
        diskonHari := 30
    else if (hari = 'Kamis') then
        diskonHari := 8;
    diskonMember := 10;

    jumlahProduk := jumlah1 + jumlah2 + jumlah3;
    if jumlahProduk >= 10 then
        diskonJumlahProduk := 5
    else
        diskonJumlahProduk := 0;
    totalDiskonPersen := diskonHari + diskonMember + diskonJumlahProduk;
    totalDiskon := (totalDiskonPersen / 100) * totalHarga;
    pembayaranAkhir := totalHarga - totalDiskon;
    poin := trunc(totalHarga / 50000);
    writeln;
    writeln('===== Struk Pembelian =====');
    writeln('Total Harga: Rp', totalHarga:0:0);
    writeln('Diskon: ', diskonHari:0:0, '% + ', diskonMember:0:0, '% + ', diskonJumlahProduk:0:0, '% = ', totalDiskonPersen:0:0, '%');
    writeln('Total Diskon: Rp', totalDiskon:0:0);
    writeln('Pembayaran Akhir: Rp', pembayaranAkhir:0:0);
    writeln('Poin: ', poin); 
end.
