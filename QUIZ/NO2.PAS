uses crt, math;

{ Function untuk menentukan apakah suatu bilangan prima atau tidak }
function IsPrime(n: integer): boolean;
var
  i, batas: integer;
begin
  // TODO 1: Handle bilangan kurang dari 2
  // Bilangan < 2 bukan bilangan prima
  if n < 2 then
  begin
    IsPrime := false;
    exit; // keluar dari function
  end;

  // TODO 2: Handle bilangan 2
  // Bilangan 2 adalah bilangan prima
  if n = 2 then
  begin
    IsPrime := true;
    exit;
  end;

  // TODO 3: Handle bilangan genap
  // Selain 2, bilangan genap tidak prima
  if n mod 2 = 0 then
  begin
    IsPrime := false;
    exit;
  end;

  // TODO 4: Cek faktor ganjil sampai akar kuadrat n
  // Menghitung batas pemeriksaan hanya sampai akar dari n (optimasi)
  batas := trunc(sqrt(n)); // membuat batasan cek sampai akar kuadrat

  // Loop dimulai dari 3 dan diskip 2 angkanya (cek hanya bilangan ganjil)
  for i := 3 to batas do
  begin
    if (i mod 2 <> 0) and (n mod i = 0) then
    begin
      // Jika ditemukan pembagi, berarti bukan prima
      IsPrime := false;
      exit;
    end;
  end;

  // TODO 5: Return true jika lolos semua pengecekan
  IsPrime := true;
end;

{ Program Utama }
var
  angka: integer;   // variabel untuk menyimpan input user
  jawab: char;      // untuk kontrol perulangan
begin
  clrscr;           // membersihkan layar

  repeat
    writeln;
    
    // minta user masukkan angka
    write('Masukkan sebuah angka: ');
    readln(angka);

    // Memanggil function IsPrime dan menampilkan hasilnya
    if IsPrime(angka) then
      writeln(angka, ' adalah bilangan prima.')
    else
      writeln(angka, ' bukan bilangan prima.');

    until (jawab = 't') or (jawab = 'T');  
    // Perulangan berhenti jika user mengetik 't'

end.