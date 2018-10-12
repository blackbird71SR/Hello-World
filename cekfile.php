<?php 

// memeriksa keberadaan file

//kita cek apakah file.fungsi.php di folder ini\
//$file = "array.php";
//if (file_exists("array.php")) {
	//echo "<script>alert('file ". $file ." berhasil di temukan');</script>";
//} else {
	//echo "<script>alert('file ". $file ." tidak bisa Ditemukan');</script>";
//}

// cek apakah file itu adalah file



// mengecek folder apakah benar-benar folder 
//$folder = "array.php"; 
//if (is_dir($folder)) {
	//echo "<script>alert('Folder ". $folder ." adalah folder biasa ');</script>";
//} else {
	//echo "<script>alert('Folder ". $folder ." bukan folder  ');</script>";
//}


// membuat file baru
$newfile = "newfile.php";
//cek apakah file newfile.php ada, jika ada maka akan tampil pesan
if (file_exists($newfile)) {
	//echo "<script>alert('File ". $newfile ." sudah ada ');</script>";

	// jika file sudah ada maka kita hapus file yang lama
	if (unlink($newfile)) {
		echo "<script>alert('File ". $newfile ." berhasil di hapus');</script>";
	} else {
		echo "<script>alert('Gagal menghapus file ". $newfile ."');</script>";
	}
	
} else {
	# code...
	//jika apakah sistem berhasil membuat file
	if (touch($newfile)) {
		echo "<script>alert('Berhasil membuat file baru ". $newfile ." ');</script>";
	} else {
		echo "<script>alert('Gagal membuat file baru ". $newfile ." ');</script>";
	}
	

}

// membuka file
// untuk membuka file kita memiliki opsi / mode yaitu
// 1. read only = 'r'
// 2. read and write = 'r+'
// 3. write only (w) --> menghapus isi file sebelumnya
// 4. write only (a) --> meletakan pointer di akhir isi file, isi masih ada
// 5. write and assign (w+) --> menghapus isi file dan menambah isi dile baru
// 6. wrote and assign (a+)  --> meletakkan pointer pada akhir isi file dan menambah isi 
if (file_exists($newfile)) {
	$new_text = "ini adalah isi yang akan ditambahkan ke dalam file";
	$file_to_edit = fopen($newfile, 'w');
	echo $file_to_edit . "<br>";
	echo "Berhasil menambah sebanyak " . fputs($file_to_edit, $new_text, 5) . "karakter";
	fclose($file_to_edit);
} else {
	echo "File ". $newfile ." tidak ditemukan";
}








 ?>