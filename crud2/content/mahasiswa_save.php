<?php
    $nim = htmlspecialchars($_POST['nim']);
    $nama = htmlspecialchars( $_POST['nama']);
    $jurusan = htmlspecialchars($_POST['jurusan']);
    $alamat = htmlspecialchars($_POST['alamat']);

    if (empty($nim) || empty($nama) || empty($jurusan) || empty($alamat)) {
        echo "<script>
                    alert('Data Tidak Boleh Kosong!');
                    window.location.href = 'index.php?page=mahasiswa';
                </script>";
    } else {
        $cek = $con->query("SELECT * FROM mahasiswa WHERE nim = '$nim'");

        if ($cek->rowCount() == 0) {
            $sql = "INSERT INTO mahasiswa VALUES ('$nim','$nama','$jurusan','$alamat')";

            $simpan = $con->query($sql);
        
            if ($simpan-> rowCount() > 0) {
                echo "<script>
                        alert('Data Berhasil Ditambahkan!');
                        window.location.href = 'index.php?page=mahasiswa';
                    </script>";
            } else {
                echo "<script>
                        alert('Data Gagal Ditambahkan!');
                        window.location.href = 'index.php?page=mahasiswa';
                    </script>";
            }
        } else {
            echo "<script>
                        alert('NIM Sudah Ada');
                        window.location.href = 'index.php?page=mahasiswa';
                    </script>";
        }
    }