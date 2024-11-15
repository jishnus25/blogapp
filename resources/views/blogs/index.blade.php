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

    <div class="container mt-5">
        @include('layout/nav')
        <h2 class="text-center" style="color: #d600a1; font-family: 'Dancing Script', cursive;">Latest Blog Posts</h2>
        <select id="author-filter" class="form-select">
            <option value="">Select an Author</option>
            @foreach ($authors as $author)
                <option value="{{ $author }}">{{ $author }}</option>
            @endforeach
        </select>

        <div class="alert-container"></div>
        <hr>

        <div class="row">

            @forelse ($blogs as $blog)
                <div class="col-md-4 mb-4" id="blog-{{ $blog->id }}">
                    <div class="card">
                        <img src="{{ $blog->image ? asset('storage/app/public/' . $blog->image) : 'https://via.placeholder.com/300' }}"
                            class="card-img-top" alt="Blog Image" style="height: 200px; object-fit: cover;">
                        <div class="card-body">
                            <h5 class="card-title">{{ $blog->name }}</h5>
                            <p class="card-text">Author: {{ $blog->author }}</p>
                            <p class="card-text"><small class="text-muted">Posted on: {{ $blog->date }}</small></p>
                            <a href="{{ route('blogs.show', $blog->id) }}" class="btn btn-primary">Read More</a>
                        </div>
                    </div>
                </div>
            @empty
                <div class="col-12 text-center">
                    <h2 style="font-family: 'Arial', sans-serif; color: #888;">
                        No blogs available 😞
                    </h2>
                </div>
            @endforelse
        </div>
    </div>

    <script>
        $(document).ready(function() {
            $('#author-filter').change(function() {
                const author = $(this).val();
    
                $.ajax({
                    url: '{{ route('blogs.filter') }}',
                    method: 'GET',
                    data: { author },
                    success: function(response) {
                        $('.row').html(response);
                    },
                    error: function(xhr) {
                        console.error('An error occurred:', xhr.responseText);
                    }
                });
            });
        });
    </script>
    

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</body>

</html>
