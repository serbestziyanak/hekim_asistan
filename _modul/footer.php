<footer class="main-footer">
    <strong>Copyright &copy; <?php echo date("Y") ?> <a href="" target="_blank">LAYIK BİLGİSAYAR</a>.</strong>
    All rights reserved.
    <div class="float-right d-none d-sm-inline-block">
        <b>Version</b> 3.1.0-rc
    </div>
</footer>
<script type="text/javascript">
    $('.aktifYilSec').on("change", function(e) { 
        var $id         = $(this).val();
        var $data_islem = $(this).data("islem");
        var $data_url   = $(this).data("url");
        $.post($data_url, { islem : $data_islem, id : $id }, function (response) {
           window.location.reload();
        });

    });

    $('.ajaxGetir').on("change", function(e) { 
        var id          = $(this).val();
        var data_islem  = $(this).data("islem");
        var data_url    = $(this).data("url");
        var data_modul  = $(this).data("modul");
        var div         = $(this).data("div");
        $("#"+div).empty();
        $.post(data_url, { islem : data_islem, id : id, modul : data_modul }, function (response) {
            $("#"+div).append(response);
        });
    }); 

    $(".kapat").click(function(){
        var id = $(this).data("id");
        $("#"+id).slideToggle(500);
    });
    

</script>
