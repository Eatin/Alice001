<!DOCTYPE html>
<!-- release v4.1.8, copyright 2014 - 2015 Kartik Visweswaran -->
<html lang="en">
    <head>
        <meta charset="UTF-8"/>
        <title>Krajee JQuery Plugins - &copy; Kartik</title>
        <link href="../../static/upload/css/bootstrap.min.css" rel="stylesheet">
        <link href="../../static/upload/css/fileinput.css" media="all" rel="stylesheet" type="text/css" />
        <script src="../../static/upload/js/jquery-2.0.3.min.js"></script>
        <script src="../../static/upload/js/fileinput.js" type="text/javascript"></script>
        <script src="../../static/upload/js/bootstrap.min.js" type="text/javascript"></script>
    </head>
    <body>
        <div class="container kv-main">
            
            <br>
            <form enctype="multipart/form-data">
                
                <div class="form-group">
                    <input id="file-1" type="file" name="uploadFile" multiple class="file" data-overwrite-initial="false" data-min-file-count="1">
                </div>
                
            </form>
        </div>
    </body>
	<script>
  
    $("#file-1").fileinput({
        uploadUrl: '/upload.html', // you must set a valid URL here else you will get an error
        // allowedFileExtensions : ['zip'],
        overwriteInitial: false,
        maxFileSize: 50000005000000,
        maxFilesNum: 10,
        showCaption: false,
        uploadAsync: true
        // showPreview: false,
        //allowedFileTypes: ['image', 'video', 'flash'],
	});
   
	</script>
</html>