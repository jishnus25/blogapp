<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blog App</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>

<body>

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
                max-width: 400px;
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

            input {
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
        </style>


        <div class="container">
            <div class="form-container">
                <div id="error-messages" class="alert alert-danger" style="display: none; color: red;">
                    <ul id="error-list"></ul>
                </div>

                <form id="login-form" method="POST">
                    @csrf
                    <div class="form-group">
                        <h2>Admin Login</h2>
                        <label for="email">Email</label>
                        <input type="email" name="email" id="email" required>
                    </div>
                    <div class="form-group">
                        <label for="password">Password</label>
                        <input type="password" name="password" id="password" required>
                    </div>
                    <button class="btn btn-primary form-group" type="submit">Login</button>
                </form>
            </div>
        </div>

        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script>
            $(document).ready(function() {
                $('#login-form').on('submit', function(e) {
                    e.preventDefault();

                    var formData = $(this).serialize();

                    $('#error-messages').hide();
                    $('#error-list').html('');

                    $.ajax({
                        url: "{{ route('admin.login') }}",
                        method: "POST",
                        data: formData,
                        success: function(response) {

                            localStorage.setItem('auth_token', response.token);

                            window.location.href = response.redirect_url;
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
                            } else if (xhr.status === 401) {
                                alert(xhr.responseJSON.message);
                            }
                        }
                    });


                });
            });

       
        </script>











        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous">
        </script>
    </body>

</html>
