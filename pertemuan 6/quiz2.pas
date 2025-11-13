uses crt, math;

{ Function untuk menentukan apakah suatu bilangan prima atau tidak }
function IsPrime(n: integer): boolean;
var
  i, batas: integer;
begin
  // TODO 1: Handle bilangan kurang dari 2
  
  // TODO 2: Handle bilangan 2
  
  // TODO 3: Handle bilangan genap
  
  // TODO 4: Cek faktor ganjil sampai akar kuadrat n
  batas := trunc(sqrt(n)); // membuat batasan cek sampai akar kuadrat berapa
  
  // TODO 5: Return true jika lolos semua pengecekan
  IsPrime := true;
end;

{ Program Utama }
var


begin
  clrscr;
  
  repeat
    writeln;
    // minta user masukkan
    
    // Memanggil function IsPrime
end.