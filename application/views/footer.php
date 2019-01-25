<footer class="footer text-center">
    Denni Afredo Suryono Hartanu.
</footer>
<!-- ============================================================== -->
<!-- End footer -->
<!-- ============================================================== -->
</div>
<!-- ============================================================== -->
<!-- End Page wrapper  -->
<!-- ============================================================== -->
</div>
<!-- ============================================================== -->
<!-- End Wrapper -->
<!-- ============================================================== -->
<!-- ============================================================== -->
<!-- All Jquery -->
<!-- ============================================================== -->
<script src="<?php echo base_url('assets')?>/libs/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap tether Core JavaScript -->
<script src="<?php echo base_url('assets')?>/libs/popper.js/dist/umd/popper.min.js"></script>
<script src="<?php echo base_url('assets')?>/libs/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="<?php echo base_url('assets')?>/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>
<script src="<?php echo base_url('assets')?>/extra-libs/sparkline/sparkline.js"></script>
<!--Wave Effects -->

<!--This page JavaScript -->
<!-- <script src="<?php echo base_url('assets')?>/js/pages/dashboards/dashboard1.js"></script> -->
<!-- Charts js Files -->
<script src="<?php echo base_url('assets')?>/libs/flot/excanvas.js"></script>
<script src="<?php echo base_url('assets')?>/libs/flot/jquery.flot.js"></script>
<script src="<?php echo base_url('assets')?>/libs/flot/jquery.flot.pie.js"></script>
<script src="<?php echo base_url('assets')?>/libs/flot/jquery.flot.time.js"></script>
<script src="<?php echo base_url('assets')?>/libs/flot/jquery.flot.stack.js"></script>
<script src="<?php echo base_url('assets')?>/libs/flot/jquery.flot.crosshair.js"></script>
<script src="<?php echo base_url('assets')?>/libs/flot.tooltip/js/jquery.flot.tooltip.min.js"></script>
<script src="<?php echo base_url('assets')?>/libs/fancybox/dist/jquery.fancybox.min.js"></script>

<script src="<?php echo base_url('assets')?>/libs/inputmask/dist/min/jquery.inputmask.bundle.min.js"></script>
<script src="<?php echo base_url('assets')?>/libs/select2/dist/js/select2.full.min.js"></script>
<script src="<?php echo base_url('assets')?>/libs/select2/dist/js/select2.min.js"></script>
<script src="<?php echo base_url('assets')?>/libs/jquery-asColor/dist/jquery-asColor.min.js"></script>
<script src="<?php echo base_url('assets')?>/libs/jquery-asGradient/dist/jquery-asGradient.js"></script>
<script src="<?php echo base_url('assets')?>/libs/jquery-asColorPicker/dist/jquery-asColorPicker.min.js"></script>
<script src="<?php echo base_url('assets')?>/libs/jquery-minicolors/jquery.minicolors.min.js"></script>
<script src="<?php echo base_url('assets')?>/libs/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
<script src="<?php echo base_url('assets')?>/libs/quill/dist/quill.min.js"></script>
<script src="<?php echo base_url('assets')?>/libs/Pnotify/pnotify.custom.min.js"></script>
<script src="<?php echo base_url('assets')?>/libs/tinymce/js/tinymce/tinymce.min.js"></script>
<script src="<?php echo base_url('assets')?>/extra-libs/multicheck/datatable-checkbox-init.js"></script>
<script src="<?php echo base_url('assets')?>/extra-libs/multicheck/jquery.multicheck.js"></script>
<script src="<?php echo base_url('assets')?>/extra-libs/DataTables/datatables.min.js"></script>
<!-- <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js" type="text/javascript"></script>
<script src="https://cdn.datatables.net/buttons/1.5.2/js/dataTables.buttons.min.js" type="text/javascript"></script>
<script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.flash.min.js" type="text/javascript"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js" type="text/javascript"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js" type="text/javascript"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js" type="text/javascript"></script>
<script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.html5.min.js" type="text/javascript"></script>
<script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.print.min.js" type="text/javascript"></script> -->










</body>

</html>


<script type="text/javascript">
$(".select2").select2();


