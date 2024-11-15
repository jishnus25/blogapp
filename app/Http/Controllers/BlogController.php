<?php


namespace App\Http\Controllers;

use App\Models\Blog;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class BlogController extends Controller
{

    
    public function index()
    {
        $blogs = Blog::all();
        $authors = Blog::select('author')->distinct()->pluck('author');

        return view('blogs.index', compact('blogs'), compact('authors'));
    }

    public function create()
    {
        return view('blogs.create');
    }

    public function manage()
    {
        $blogs = Blog::all();
        $authors = Blog::select('author')->distinct()->get();
        return view('blogs.manage', compact('blogs'), compact('authors'));
    }

    public function blog()
    {
        if (!request()->hasCookie('auth_token')) {
            return redirect()->route('LoginForm');
        }

        return view('blogs.blog');
    }

    public function store(Request $request)
    {

        // dd($request);

        $validated = $request->validate([
            'name' => 'required',
            'date' => 'required|date',
            'author' => 'required',
            'content' => 'required',
            'image' => 'nullable|image|max:2048',
        ]);


        if ($request->hasFile('image')) {
            $validated['image'] = $request->file('image')->store('images', 'public');
        }

        Blog::create($validated);
        return response()->json([
            'message' => 'Blog created successfully!',
            'redirect_url' => route('manage.blog')
        ]);
    }


    public function destroy($id)
    {
        $blog = Blog::findOrFail($id);
        if ($blog->image && Storage::disk('public')->exists($blog->image)) {
            Storage::disk('public')->delete($blog->image);
        }
        $blog->delete();
        return response()->json([
            'message' => 'Blog deleted successfully!'
        ]);
    }
    public function edit($id)
    {
        $blog = Blog::findOrFail($id);
        return view('blogs.editBlog', compact('blog'));
    }

    public function update(Request $request, $id)
    {

        $validated = $request->validate([
            'name' => 'required|string|max:255',
            'author' => 'required|string|max:255',
            'content' => 'required|string',
            'date' => 'required|date',
            'image' => 'nullable|image|',
        ]);


        $blog = Blog::findOrFail($id);


        $blog->name = $validated['name'];
        $blog->author = $validated['author'];
        $blog->content = $validated['content'];
        $blog->date = $validated['date'];


        if ($request->hasFile('image')) {
            if ($blog->image && Storage::exists('public/' . $blog->image)) {
                Storage::delete('public/' . $blog->image);
            }
            $path = $request->file('image')->store('images', 'public');
            $blog->image = $path;
        }


        $blog->save();


        if ($request->ajax()) {
            return response()->json([
                'message' => 'Blog updated successfully!',
                'redirect_url' => route('manage.blog'),
            ]);
        }

        return redirect()->route('manage.blog')->with('success', 'Blog updated successfully!');
    }

    public function fullblog($id)
    {
        $blog = Blog::findOrFail($id);
        $authors = Blog::select('author')->distinct()->get();
        return view('blogs.show', compact('blog'), compact('authors'),);
    }

    public function search(Request $request)
    {
        $searchQuery = $request->input('search');

        $searchQuery = trim($searchQuery);
        $blogs = Blog::whereRaw('LOWER(name) LIKE ?', ['%' . strtolower($searchQuery) . '%'])
            ->get();
            



        return view('blogs.blog_list', compact('blogs'));
    }


    public function filter(Request $request)
    {
        $author = $request->input('author');
        $blogs = Blog::where('author', $author)->get();
        if ($blogs->isEmpty()) {
            return view('blogs.blog_list', compact('blogs'))->with('message', 'No blogs found for the selected author.');
        }

        return view('blogs..blog_list', compact('blogs'));
    }
}
