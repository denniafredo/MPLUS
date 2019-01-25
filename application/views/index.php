<div class="page-wrapper">
    <!-- ============================================================== -->
    <!-- Bread crumb and right sidebar toggle -->
    <!-- ============================================================== -->
     <div class="page-breadcrumb">
        <div class="row">
            <div class="col-12 d-flex no-block align-items-center">
                <h4 class="page-title">List of Books Data</h4>
                <div class="ml-auto text-right">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active" aria-current="page">List of Books Data</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid">
        <div class="card">
            <div class="card-body">

                <div class="table-responsive">
                    <table id="zero_config" class="table table-striped table-bordered">
                        <thead>
                            <tr>
                                <th><b>Title</b></th>
                                <th><b>Author</b></th>
                                <th><b>Date Publised</b></th>
                                <th><b>Number of Pages</b></th>
                                <th><b>Type of Book</b></th>
                                <th><b>Action</b></th>
                            </tr>
                        </thead>
                        <tbody>
                        <?php foreach ($books as $book):?>
                          <tr>
                              <td><?php echo $book->title ?></td>
                              <td><?php echo $book->author ?></td>
                              <td><?php echo $book->date_published ?></td>
                              <td><?php echo $book->number_of_pages ?></td>
                              <td><?php echo $book->type_of_book ?></td>
                              <td><button type="button" class="btn btn-warning btn-md" data-toggle="modal" data-target="#editbookmodal" onclick="editdata(<?php echo $book->id ?>)"><i class="mdi mdi-pencil"></i> Edit</button>
                              <button type="button" class="btn btn-danger btn-md" onclick="deletedata(<?php echo $book->id ?>)"><i class="mdi mdi-delete"></i> Detele</button></td>
                          </tr>
                          <?php endforeach; ?>
                        </tbody>
                        <tfoot>
                            <tr>
                              <th><b>Title</b></th>
                              <th><b>Author</b></th>
                              <th><b>Date Publised</b></th>
                              <th><b>Number of Pages</b></th>
                              <th><b>Type of Book</b></th>
                              <th><b>Action</b></th>
                            </tr>
                        </tfoot>
                    </table>
                </div>

            </div>
              <a href="#" class="float" data-toggle="modal" data-target="#addbookmodal"><i class="fa fa-plus my-float"></i></a>
              <div class="label-container">
              <div class="label-text">Add Book</div>

              <i class="fa fa-play label-arrow"></i>

        </div>
      </div>
    </div>

    <div class="modal fade" id="addbookmodal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLongTitle">Add Book</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <?php echo form_open('Master/add_book'); ?>
          <div class="modal-body">
            <div class="form-group row">
                <label class="col-sm-2 text-right control-label col-form-label">Title</label>
                <div class="col-sm-10">
                  <input type="text" class="form-control" id="data" name="title" placeholder="Book Title" value="">
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 text-right control-label col-form-label">Author</label>
                <div class="col-sm-10">
                  <input type="text" class="form-control" id="data" name="author" placeholder="Book Author" value="">
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 text-right control-label col-form-label">Date Published</label>
                <div class="col-sm-10">
                  <input type="date" class="form-control" id="data" name="date_published" placeholder="Book Date Published" value="">
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 text-right control-label col-form-label">Number of Pages</label>
                <div class="col-sm-10">
                  <input type="number" class="form-control" id="data" name="nop" placeholder="Number of Book Pages" value="">
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 text-right control-label col-form-label">Type of Book</label>
                <div class="col-sm-10">
                  <select name="tob" class="form-control">
                    <option value="One of Novel">One of Novel</option>
                    <option value="Documentation">Documentation</option>
                    <option value="Other">Other</option>
                  </select>                
                </div>
            </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            <button type="submit" class="btn btn-primary" onclick="">Add</button>
          </div>
          </form>
        </div>
      </div>
    </div>

    <div class="modal fade" id="editbookmodal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLongTitle">Edit Book</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <?php echo form_open('Master/edit_book'); ?>
          <div class="modal-body">
            <div class="form-group row hide">
                <label for="fname" class="col-sm-2 text-right control-label col-form-label">ID</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="editid" name="id" placeholder="id" value="">
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 text-right control-label col-form-label">Title</label>
                <div class="col-sm-10">
                  <input type="text" class="form-control" id="edittitle" name="title" placeholder="Book Title" value="">
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 text-right control-label col-form-label">Author</label>
                <div class="col-sm-10">
                  <input type="text" class="form-control" id="editauthor" name="author" placeholder="Book Author" value="">
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 text-right control-label col-form-label">Date Published</label>
                <div class="col-sm-10">
                  <input type="date" class="form-control" id="editdate" name="date_published" placeholder="Book Date Published" value="">
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 text-right control-label col-form-label">Number of Pages</label>
                <div class="col-sm-10">
                  <input type="number" class="form-control" id="editnop" name="nop" placeholder="Number of Book Pages" value="">
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 text-right control-label col-form-label">Type of Book</label>
                <div class="col-sm-10">
                  <select id="edittob" name="tob" class="form-control">
                    <option value="One of Novel">One of Novel</option>
                    <option value="Documentation">Documentation</option>
                    <option value="Other">Other</option>
                  </select>                 
                </div>
            </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            <button type="submit" class="btn btn-primary" onclick="">Edit</button>
          </div>
          </form>
        </div>
      </div>
    </div>
    

