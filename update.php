<?php include "header.php"; ?>

<?php 
include "koneksi.php";
$id = $_GET['id'];
$data = mysqli_query($koneksi, "SELECT * FROM ttamu WHERE id='$id'");
while ($tampil = mysqli_fetch_array($data)){

?>

<!-- awal row -->
<div class="row mt-2">
    <!-- col-lg-7 -->
    <div class="col-12 md-4">
        <div class="card shadow bg-gradient-light">
            <!-- card body -->
            <div class="card-body">

                <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4">Update Identitas Pengunjung</h1>
                </div>
                <form method="POST" action="updatedata.php">
                    <input type="hidden" class="form-control form-control-user" name="id" value="<?php echo $tampil['id']; ?>" readonly>
                    <div class="from-gruop">
                        <input type="text" class="form-control form-control-user" name="nama" value="<?php echo $tampil['nama']; ?>">
                        <br>
                    </div>
                    <div class="from-gruop">
                        <input type="text" class="form-control form-control-user" name="alamat" value="<?php echo $tampil['alamat']; ?>">
                        <br>
                    </div>
                    <div class="from-gruop">
                        <input type="text" class="form-control form-control-user" name="tujuan" value="<?php echo $tampil['tujuan']; ?>">
                        <br>
                    </div>
                    <div class="from-gruop">
                        <input type="text" class="form-control form-control-user" name="nope" value="<?php echo $tampil['nope']; ?>">
                        <br>
                    </div>

                    <hr>

                    <center>
                    <!-- <div class="col-md-12">
                    <a href="index.php" class="btn btn-primary mb-4"><i class="fa fa-save"></i> Ubah Data</a>
                    <br>
                    <a href="admin.php" class="btn btn-danger mb-4"><i class="fa fa-sign-out-alt"></i> Kembali</a>
                    </div> -->
                    <div class="col-md-12">
                    <input class="btn btn-primary mb-4" type="submit" name="ubah" value="Ubah">
                    <input class="btn btn-primary mb-4" type="reset" name="batal" Value="Batal">
                    <br>
                    <input class="btn btn-danger mb-4" type="button" name="kembali" value="Kembali" onclick="self.history.back()" >  
                    </div>

                    
                    </center>
                    
                   
                </form>
                <hr>
                <div class="text-center">
                    <a class="small" href="#">By. UlungGalihM | 2024 - <?= date('Y') ?></a>
                </div>

            </div>
            <!--end card body -->
        </div>
    </div>
    <!--end col-lg-7 -->
</div>


<?php } ?>



<?php include "footer.php"; ?>