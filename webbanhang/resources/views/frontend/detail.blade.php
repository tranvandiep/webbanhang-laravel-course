@extends('layouts.master')

@section('main-content')
<!-- inner page section -->
<section class="inner_page_head">
 <div class="container_fuild">
    <div class="row">
       <div class="col-md-12">
          <div class="full">
             <h3>{{ $detail->title }}</h3>
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
      <div class="col-md-5">
         <img src="{{ $detail->thumbnail }}" style="min-width: 100%; max-width: 100%;">
      </div>
      <div class="col-md-7">
         <h3>{{ $detail->title }}</h3>
         <p style="font-size: 36px; color: red">{{ number_format($detail->discount) }} vnd</p>
         <p style="font-size: 20px; color: grey"><del>{{ number_format($detail->price) }} vnd</del></p>
         <div style="display: flex;">
            <input type="number" name="num" class="form-control" style="width: 100px; font-size: 26px; text-align: center; margin-top: 5px; margin-right: 20px;" value="1">
            <button class="btn btn-success" style="width: 100%; font-size: 32px;" onclick="addCart({{ $detail->id }}, $('[name=num]').val())">Thêm vào giỏ hàng</button>
         </div>
      </div>
      <div class="col-md-12" style="margin-top: 50px;">
         <h4>Mô Tả Sản Phẩm</h4>
         {!! $detail->description !!}
      </div>
      <div class="col-md-12">
         <h4>Sản Phẩm Liên Quan</h4>
      </div>
    	@foreach($productList as $item)
       <div class="col-sm-6 col-md-4 col-lg-3">
          <div class="box">
             <div class="option_container">
                <div class="options">
                   <a href="{{ route('frontend.detail', ['id'=>$item->id, 'href_param'=>$item->slug]) }}" class="option1">
                   {{ $item->title }}
                   </a>
                   <a href="{{ route('frontend.detail', ['id'=>$item->id, 'href_param'=>$item->slug]) }}" class="option2">
                   Buy Now
                   </a>
                </div>
             </div>
             <div class="img-box">
                <img src="{{ $item->thumbnail }}" alt="{{ $item->title }}">
             </div>
             <div class="detail-box">
                <h5>
                   {{ $item->title }}
                </h5>
                <h6>
                   {{ number_format($item->discount, 0) }} vnd
                </h6>
             </div>
          </div>
       </div>
       @endforeach

    </div>
 </div>
</section>
<!-- end product section -->
@stop

@section('js')
<script type="text/javascript">
   function addCart(id, num) {
      cartList = getCookie('cart')
      if(cartList != null && cartList != '') {
         cartList = JSON.parse(cartList)
      } else {
         cartList = []
      }

      isFind = false
      for (var i = 0; i < cartList.length; i++) {
         if(cartList[i].id == id) {
            cartList[i].num = parseInt(cartList[i].num) + parseInt(num)
            isFind = true
            break
         }
      }

      if(!isFind) {
         cartList.push({
            'id': id,
            'num': num
         })
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