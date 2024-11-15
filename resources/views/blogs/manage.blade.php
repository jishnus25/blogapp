<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Blog App</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>

<body style="background-color: beige;">
   
<style>
     button {
            width: 50%;
            padding: 12px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }

        button:hover {
            background-color: #0056b3;
        }

        .logout-button {
            margin-left: 350px;
        }
</style>
    <div class="container mt-5">
        <h2 class="text-center" style="color: #d600a1; font-family: 'Dancing Script', cursive;">Manage Blogs</h2>
        @if (session('success'))
            <div class="alert alert-success">{{ session('success') }}</div>
        @endif
        <div class="alert-container"></div>

        <hr>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Author</th>
                    <th>Date</th>
                    <th>Image</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($blogs as $blog)
                    <tr id="blog-{{ $blog->id }}">
                        <td>{{ $blog->name }}</td>
                        <td>{{ $blog->author }}</td>
                        <td>{{ $blog->date }}</td>
                        <td>
                            @if ($blog->image)
                                <img src="{{ asset('storage/app/public/' . $blog->image) }}" alt="Blog Image" style="width: 100px; height: auto;">
                            @else
                                No image available
                            @endif
                        </td>
                        <td>
                            <a href="{{ route('blogs.edit', $blog->id) }}" class="btn btn-warning btn-sm edit-blog" data-id="{{ $blog->id }}">Edit</a>
                            <button type="button" class="btn btn-danger btn-sm delete-blog" data-id="{{ $blog->id }}">Delete</button>
                        </td>
                    </tr>
                @endforeach
            </tbody>
            <hr>
         
        </table>
        <form class="logout-button" action="{{ route('admin.logout') }}" method="POST" style="display:inline;">
            @csrf
            @method('POST')
            <button type="submit">Logout</button>
        </form>
        
        
    </div>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).on('click', '.delete-blog', function () {
            var blogId = $(this).data('id');
            var url = '{{ route('blogs.delete', ':id') }}'; 
            url = url.replace(':id', blogId); 
    
            if (confirm('Are you sure you want to delete this blog post?')) {
                $.ajax({
                    url: url, 
                    type: 'DELETE',
                    data: {
                        "_token": "{{ csrf_token() }}" 
                    },
                    success: function (response) {
                        $('#blog-' + blogId).remove();
                        
                        $('.alert-container').html('<div class="alert alert-success">' + response.message + '</div>');
                        location.reload();
                    },
                    error: function (xhr) {
                        alert('Something went wrong, please try again later.');
                    }
                });
            }
        });
    </script>
    
    
</body>

</html>