var statothercat=0;
$("#statusothercat").val(statothercat);
$("#onoff").on('change',function(){
  if (statothercat==0) {
    statothercat = 1;

    $("#statusothercat").val(statothercat);
    $("#category").prop('disabled', true);
    $("#othercategory").prop('disabled', false);
  }
  else{
    statothercat = 0;

    $("#statusothercat").val(statothercat);
    $("#othercategory").prop('disabled', true);
    $("#category").prop('disabled', false);
  }
});

$("#covernews").on('change',function(){
  $("#covernewslabel").html($("#covernews").val().split(/(\\|\/)/g).pop());
});

$("#bannerinput").on('change',function(){
  $("#bannerinputlabel").html($("#bannerinput").val().split(/(\\|\/)/g).pop());
});
$("#ebannerinput").on('change',function(){
  $("#ebannerinputlabel").html($("#ebannerinput").val().split(/(\\|\/)/g).pop());
});

$("#datatable2").DataTable({
  dom: 'Bfrtip',
  buttons: [
    {
      extend: 'excelHtml5',
      exportOptions: {
        columns: ':visible'
      }
    }
  ]
});
$(document).ready(function() {
    $('#example').DataTable( {
        dom: 'Bfrtip',
        buttons: [
            'copy', 'csv', 'excel', 'pdf', 'print'
        ]
    } );
} );
$('#zero_config').DataTable();
</script>
<script type="text/javascript">
$(document).ready(function() {
  $('#tableinbox').DataTable( {
      "order": [[ 3, "asc" ]]
  } );
} );
</script>

<script type="text/javascript">
    tinymce.init({
        selector: "#post_content",
        plugins: [
             "advlist autolink lists link image charmap print preview hr anchor pagebreak",
             "searchreplace wordcount visualblocks visualchars code",
             "insertdatetime nonbreaking save table contextmenu directionality",
             "emoticons template paste textcolor colorpicker textpattern"
        ],
        toolbar: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image responsivefilemanager preview",
        automatic_uploads: true,
        image_advtab: true,
        images_upload_url: "<?php echo base_url('Admin_News/tinymce_upload')?>",
        file_picker_types: 'image',
        paste_data_images:true,
        relative_urls: false,
        remove_script_host: false,
        height : "400",
          file_picker_callback: function(cb, value, meta) {
             var input = document.createElement('input');
             input.setAttribute('type', 'file');
             input.setAttribute('accept', 'image/*');
             input.onchange = function() {
                var file = this.files[0];
                var reader = new FileReader();
                reader.readAsDataURL(file);
                reader.onload = function () {
                   var id = 'post-image-' + (new Date()).getTime();
                   var blobCache =  tinymce.activeEditor.editorUpload.blobCache;
                   var blobInfo = blobCache.create(id, file, reader.result);
                   blobCache.add(blobInfo);
                   cb(blobInfo.blobUri(), { title: file.name });
                };
             };
             input.click();
          }
   });
    tinymce.init({
        selector: "#pengantartext",
        plugins: [
             "advlist autolink lists link charmap print preview hr anchor pagebreak",
             "searchreplace wordcount visualblocks visualchars code",
             "insertdatetime nonbreaking save table contextmenu directionality",
             "emoticons template paste textcolor colorpicker textpattern"
        ],
        toolbar: "undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent |responsivefilemanager preview",
        automatic_uploads: true,
        image_advtab: true,
        images_upload_url: "<?php echo base_url('Admin_News/tinymce_upload')?>",
        file_picker_types: 'image',
        paste_data_images:true,
        relative_urls: false,
        remove_script_host: false

   });
