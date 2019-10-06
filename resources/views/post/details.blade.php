 <style>
     #ContentPlaceHolder1_Detail1_pnTlq {
    width: 100%;
    float: left;}
    .detail-tlq {
    width: 980px;
    display: inline-block;
    background: #fff;
    text-align: left;
    padding: 0 15px 50px;
}
.detail-tlq ul li {
    display: inline-block;
    width: 50%!important;
    line-height: 18px;
    float: left;
}
 </style>
@php 
echo $view;
@endphp
<div id="ContentPlaceHolder1_Detail1_pnTlq">

    <div class="detail-tlq">
        <div class="tabtlqdetail">
            <h3>Tin liên quan</h3>
   
        </div>
        <ul>
            @foreach ($related as $posts)
        <li><h4><a href="{{route('posts.show',$posts->id)}}">{{$posts->title}}</a></h4></li>
            @endforeach
        </ul>
    </div>
</div>