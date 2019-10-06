
@extends('layout.layout')
@section('content')

<style>
.form-group{width:80%;}
</style>
  <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
    

        <!-- Main content -->
        <section class="content">

        <div class="container">
        <div class="row">
      <form action="{{route('posts.store')}}" method="POST"  enctype="multipart/form-data">
      @csrf

      
         <input type="hidden" name="author_id" value="1"> {{-- value="Auth::user()->id --}}
            <div class="form-group">
                <label for="email">Category:</label>
              <select name="cate_id">
                  @foreach ($cate as $cates)
                    <option value="{{$cates->id}}">{{$cates->name}}</option>
                  @endforeach
              </select>
            </div>
            <div class="form-group">
                <label for="email">Title:</label>
            <input type="text" class="form-control" id="name" name="title" value="{{old('title')}}">
  
            
            </div>
            <div class="form-group">
                <label for="pwd">Description</label>
                <input type="text" class="form-control" id="name" name="description" value="{{old('description')}}">
          
            </div>
         
            <div class="form-group">
                <label for="pwd">Image</label>
                <input type="text" class="form-control" id="name" name="image" value="{{old('image')}}">
   
            </div>
            <div class="form-group">
                <label for="pwd">Content </label>
                <input type="file" name="content" >
            </div>
            <div class="form-group">
            <button type="submit" class="btn btn-default">Submit</button>
            </div>
      </form> 
      </div>
    </div>
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  

  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->

@endsection