@extends('layout.layout')
@section('content')
<div class="content-wrapper">
    <section class="content">
      <a href="{{route('posts.create')}}" class="btn btn-primary">Create</a>
      <form action="{{route('posts.search')}}" method="get" class="sidebar-form">
        <div class="input-group">
          <input type="text" name="search" class="form-control" placeholder="Search...">
          <span class="input-group-btn">
                <button type="submit" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
          </span>
        </div>
      </form>
        <table class="table">
    <thead>
      <tr>
      <th>Stt</th>
        <th>author</th>
        <th>category</th>
        <th>Title</th>
        <th>description</th>
        <th>content</th>
        <th>image</th>
        <th colspan="3">action</th>    
      </tr>
    </thead>
    <tbody>
   
      @foreach ($post as $posts)
      <tr>
        <th>{{$posts->id}}</th>
        <th>{{$posts->user->name}}</th>
        <th>{{$posts->category->name}}</th>
        <th>{{$posts->title}}</th>
        <th>{{str_limit($posts->description,20)}}</th>
      <th><a href="{{route('posts.show',$posts->id)}}"><i class="fa fa-file-text-o"> </i></a></th>
        <th><img src="{{$posts->image}}" alt="" width="150" height="150"></th>
        <th><a href="{{route('posts.edit',[$posts->id])}}" class="btn btn-info">Edit</a></th>
        <th>
          <form action="{{route('posts.destroy',[$posts->id])}}" method="POST">
            @method('DELETE')
            @csrf
           <button type="submit" class="btn btn-danger">Delete</button>
          </form>
        </th>
        </tr>
      @endforeach
     </tbody>
  </table>
</div>
    </section>

@endsection