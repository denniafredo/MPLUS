<div class="page-wrapper">
    <!-- ============================================================== -->
    <!-- Bread crumb and right sidebar toggle -->
    <!-- ============================================================== -->
    <div class="container-fluid">
        <!-- ============================================================== -->
        <!-- Start Page Content -->
        <!-- ============================================================== -->
        <div class="row">
            <div class="col-md-12">
                <div class="card">
<div class="card-body">
    <h4 class="card-title">Edit Facilities</h4>
    <?php echo form_open('Master/editproc'); ?>
    <div class="form-group row hide">
        <label for="fname" class="col-sm-2 text-right control-label col-form-label">ID Facilities</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="namasomed" name="id_facilities" placeholder="id Facilities" value="<?php echo $facility['id_facilities'] ?>">
        </div>
    </div>
    <div class="form-group row">
        <label for="lname" class="col-sm-2 text-right control-label col-form-label">Facilities Name</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="data" name="nama_facilities" placeholder="Facilities name" value="<?php echo $facility['nama_facilities'] ?>">
        </div>
    </div>
    <div class="form-group row">
        <label for="fname" class="col-md-2 text-right control-label col-form-label">Information</label>
        <div class="col-md-10">
            <textarea id="post_content" name="keterangan_facilities" class="form-control"><?php echo $facility['keterangan_facilities'] ?></textarea>
          </div>
    </div>
    <div class="form-group row ">
        <div class="col-sm-12 text-center">
          <button type="submit" class="btn btn-warning btn-md">
            <i class="mdi mdi-pencil"></i> Update Facilities
          </button>
        </div>
    </div>
    <?php echo form_close(); ?>

  </div>
</div>
</div>
</div>
</div>
</div>
</div>
