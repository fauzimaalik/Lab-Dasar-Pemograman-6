uses crt;

var 
     nama: array[1..5] of string;
     i, j: integer;
     matrix : array[1..2, 1..3] of integer;

    kata1, kata2 : string;
    kata : string;

begin 
    // clrscr;
    // //array 1 dimensi

    //  nama[1]:= 'edriic';
    //  nama[2]:= 'muzayyan';
    //  nama[3]:= 'raduola';
    //  nama[4]:= 'risky';
    //  nama[5]:= 'dimas';

    // // //pakai perulangan untuk output semua array
    // writeln('Daftar Nama mahasiswa:');
    // for i:= 1 to 5 do
    //     writeln('nama ke-', i, ' : ', nama[i]);

    //array 2 dimensi
    //alt + shift + arrow bawah

//     matrix[1,1]:= 2;
//     matrix[1,2]:= 6;
//     matrix[1,3]:= 8;
//     matrix[2,1]:= 9;
//     matrix[2,2]:= 0;
//     matrix[2,3]:= 1;

// begin
//     for i := 1 to 2 do
//     begin
//         for j := 1 to 3 do
//         begin
//             write(matrix[i,j]);
//         end;
//     end;

    //string sebagai array
    // kata1 := 'hello';
    // kata2 := 'world';
    // kata := kata1 + ' ' + kata2;

    // writeln('gabungan string menjadi : ', kata);

    //acces string by array
    // kata := 'Laptop';
    // writeln(kata);

    // writeln('karakter pertama : ', kata[1]);
    // writeln('karakter kelima : ', kata[5]);
    // writeln('semua karakter di output kan : ');

    // //looping untuk menampilkan semua karakter pada string
    // for i := 1 to length(kata) do
    //     writeln('karakter ke-', i, ' : ', kata[i]);
end.
