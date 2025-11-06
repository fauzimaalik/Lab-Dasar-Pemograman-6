uses crt;

var 

    nilai : array[1..4] of integer;
    total : integer;
    tugas, kuis, uts, uas : integer;
    rata_rata : real;

begin
    clrscr;

    writeln('Masukkan nilai tugas:');readln(tugas);
    writeln('masukkan Nilai kuis:');readln(kuis);
    writeln('masukkan Nilai UTS:');readln(uts);
    writeln('masukkan Nilai UAS:');readln(uas);

    total := tugas + kuis + uts + uas;

    writeln('Total nilai mahasiswa: ', total);
    writeln('Rata-rata nilai mahasiswa: ', total / 4:0:2);

    if nilai [1] >= 70 then
        writeln('keterangan: Lulus')
    else
        writeln('keterangan: Tidak Lulus');


end.