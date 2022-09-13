function uploadFile(e, target_id) {
  if(e != null) {
    file = e.target.files[0];
    if (!file.name.match(/.(jpg|jpeg|png|gif|bmp|webp|svg)$/i))
      return alert('Hình ảnh bạn tải lên không đúng định dạng file, vui lòng kiểm tra lại (jpg, jpeg, png, bmp, gif)');
  }

  
  var url = '//'+window.location.host+'/api/upload'
  var xhr = new XMLHttpRequest();
  var fd = new FormData();
  xhr.open('POST', url, true);
  xhr.setRequestHeader('X-Requested-With', 'XMLHttpRequest');

  xhr.onreadystatechange = function(e) {
    if (xhr.readyState == 4 && xhr.status == 200) {
      // File uploaded successfully
      var obj = JSON.parse(xhr.responseText)
      if(obj.status == 0) {
        alert(obj.url)
        return
      }

      document.getElementById(target_id).value = obj.url;
      // document.getElementById(target_id).onchange();
      $("#"+target_id).trigger('change')
    }
  };

  fd.append('tags', 'browser_upload'); // Optional - add tag for image admin in Cloudinary
  if(e != null) {
    fd.append('file', file);
  }
  xhr.send(fd);
}