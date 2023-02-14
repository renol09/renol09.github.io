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
        $sql = "UPDATE  mahasiswa set nama = '$nama', jurusan = '$jurusan', alamat = '$alamat' WHERE nim = $nim";

        $simpan = $con->query($sql);
    
        if ($simpan-> rowCount() > 0) {
            echo "<script>
                    alert('Data Berhasil Diubah!');
                    window.location.href = 'index.php?page=mahasiswa';
                </script>";
        } else {
            echo "<script>
                    alert('Data Gagal Diubah!');
                    window.location.href = 'index.php?page=mahasiswa';
                </script>";
        }
    }