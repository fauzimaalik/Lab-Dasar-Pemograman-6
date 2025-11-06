uses crt;

var 

    i : integer;
    nim : array[1..5] of string;


begin
    clrscr;
    nim[1]:= '033';
    nim[2]:= '001';
    nim[3]:= '054';
    nim[4]:= '090';
    nim[5]:= '111';

    writeln('Daftar NIM mahasiswa:');
    for i:= 5 downto 1 do
        writeln('NIM ke-', i, ' : ', nim[i]);
end.