@extends('layouts.master')

@section('main-content')
<!-- inner page section -->
<section class="inner_page_head">
 <div class="container_fuild">
    <div class="row">
       <div class="col-md-12">
          <div class="full">
             <h3>{{ $post->title }}</h3>
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
         <img src="{{ $post->thumbnail }}" style="min-width: 100%; max-width: 100%;">
         <p style="margin-top: 10px;">
            Ngày viêt: {{ getTimeFormat($post->updated_at) }}
         </p>
         <p>
            {!! $post->content !!}
         </p>
      </div>
    	@foreach($newsList as $item)
       <div class="col-sm-6 col-md-4 col-lg-4">
          <div class="box">
             <div class="img-box">
                <img src="{{ $item->thumbnail }}" alt="{{ $item->title }}">
             </div>
             <p>
               <svg style="color: #f7444e;" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-clock-fill" viewBox="0 0 16 16">
                 <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM8 3.5a.5.5 0 0 0-1 0V9a.5.5 0 0 0 .252.434l3.5 2a.5.5 0 0 0 .496-.868L8 8.71V3.5z"/>
               </svg>
               {{ getTimeFormat($item->updated_at) }}
             </p>
             <div class="detail-box">
                <h5>
                   <a href="{{ route('frontend.post', ['id'=>$item->id, 'href_param'=>$item->href_param]) }}">{{ $item->title }}</a>
                </h5>
             </div>
          </div>
       </div>
       @endforeach

    </div>
 </div>
</section>
<!-- end product section -->
@stop