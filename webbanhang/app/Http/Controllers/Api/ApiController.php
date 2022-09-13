<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class ApiController extends Controller {
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
        $this->middleware('checkPermission');
    }
    
    //https://www.w3schools.com/php/php_file_upload.asp
    public function uploadFile(Request $request) {
        $target_dir = "uploads/";
        $target_file = $target_dir . basename($_FILES["file"]["name"]);
        $uploadOk = 1;
        $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));

        // Check if image file is a actual image or fake image
        if(isset($_POST["submit"])) {
          $check = getimagesize($_FILES["file"]["tmp_name"]);
          if($check !== false) {
            $uploadOk = 1;
          } else {
            $uploadOk = 0;
          }
        }

        // Check if file already exists
        // if (file_exists($target_file)) {
        //   $uploadOk = 0;
        // }

        // Check file size
        if ($_FILES["file"]["size"] > 500000) {
          $uploadOk = 0;
        }

        // Allow certain file formats
        if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
        && $imageFileType != "gif" && $imageFileType != "webp" && $imageFileType != "svg" && $imageFileType != "bmp" ) {
          $uploadOk = 0;
        }

        // Check if $uploadOk is set to 0 by an error
        if ($uploadOk == 0) {
        // if everything is ok, try to upload file
        } else {
          if (move_uploaded_file($_FILES["file"]["tmp_name"], $target_file)) {
            $url = url('/').'/'.$target_dir.htmlspecialchars( basename( $_FILES["file"]["name"]));
            return json_encode([
                'status' => 1,
                'url' => $url
            ]);
          } else {
          }
        }

        return json_encode([
            'status' => 0,
            'url' => 'Error'
        ]);
    }
}