<script type="text/javascript">

function editdata(id){
  $.ajax({
        type: "POST",
        data: {id:id},
        dataType: "json",
        url: "<?php echo site_url('Master/getdata_book') ?>",
        success: function(data){
             $("#editid").val(data[0].id);
             $("#edittitle").val(data[0].title);
             $("#editauthor").val(data[0].author);
             $("#editdate").val(data[0].date_published);
             $("#editnop").val(data[0].number_of_pages);
             $("#edittob option[value="+data[0].type_of_book+"]").attr('selected','selected');
        }
  }); 
}
function deletedata(id){
  (new PNotify({
      title: 'Delete Confirmation',
      text: 'Are you sure?',
      icon: 'glyphicon glyphicon-question-sign',
      hide: false,
      type: 'error',
      confirm: {
          confirm: true
      },
      buttons: {
          closer: false,
          sticker: false
      },
      history: {
          history: false
      },
      addclass: 'stack-modal',
      stack: {
          'dir1': 'down',
          'dir2': 'right',
          'modal': true
      }
  })).get().on('pnotify.confirm', function() {
    $.ajax({
            type: "POST",
            data: {id:id},
            url: "<?php echo site_url('Master/delete_book') ?>",
            success: function(data){
                 new PNotify({
                  title: 'Success',
                  text: 'Delete a Book',
                  type: 'success',
                  animate: {
                      animate: true,
                      in_class: 'wobble',
                      out_class: 'flipOutX'
                  }
                  });
                  location.reload();
            }
      });
    
  }).on('pnotify.cancel', function() { });
}
 
</script>

<?php
if($this->session->has_userdata('notif')){
  $notice = $this->session->notice;
  $state = explode(",", $notice);
  if($state[0]==1){
    $indicator = "success";
  }
  elseif ($state[0]==2) {
    $indicator = "info";

  }
  elseif ($state[0]==3) {
    $indicator = "error";
  }
  ?>
    <script>

    $(document).ready(function(){
      new PNotify({
          title: '<?php echo $indicator;?>',
          text: '<?php echo $state[1];?>',
          type: '<?php echo $indicator; ?>',
          addclass : 'pnotify-center',
          delay: 2000,
          buttons: {
              sticker: false
          },
          animate: {
              animate: true,
              in_class: 'wobble',
              // flipInX
              out_class: 'flipOutX'
          },
          mobile: {
            styling: false
          }
      });
        <?php $this->session->unset_userdata('notice');?>
    });


    </script>

    <?php
  }
?>