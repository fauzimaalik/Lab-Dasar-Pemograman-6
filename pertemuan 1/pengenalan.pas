program test;

uses crt;


var 
    // string
    // nama_variabel : tipe variabel
    nama : string;
     // integer
    umur : integer;
    // char = huruf 
    jenis_kelamin : char;
    // real
    ip : real;

 // konstanta
const 
    pi : 3.14;
    gravitasi = 9.8;

begin
    clrscr;
    // writeln('hllo world!');

    writeln('Nama Mahasiswa : '); readln(nama);
    writeln('Umur Mahasiswa : '); readln(umur);
    writeln('Jenis Kelamin Mahasiswa : '); readln(jenis_kelamin);
    writeln('IP Mahasiswa : '); readln(ip);

    clrscr;
    writeln('Ini data yang anda masukkan');
    writeln('Nama Mahasiswa yang anda input : ', nama);
    writeln('Umur mahasiswa yang anda input : ', umur);
    writeln('Jenis kelamin mahasiswa yang anda input : ', jenis_kelamin);
    writeln('Ip mahasiswa yang anda input : ', ip);
end.