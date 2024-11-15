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

<body>


    <style>
        body {
            display: flex;
            min-height: 100vh;
            background-color: beige;
            justify-content: center;
            align-items: center;
            margin: 0;
        }

        .form-group {
            margin-bottom: 20px;
            color: azure
        }

        .form-container {
            background-color: darkcyan;
            padding: 30px;
            max-width: 500px;
            width: 100%;
            max-height: 75%;
            margin-left: 450px;
            box-sizing: border-box;
            border-radius: 8px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        h2 {
            text-align: center;
            color: white;
        }

        input,
        textarea {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border-radius: 4px;
            border: 1px solid #ccc;
        }

        button {
            width: 100%;
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

        .editor {
            margin-top: 10px;
        }
    </style>

    <div class="container">
        <div class="form-container">
            <div id="error-messages" class="alert alert-danger" style="display: none; color: red;">
                <ul id="error-list"></ul>
            </div>
            <form id="blog-form" enctype="multipart/form-data" method="POST">
                @csrf
                <input type="hidden" name="_method" value="PUT"> 

                <div class="form-group">
                    <h2>Edit Blog Post</h2>
                    <label for="name">Blog Name</label>
                    <input type="text" name="name" id="name" value="{{ $blog->name }}" required>
                </div>
                <div class="form-group">
                    <label for="date">Date</label>
                    <input type="date" name="date" id="date" value="{{ $blog->date }}" required>
                </div>
                <div class="form-group">
                    <label for="author">Author</label>
                    <input type="text" name="author" id="author" value="{{ $blog->author }}" required>
                </div>
                <div class="editor">
                    <label for="content">Content</label>
                    <textarea name="content" id="content" rows="5" required>{{ $blog->content }}</textarea>
                </div>

                <div class="form-group">
                    <label for="image">Image</label>
                    <input type="file" name="image" id="image" onchange="previewImage(event)">

                    @if ($blog->image)
                        <p>Current Image:</p>
                        <img id="currentImagePreview" src="{{ asset('storage/app/public/' . $blog->image) }}" alt="Blog Image"
                            style="max-width: 100px;">
                    @else
                        <p id="noImageText">No image available</p>
                    @endif

                    <p id="newImageText" style="display: none;">Selected Image:</p>
                    <img id="newImagePreview" src="" alt="New Image Preview"
                        style="max-width: 100px; display: none;">
                </div>

                <div id="error-messages" style="display: none;">
                    <ul id="error-list" style="color: red;"></ul>
                </div>

                <div id="blogMessage"></div>
                <button type="submit">Update Blog</button>
            </form>

        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <script>
        $(document).ready(function() {
            $('#content').summernote({
                height: 300,
                minHeight: null,
                maxHeight: null,
                focus: true,
                callbacks: {
                    onInit: function() {
                        $('.note-editor').css('background-color', '#f0f0f0');
                    }
                }
            });

            $('#blog-form').on('submit', function(e) {
                e.preventDefault();

                var formData = new FormData(this);
                formData.append('_method', 'PUT'); 

                $('#error-messages').hide();
                $('#error-list').html('');

                $.ajax({
                    url: "{{ route('blogs.update', ['id' => $blog->id]) }}",
                    method: "POST", 
                    data: formData,
                    processData: false,
                    contentType: false,
                    success: function(response) {
                        $('#blogMessage').html(
                            '<div style="color: #fff; font-weight: bold; margin-left:100px;">' + response
                            .message + '</div>'
                        );

                        setTimeout(function() {
                            window.location.href = response.redirect_url;
                        }, 2000);
                    },
                    error: function(xhr) {
                        if (xhr.status === 422) {
                            var errors = xhr.responseJSON.errors;
                            var errorList = '';
                            $.each(errors, function(field, messages) {
                                errorList += '<li>' + messages.join('<br>') + '</li>';
                            });
                            $('#error-list').html(errorList);
                            $('#error-messages').show();
                        }
                    }
                });
            });

        });
    </script>

    <script>
        function previewImage(event) {
            const input = event.target;
            const file = input.files[0];

            const currentImagePreview = document.getElementById('currentImagePreview');
            const noImageText = document.getElementById('noImageText');
            const newImageText = document.getElementById('newImageText');
            const newImagePreview = document.getElementById('newImagePreview');

            if (file) {
                const reader = new FileReader();
                reader.onload = function(e) {

                    if (currentImagePreview) {
                        currentImagePreview.style.display = 'none';
                    }
                    if (noImageText) {
                        noImageText.style.display = 'none';
                    }


                    newImagePreview.src = e.target.result;
                    newImagePreview.style.display = 'block';
                    newImageText.style.display = 'block';
                };
                reader.readAsDataURL(file);
            }
        }
    </script>
    <!-- Summernote CSS -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.18/summernote.min.css" rel="stylesheet">

    <!-- jQuery (necessary for Summernote) -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <!-- Summernote JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.18/summernote.min.js"></script>



    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous">
    </script>
</body>






</html>
