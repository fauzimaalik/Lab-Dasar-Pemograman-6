uses crt;

{--------------------------------------------}
{ 1️⃣ TYPE DEFINITION                          }
{--------------------------------------------}
type 
    TAlamat = record
        jalan: string[50];
        kota: string[50];
        kode_pos: integer;
    end; 

    TMahasiswa = record
        nama: string[50];
        umur: integer;
        ipk: real;
        alamat: TAlamat;   // Nested Record
    end;


{--------------------------------------------}
{ 2️⃣ VARIABLE DECLARATION                     }
{--------------------------------------------}

var 
  mhs : TMahasiswa; 
  dataMhs : array[1..100] of TMahasiswa; // arrayrecord 
  n, i : integer; 


{============================================================}
{                    SECTION 1                               }
{      IMPLEMENTASI SIMPLE RECORD + NESTED RECORD            }
{============================================================}

begin
  clrscr;

  { INPUT DATA }
//   writeln('nama : '); readln(mhs.nama);
//   writeln('umur : '); readln(mhs.umur);
//   writeln('ipk : '); readln(mhs.ipk);
 
//   writeln('_space untuk alamat_');
//   writeln('jalan : '); readln(mhs.alamat.jalan);
//   writeln('kota : '); readln(mhs.alamat.kota);
//   writeln('kode pos : '); readln(mhs.alamat.kode_pos);

//   { OUTPUT } 
//   writeln('hasil output'); 
//   writeln('nama : ', mhs.nama); 
//   writeln('umur : ', mhs.umur); 
//   writeln('ipk : ', mhs.ipk:0:2); 
//   writeln('alamat : ', mhs.alamat.jalan, ', ', mhs.alamat.
//   kota, ', ', mhs.alamat.kode_pos); 

{============================================================}

{============================================================}
{                    SECTION 2                               }
{       IMPLEMENTASI RECORD + WITH ... DO                    }
{============================================================}

  { WITH DO untuk nested record }

  { OUTPUT }
//   with mhs do
//   begin
//     writeln('nama : ', nama); 
//     writeln('umur : ', umur); 
//     writeln('ipk : ', ipk); 
//   end;

//   with mhs.alamat do
//     begin
//         writeln('alamat : ', jalan, ', ', kota, ', ', kode_pos); 
//     end;

{============================================================}
{                    SECTION 3                               }
{                ARRAY OF RECORD                             }
{============================================================}

  { INPUT ARRAY }
  writeln('Masukkan jumlah mahasiswa: '); readln(n);

    for i := 1 to n do
    begin
        writeln('mahsiswa ke-', i);
        writeln('nama : '); readln(dataMhs[i].nama);
        writeln('umur : '); readln(dataMhs[i].umur);
        writeln('ipk : '); readln(dataMhs[i].ipk);

        writeln('alamat');
        writeln('jalan : '); readln(dataMhs[i].alamat.jalan);
        writeln('kota : '); readln(dataMhs[i].alamat.kota);
        writeln('kode pos : '); readln(dataMhs[i].alamat.kode_pos);

        writeln;
        writeln('daftar mahasiswa ');
    end;

  { OUTPUT ARRAY }

    for i := 1 to n do
    begin
        writeln('mahsiswa ke-', i);

        with dataMhs[i] do
        begin
            writeln('nama : ', nama); 
            writeln('umur : ', umur); 
            writeln('ipk : ', ipk:0:2); 
            writeln('alamat : ', alamat.jalan, ', ', alamat.kota, ', ', alamat.kode_pos); 
        end;

        with dataMhs[i].alamat do
        begin
        write('jalan : ', jalan);
        write(', kota : ', kota);
        writeln(', kode pos : ', kode_pos);
        end;
    end;
end.