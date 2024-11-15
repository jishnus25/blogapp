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
        
        <h2 class="text-center" style="color: #d600a1; font-family: 'Dancing Script', cursive;">{{ $blog->name }}</h2>
        
        <div class="card mb-4">
            <img src="{{ $blog->image ? asset('storage/app/public/' . $blog->image) : 'https://via.placeholder.com/600x400' }}" 
                 class="card-img-top" alt="Blog Image" style="height: 400px; object-fit: cover;">
            <div class="card-body">
                <h5 class="card-title">Author: {{ $blog->author }}</h5>
                <p class="card-text"><small class="text-muted">Posted on: {{ $blog->date }}</small></p>
                <p class="card-text">{!! $blog->content !!}</p>

            </div>
        </div>

        <a href="{{ route('index') }}" class="btn btn-secondary">Back to Blog List</a>
    </div>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</body>


</html>