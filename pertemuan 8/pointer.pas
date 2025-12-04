uses crt, sysutils; 

var 
  angka : integer; 
  alamat_angka : ^integer; 

begin 
  clrscr; 
    angka := 10; 
    alamat_angka := @angka; 

    // writeln('isi variabel angka = ', angka); 
    // writeln('alamat variabel angka = ', PtrUInt(@angka)); 
    // writeln('isi pointer = ', PtrUInt(alamat_angka)); 
    // writeln('isi nilai yang diambil dari pointer = ', 
    // alamat_angka^); 

    alamat_angka^ := 20; 
    writeln('isi angka setelah diubah (variabel angka) = ', angka);
    writeln('isi angka setelah diubah (variabel pointer) = ', 
    alamat_angka^); 
end.
