program pesan_makanan;
uses crt;

var
  makanan, pesanan, pelanggan : integer;
  harga, total_harga, diskon, total_bayar : real;

begin
clrscr;
  writeln('Jenis makanan:');
  writeln('1. Nasi Goreng Rp20.000');
  writeln('2. Mie Goreng  Rp18.000');
  writeln('3. Ayam Geprek Rp25.000');
  writeln('4. Steak       Rp50.000');
  write('Pilih jenis makanan: ');
  readln(makanan);

  write('Masukkan jumlah pesanan: ');
  readln(pesanan);

  writeln('Status pelanggan:');
  writeln('1. Member');
  writeln('2. Non-member');
  write('Pilih status pelanggan: ');
  readln(pelanggan);

  case makanan of
    1: harga:=20000;
    2: harga:=18000;
    3: harga:=25000;
    4: harga:=50000;
  end;

  if pesanan <= 0 then
    writeln('Jumlah pesanan tidak valid')
  else if pesanan > 10 then
    writeln('Pesanan terlalu banyak')
  else

  begin
    total_harga:=harga*pesanan;
    if pelanggan=1 then
    begin
      if total_harga >= 100000 then
        diskon:= total_harga*15/100
      else if total_harga >= 50000 then
        diskon:= total_harga*10/100
      else
        diskon:= total_harga*5/100;
    end

    else
    begin
      if total_harga >= 100000 then
        diskon:= total_harga*5/100
      else
        diskon:= 0;
    end;

    total_bayar:=total_harga-diskon;

    writeln;
    writeln('Harga makanan : Rp',harga:0:0);
    writeln('Total harga   : Rp',total_harga:0:0);
    writeln('Diskon        : Rp',diskon:0:0);
    writeln('Total bayar   : Rp',total_bayar:0:0);
  end;

end.