uses crt;

var
    a, b, tambah, kurang, kali, modulo : integer;
    bagi : real;
    hasil : boolean;

begin
    clrscr;
    // writeln('hello world');
    a := 10;
    b := 3;

    // tambah := a + b;
    // kurang := a - b;
    // kali := a * b;
    // bagi := a / b;
    // modulo := a mod b;

    // writeln('hasil jumlah : ', tambah);
    // writeln('hasil kurang : ', kurang);
    // writeln('hasil kali : ', kali);
    // writeln('hasil bagi : ', bagi:0:2);
    // writeln('hasil mod : ', modulo);

    // writeln(a = b);
    // writeln(a <> b);
    // writeln(a < b);
    // writeln(a > b);
    // writeln(a <= b);
    // writeln(a >= b);

    // writeln(true and true);
    // writeln(true and false);
    // writeln(false and true);
    // writeln(false and false);

    // writeln(true and true);
    // writeln(true and false);
    // writeln(false and true);
    // writeln(false and false);
    
    // writeln(not true);
    // writeln(not false);

uses crt;
    var 
    p, l:integer;
    luaslapangan, kelilinglapangan: real;

    begin 
    clrscr;


    writeln('masukkan panjang lapangan :');
    readln(p);
    writeln('masukkan lebar lapanga :');
    readln(l);

    luaslapangan :=p * l;
    kelilinglapangan :=2 * (p + l);

    writeln('luas lapangan :', luaslapangan:0:2);
    writeln('kelilinglapangan :', kelilinglapangan:0:2);

    // readln; agar jendela tidak langsung tertutup

end.