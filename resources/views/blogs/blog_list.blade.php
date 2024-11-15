<div class="row">
    @foreach ($blogs as $blog)
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
    @endforeach
</div>
