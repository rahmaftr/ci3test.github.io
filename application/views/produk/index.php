<!DOCTYPE html>
<html>
<head>
    <title>Daftar Produk</title>
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h2>Daftar Produk</h2>
        <a href="<?php echo site_url('produk/tambah'); ?>" class="btn btn-primary">Tambah</a>
        <table class="table table-bordered row">
            <thead>
                <tr>
                    <th class="text-center">ID Produk</th>
                    <th class="text-center col-md-5">Nama Produk</th>
                    <th class="text-center">Harga</th>
                    <th class="text-center col-md-2">Kategori</th>
                    <th class="col-12 text-center">Status</th>
                    <th class="text-center col-md-2">Aksi</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($produk as $row) { ?>
                    <tr>
                        <td class="text-center"><?php echo $row['id_produk']; ?></td>
                        <td><?php echo $row['nama_produk']; ?></td>
                        <td><?php echo $row['harga']; ?></td>
                        <td><?php echo $row['kategori']; ?></td>
                        <td><?php echo $row['status']; ?></td>
                        <td class="col-12 text-center">
                            <a href="<?php echo site_url('produk/edit/'.$row['no']); ?>" class="btn btn-primary btn-sm">  Edit  </a>
                            <a href="<?php echo site_url('produk/hapus/'.$row['no']); ?>" class="btn btn-danger btn-sm" onclick="return confirm('Apakah Anda yakin ingin menghapus dengan ID produk: <?php echo $row['id_produk']; ?>?')">Hapus</a>
                        </td>
                    </tr>
                <?php } ?>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>
