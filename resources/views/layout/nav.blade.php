<nav class="navbar navbar-expand-lg navbar-light" style="background-color: #006e6d;"> 
  <div class="container-fluid">
    <a class="navbar-brand" style="color: aliceblue; font-family:cursive" href="{{url('/')}}">Blog App</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" style="color: aliceblue; font-family:cursive" href="{{url('/')}}">Home</a>
        </li>
        <li class="nav-item">
          {{-- <a class="nav-link" href="#">Link</a> --}}
        </li>
        <li class="nav-item">
          {{-- <a class="nav-link disabled">Disabled</a> --}}
        </li>
      
      
      </ul>
      <form class="d-flex" id="search-form">
        <input class="form-control me-2" type="search" id="search-input" placeholder="Search" aria-label="Search">
        <button class="btn btn-primary" type="submit">Search</button>
    </form>
    

      <div class="nav-item">
        <img src="{{ asset('resources/img/person.png')}}" alt="User Icon" class="nav-link" style="cursor: pointer; height:75px; width:75px" onclick="promptLogin()">
      </div>
    </div>
  </div>
</nav>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
  $(document).ready(function() {
      $('#search-form').submit(function(e) {
          e.preventDefault();
          var searchQuery = $('#search-input').val();
          
          $.ajax({
              url: '{{ route("blogs.search") }}',  
              method: 'GET',
              data: { search: searchQuery },
              success: function(response) {
                  $('.row').html(response); 
              },
              error: function() {
                  alert('Error fetching search results.');
              }
          });
      });
  });
</script>

<script>
  function promptLogin() {
    if (confirm("Please log in to continue.")) {
      window.location.href = "{{ route('LoginForm') }}";  
    }
  }
</script>