tinymce.init({
    selector: "#sejarahtext",
    plugins: [
         "advlist autolink lists link charmap print preview hr anchor pagebreak",
         "searchreplace wordcount visualblocks visualchars code",
         "insertdatetime nonbreaking save table contextmenu directionality",
         "emoticons template paste textcolor colorpicker textpattern"
    ],
    toolbar: "undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent |responsivefilemanager preview",
    automatic_uploads: true,
    image_advtab: true,
    images_upload_url: "<?php echo base_url('Admin_News/tinymce_upload')?>",
    file_picker_types: 'image',
    paste_data_images:true,
    relative_urls: false,
    remove_script_host: false

});
tinymce.init({
    selector: "#visitext",
    plugins: [
         "advlist autolink lists link charmap print preview hr anchor pagebreak",
         "searchreplace wordcount visualblocks visualchars code",
         "insertdatetime nonbreaking save table contextmenu directionality",
         "emoticons template paste textcolor colorpicker textpattern"
    ],
    toolbar: "undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent |responsivefilemanager preview",
    automatic_uploads: true,
    image_advtab: true,
    images_upload_url: "<?php echo base_url('Admin_News/tinymce_upload')?>",
    file_picker_types: 'image',
    paste_data_images:true,
    relative_urls: false,
    remove_script_host: false

});
tinymce.init({
    selector: "#misitext",
    plugins: [
         "advlist autolink lists link charmap print preview hr anchor pagebreak",
         "searchreplace wordcount visualblocks visualchars code",
         "insertdatetime nonbreaking save table contextmenu directionality",
         "emoticons template paste textcolor colorpicker textpattern"
    ],
    toolbar: "undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent |responsivefilemanager preview",
    automatic_uploads: true,
    image_advtab: true,
    images_upload_url: "<?php echo base_url('Admin_News/tinymce_upload')?>",
    file_picker_types: 'image',
    paste_data_images:true,
    relative_urls: false,
    remove_script_host: false

});

tinymce.init({
    selector: "#nilaitext ",
    plugins: [
         "advlist autolink lists link charmap print preview hr anchor pagebreak",
         "searchreplace wordcount visualblocks visualchars code",
         "insertdatetime nonbreaking save table contextmenu directionality",
         "emoticons template paste textcolor colorpicker textpattern"
    ],
    toolbar: "undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent |responsivefilemanager preview",
    automatic_uploads: true,
    image_advtab: true,
    images_upload_url: "<?php echo base_url('Admin_News/tinymce_upload')?>",
    file_picker_types: 'image',
    paste_data_images:true,
    relative_urls: false,
    remove_script_host: false

});
tinymce.init({
    selector: "#addabout ",
    plugins: [
         "advlist autolink lists link charmap print preview hr anchor pagebreak",
         "searchreplace wordcount visualblocks visualchars code",
         "insertdatetime nonbreaking save table contextmenu directionality",
         "emoticons template paste textcolor colorpicker textpattern"
    ],
    toolbar: "undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent |responsivefilemanager preview",
    automatic_uploads: true,
    image_advtab: true,
    height: 400,
    images_upload_url: "<?php echo base_url('Admin_News/tinymce_upload')?>",
    file_picker_types: 'image',
    paste_data_images:true,
    relative_urls: false,
    remove_script_host: false
});
tinymce.init({
    selector: "#tinymceuniversal ",
    plugins: [
         "advlist autolink lists link charmap print preview hr anchor pagebreak",
         "searchreplace wordcount visualblocks visualchars code",
         "insertdatetime nonbreaking save table contextmenu directionality",
         "emoticons template paste textcolor colorpicker textpattern"
    ],
    toolbar: "undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent |responsivefilemanager preview",
    automatic_uploads: true,
    image_advtab: true,
    height:600,
    images_upload_url: "<?php echo base_url('Admin_News/tinymce_upload')?>",
    file_picker_types: 'image',
    paste_data_images:true,
    relative_urls: false,
    remove_script_host: false
});

$("#edit").fancybox({
    afterClose: function () {
        parent.location.reload(true);
    }
});
$("#edit1").fancybox({
    afterClose: function () {
        parent.location.reload(true);
    }
});
$("#edit2").fancybox({
    afterClose: function () {
        parent.location.reload(true);
    }
});
function konfirmasi(link) {
  (new PNotify({
        title: 'Confirmation Needed',
        text: 'Are you sure?',
        icon: 'glyphicon glyphicon-question-sign',
        hide: false,
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
        stack: {'dir1': 'down', 'dir2': 'right', 'modal': true}
      })).get().on('pnotify.confirm', function(){
        window.location =link;
      }).on('pnotify.cancel', function(){
        event.preventDefault();
      });

}

</script>
<?php
if($this->session->has_userdata('notice')){
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
