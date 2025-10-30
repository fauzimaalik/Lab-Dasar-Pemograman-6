{
NIM_1 :251401117
NIM_2 :251401120
}

uses crt;

var
denda_per_buku : smallint;
nama, judul_buku : string;
jenis_buku : char;
jumlah_buku, lama_pinjam, total_denda, i : integer;

const
denda_per_hari = 1000;

(* deklarasikan variabel yang diperlukan *)

begin

    clrscr;

    writeln('=== SISTEM PEMINJAMAN BUKU ===');
    writeln;

    write ('Masukkan nama peminjam : ');readln (nama);                                          (* Input nama peminjam *)
    
    write ('Masukkan Jumlah buku yang di pinjam :  '); readln (jumlah_buku);                    (* Validasi jumlah buku (tidak boleh nol atau negatif) menggunakan perulangan *)
    while (jumlah_buku   <= 0) do
    begin
        write ('Jumlah buku tidak valid. Masukkan Jumlah buku yang di pinjam :  '); readln (jumlah_buku);
    end;
    writeln;

    for i := 1 to jumlah_buku do                            (* Gunakan perulangan untuk meminta data setiap buku yang dipinjam *)
    begin
        writeln ('Input buku ke - ', i );
        write ('Judul buku mu : '); readln (judul_buku);    (* Input judul buku *)

        repeat                                              (* Input jenis buku (F=Fiksi, N=Nonfiksi, R=Referensi) dengan validasi agar hanya huruf tersebut yang diterima *)
            writeln ('Jenis Buku F = Fiksi' );
            writeln ('Jenis Buku N = Nonfiksi');
            writeln ('Jenis Buku R = Referensi');
            write ('Jenis buku yang di pinjam (F/N/R) ');readln (jenis_buku);   
            jenis_buku := UpCase(jenis_buku);
            
            if (jenis_buku = 'F') AND (jenis_buku = 'N') AND (jenis_buku = 'R') then
            begin
            writeln ('Jenis buku yang di masukkan salah, silahkan masukkan (F/N/R) : '); readln (jenis_buku);
            end;


        until (jenis_buku = 'F') or (jenis_buku = 'N') or (jenis_buku = 'R');

        REPEAT                                               (* Input lama peminjaman (hari), dengan validasi agar minimal 1 hari *)
            write('Lama Pinjam (hari) : ');
            readln(lama_pinjam);

            if lama_pinjam < 1 then
            begin
                writeln('Input salah! Minimal peminjaman adalah 1 hari.');
            end;
        UNTIL lama_pinjam >= 1;

       writeln;                                             (* Tampilkan pesan berbeda tergantung jenis buku menggunakan operasi kondisi *)
       write ('Catatan jenis buku yang di pinjam : ');
       Case jenis_buku of
        'F' : writeln ('Buku Fiksi'); 
        'N' : writeln ('Buku Nonfiksi');
        'R' : writeln ('Buku Referensi');
       end;

        denda_per_buku := 0;

        if lama_pinjam > 7 then                             (* Jika hari peminjaman lebih dari 7, hitung denda dan tambahkan ke total denda *)

        begin
            denda_per_buku  := (lama_pinjam - 7) * denda_per_hari;
            total_denda     := total_denda + denda_per_buku;
            writeln ('status peminjaman anda terlambat maka anda mendapatkan denda sebesar : ', denda_per_buku);
        end

        else
            begin
            writeln ('Status peminjaman buku anda tepat waktu, maka tidak dikenakan denda');
            end;

        writeln;
    end;

    writeln;
    writeln('==============================');
    (* Tampilkan total estimasi denda dan ucapan terima kasih kepada peminjam *)
    writeln('Total estimasi denda : Rp',denda_per_buku );
    writeln('Terima kasih ', nama, ' telah menggunakan sistem ini.');
    writeln('==============================');
end.