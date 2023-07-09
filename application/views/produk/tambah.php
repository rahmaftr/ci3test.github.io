<!DOCTYPE html>
<html>
<head>
    <title>Tambah Produk</title>
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h2>Tambah Produk</h2>
        <?php echo validation_errors(); ?>
        <?php echo form_open('produk/tambah'); ?>
            <div class="form-group">
                <label for="id_produk">Id Produk:</label>
                <input type="text" class="form-control" id="id_produk" name="id_produk" placeholder="Isi Id Produk dengan angka" required>
            </div>
            <div class="form-group">
                <label for="nama_produk">Nama Produk:</label>
                <input type="text" class="form-control" id="nama_produk" name="nama_produk" placeholder="Isi Nama Produk" required>
            </div>
            <div class="form-group">
                <label for="harga">Harga:</label>
                <input type="number" class="form-control" id="harga" name="harga" placeholder="20000" required>
            </div>
            <div class="form-group">
                <label for="kategori">Pilih Kategori:</label>
                <select class="form-control" id="kategori" name="kategori">
                    <option>CI MTH TINTA LAIN (IM)</option>
                    <option>L MTH AKSESORIS (IM)</option>
                    <option>L MTH AKSESORIS (LK)</option>
                    <option>L MTH TABUNG (LK)</option>
                    <option>L QUEENLY</option>
                    <option>S MTH STEMPEL (IM)</option>
                    <option>SP MTH SPAREPART (LK)</option>
                </select>
            </div>
            <div class="form-group">
                <label for="status">Pilih Status:</label>
                <select class="form-control" id="status" name="status">
                    <option>bisa dijual</option>
                    <option>tidak bisa dijual</option>
                </select>
            </div>
            <button type="submit" class="btn btn-primary">Simpan</button>
            <a href="<?php echo site_url('produk'); ?>" class="btn btn-default">Batal</a>
        <?php echo form_close(); ?>
    </div>
</body>
</html>
