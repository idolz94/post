<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;
use App\Post;
use Illuminate\Support\MessageBag;
use Validator;
use Illuminate\Validation\ValidationException;
use Auth;
use Illuminate\Http\File;
use Illuminate\Support\Facades\Storage;
class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function adminAll(){
        $postCount = Post::count();
        return view('admin',compact('postCount'));
    }



        //Post All Admin
    public function index()
    {
        $post = Post::all();
        return view('post.index',compact('post'));
    }

        //Post All Json
    public function indexJson(){
        $post = Post::paginate(5);
        return response()->json($post,200);
    }


    public function create()
    {
        $cate = Category::all();
        return view('post.form',compact('cate'));
    }

  
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */


    public function store(Request $request)
    {
    	$validator = Validator::make($request->all(), [
            'title' => 'required | min:4|unique:posts',
    		'image' => 'required ',
    		'description' => 'required | min:4',
    		'content' => 'required'
        ]);

    	if ($validator->fails()) {
         $errors = $validator->errors();
            return back()->withErrors($errors)->withInput();
           //return response()->json($errors);
        } else {
            if ($request->hasFile('content')) {
                $file = $request->content;
                $fileName = $request->title.'.html';
                $file->move('./content/', $fileName);   
            }
       
            Post::create([
                'cate_id' => $request->cate_id,
                'author_id' =>$request->author_id,
                'title' => $request->title,
                'image' => $request->image,
                'content' => './content/'.$fileName,
                'description' => $request->description,
            ]);
            return redirect()->route('posts.index');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $post = Post::findOrFail($id);
            $related= Post::where('cate_id', '=', $post->category->id)
            ->where('id', '!=', $post->id)
            ->inRandomOrder()->take(2)->get();
       
            $view = file_get_contents(public_path($post->content));  
           // return  file_get_contents(public_path($post->content));  
            return view('post.details',compact('view','related'));
    }


    public function postId($id){
      
        $cate = Category::whereId($id)->with('post')->get();
        return response()->json($cate,201);
    }
    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $post = Post::findOrFail($id);
        $cate = Category::all();
        return view('post.edit',compact('post','cate'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
       $post = Post::find($id);
       if ($request->hasFile('content')) {
                
        $file = $request->content;
        $fileName = str_slug($request->title).'.html';
        $file->move('./content/', $fileName);   
        
    }
  
        $post->update([     
        'cate_id' => $request->cate_id,
        'author_id' =>$request->author_id,
        'title' => $request->title,
        'image' => $request->image,
        'content' => './content/'.$fileName,
        'description' => $request->description,]);
     
       return redirect()->route('posts.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $post = Post::findOrFail($id);
        $post->delete();
        return redirect()->route('posts.index');
    }

    public function search(Request $request){
        $post = Post::Where('title','LIKE','%'.$request->search.'%')->get();
        return view('post.index',compact('post'));
    }

}
