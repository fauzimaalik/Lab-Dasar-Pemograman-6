uses crt;

function LuasPersegiPanjang(panjang, lebar: real): real;
begin
  LuasPersegiPanjang := panjang * lebar;
end;

var
  pilihan: integer;
  panjang, lebar: real;
begin
  clrscr;
  writeln('program mengitung luas persegi panjang');
  writeln('1.Persegi Panjang');
  write('Pilih bangun datar 1: ');
  readln(pilihan);
  
  case pilihan of
       
    1: begin
         write('Masukkan panjang persegi panjang: ');
         readln(panjang);
         write('Masukkan lebar persegi panjang: ');
         readln(lebar);
         writeln('Luas Persegi Panjang = ', LuasPersegiPanjang(panjang, lebar):0:2);
       end;
       
    else
      writeln('Pilihan tidak valid!');
  end;
  
  readln;
end.