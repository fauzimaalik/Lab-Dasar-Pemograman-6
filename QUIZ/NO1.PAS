program HitungLuasSegiEmpat; 

{ Procedure untuk mencetak luas segi empat (persegi panjang) }
procedure CetakLuasSegiEmpat(panjang, lebar: integer);
{ Mendefinisikan procedure bernama CetakLuasSegiEmpat
  dengan dua parameter bertipe integer: panjang dan lebar }
var
  luas: longint;
  { Variabel lokal 'luas' untuk menyimpan hasil
    longint dipilih agar mampu menampung hasil perkalian besar }
begin
  luas := panjang * lebar;
  { Menghitung luas: panjang dikali lebar (gunakan ':=' untuk penugasan) }

  writeln('Luas segi empat = ', luas);
  { Menampilkan hasil ke layar }
end;

{ Bagian utama program }
var
  p, l: integer;
  { Variabel untuk menyimpan input panjang (p) dan lebar (l) }

begin

  write('Masukkan panjang: ');
  readln(p);
  { Membaca nilai panjang dari pengguna }

  write('Masukkan lebar: ');
  readln(l);
  { Membaca nilai lebar dari pengguna }

  { Panggil procedure untuk menghitung dan menampilkan luas }
  CetakLuasSegiEmpat(p, l);
  
end.