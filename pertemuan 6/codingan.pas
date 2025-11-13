uses crt;

{--------------------------------------------}
{ 1️⃣ Procedure Sederhana: Menampilkan Pesan  }
{--------------------------------------------}
procedure sapa_user;
begin
   writeln('Selamat datang di live coding pertemuan 6');
end;

{----------------------------------------------------}
{ 2️⃣ Function dengan Parameter Array: Hitung Rata-rata }
{----------------------------------------------------}
function rata_rata(n : integer; data : array of integer): real;

var
   i, total : integer;
begin
   total := 0;
   for i := 0 to n - 1 do 
    //0 = 0 + 1; total = 1
    //0 = 1 + 2; total = 3
    //0 = 3 + 3; total = 6
      total := total + data[i];
    rata_rata := total / n;
    //rata_rata := 6 / 3;
    //rata_rata := 2;
end;

{---------------------------------------------}
{ 3️⃣ Function Rekursif: faktorial dari n!     }
{---------------------------------------------}
function faktorial(n : integer): longint;
begin
  if n = 1 then
    faktorial := 1
  else
    faktorial := n * faktorial(n - 1);
    {
    faktorial = 5 * faktorial(4); n = 4
    faktorial = 4 * faktorial(3); n = 3
    faktorial = 3 * faktorial(2); n = 2
    faktorial =  2 * faktorial(1); n = 1
    faktorial = 2 * 1;

    faktorial = 5 * 4 * 3 * 2 * 1;
    }
end;

{---------------------------------------------}
{               PROGRAM UTAMA                 }
{---------------------------------------------}
var
   bil : array[1..5] of integer;
   i, n, nilai : integer;

// MAIN PROGRAM
begin
   clrscr;
   // shift + alt down
//    sapa_user;
//    sapa_user;
//    sapa_user;
//   sapa_user;

    // write('masukkan jumlah angka : '); readln(n);

    // for i := 1 to n do 
    //     begin
    //         write('data ke-', i, ': ');
    //     end;
    
    // writeln('rata-rata (pakai function) : ', rata_rata(n, bil):0:2);
    //n = 3
    //bil = [1, 2, 3]


    write('masukkan angka faktorial : '); readln(nilai);
    writeln(faktorial(nilai));

end.