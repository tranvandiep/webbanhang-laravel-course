@extends('layouts.master')

@section('main-content')
<!-- inner page section -->
<section class="inner_page_head">
 <div class="container_fuild">
    <div class="row">
       <div class="col-md-12">
          <div class="full">
             <h3>Trang Không Tồn Tại</h3>
          </div>
       </div>
    </div>
 </div>
</section>
<!-- end inner page section -->
<!-- why section -->
<section class="why_section layout_padding">
   <div class="container">
   
      <div class="row">
         <div class="col-lg-8 offset-lg-2">
            <div class="full">
               <form action="{{ route('frontend.contact.send') }}" method="post">
                  <fieldset>
                     {{ csrf_field() }}
                     <input type="text" placeholder="Nhập họ & tên" name="fullname" required />
                     <input type="email" placeholder="Nhập email" name="email" required />
                     <input type="tel" placeholder="Nhập số điện thoại" name="phone_number" required />
                     <input type="text" placeholder="Nhập chủ đề" name="subject_name" required />
                     <textarea placeholder="Nội dung" required name="note"></textarea>
                     <input type="submit" value="Gửi Phản Hồi" />
                  </fieldset>
               </form>
            </div>
         </div>
      </div>
   </div>
</section>
<!-- end why section -->
@stop