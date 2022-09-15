@extends('layouts.master')

@section('main-content')
<!-- inner page section -->
<section class="inner_page_head">
 <div class="container_fuild">
    <div class="row">
       <div class="col-md-12">
          <div class="full">
             <h3>Giỏ Hàng</h3>
          </div>
       </div>
    </div>
 </div>
</section>
<!-- end inner page section -->
<!-- product section -->
<section class="product_section layout_padding">
 <div class="container">
    <div class="row">

    	<div class="col-md-12">
         <table class="table table-bordered">
            <thead>
               <tr>
                  <th>Tên Sản Phẩm</th>
                  <th>Hình Ảnh</th>
                  <th>Giá</th>
                  <th>Số Lượng</th>
                  <th>Tổng Tiền</th>
                  <th></th>
               </tr>
            </thead>
            <tbody>
               @php
                  $total = 0;
               @endphp
               @foreach($cartItems as $item)
                  @php
                     $total += $item->discount * $item->num;
                  @endphp
                  <tr>
                     <td>{{ $item->title }}</td>
                     <td>
                        <img src="{{ $item->thumbnail }}" style="width: 160px">
                     </td>
                     <td>
                        {{ number_format($item->discount, 0) }}
                     </td>
                     <td>
                        <input type="number" name="num" value="{{ $item->num }}" class="form-control" style="width: 80px" onchange="updateCart({{ $item->id }}, $(this).val())">
                     </td>
                     <td>
                         {{ number_format($item->discount * $item->num, 0) }}
                     </td>
                     <td>
                        <button class="btn btn-danger" onclick="updateCart({{ $item->id }}, 0)">Xóa</button>
                     </td>
                  </tr>
               @endforeach
            </tbody>
         </table>
         <h3 style="float: left; font-size: 22px;">Tổng tiền: {{ number_format($total, 0) }}</h3>
         <a href="{{ route('frontend.checkout') }}">
            <button class="btn btn-success" style="font-size: 32px; width: 260px; float: right;">Thanh Toán</button>
         </a>
      </div>

    </div>
 </div>
</section>
<!-- end product section -->
@stop

@section('js')
<script type="text/javascript">
   function updateCart(id, num) {
      cartList = getCookie('cart')
      if(cartList != null && cartList != '') {
         cartList = JSON.parse(cartList)
      } else {
         cartList = []
      }

      isFind = false
      for (var i = 0; i < cartList.length; i++) {
         if(cartList[i].id == id) {
            if(num <= 0) {
               cartList.splice(i, 1)
            } else {
               cartList[i].num = parseInt(num)
            }
            
            isFind = true
            break
         }
      }

      cartList = JSON.stringify(cartList)
      document.cookie = `cart=${cartList}` + getLifecycle()

      location.reload()
   }


   function getLifecycle() { 
    var now = new Date();
    var time = now.getTime();
    var expireTime = time + 30*1000*86400;
    now.setTime(expireTime);
    return ';expires='+now.toUTCString()+';path=/';
  }

   function getCookie(name) {
       function escape(s) { return s.replace(/([.*+?\^$(){}|\[\]\/\\])/g, '\\$1'); }
       var match = document.cookie.match(RegExp('(?:^|;\\s*)' + escape(name) + '=([^;]*)'));
       return match ? match[1] : null;
   }
</script>
@stop