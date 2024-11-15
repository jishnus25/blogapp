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

        .form-container {
            background-color: darkcyan;
            padding: 30px;
            max-width: 500px;
            width: 100%;
            max-height: 75%;
            box-sizing: border-box;
            border-radius: 8px;
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-left: 450px;
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
            margin-top: 10px;
        }

        button:hover {
            background-color: #0056b3;
        }

        .button-container {
            display: flex;
            gap: 10px;
            width: 100%;
            justify-content: space-between;
            margin-top: 20px;
        }
    </style>



    <div class="container">

      
        
        

        <div class="form-container ">


            <div id="error-messages" class="alert alert-danger" style="display: none; color: red;">
                <ul id="error-list"></ul>
            </div>

            <form id="blog-form" enctype="multipart/form-data" method="POST">
                @csrf


                <div class="button-container">
                    <a href="{{ route('create.blog') }}">
                        <button type="button">Create Blog</button>
                    </a>
                    <a href="{{ route('manage.blog') }}">
                        <button type="button">Manage Blog</button>
                    </a>
                   
                </div>
                

            </form>
            <form action="{{ route('admin.logout') }}" method="POST" style="display:inline;">
                @csrf
                @method('POST')
                <button type="submit">Logout</button>
            </form>
        </div>
    </div>











    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous">
    </script>


</body>

</html>
