<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <title>Bootstrap Forms</title>
  </head>
  <body>
    
    <div class="container">
        <h3 class="display-4 text-muted">Admin Login Form</h3>
        <div class="row">
        
        <div class="col-sm-9">
        <form action="Login" method="post">
             
             <div class="form-group">
                 <label for="username">UserName</label>
                 <input class="form-control" type="text" name="username" placeholder="Username">
                 <small class="form-text text-muted">Your Name will not be shared with  anyone.</small>
             </div>
             
             
             <div class="form-group">
                 <label for="password">Password</label>
                 <input class="form-control" type="password" name="password" placeholder="Password">
             </div>
             
             
             
             <button type="submit" class="btn btn-success">Submit</button>
        </form>
        </div>
        
        <div class="col-sm-3">
            <img src="https://image.shutterstock.com/image-vector/admin-human-resources-flat-cartoon-260nw-1587603010.jpg" alt="rabbit" class="img-fluid">
        </div>
    </div> <!-- end of row -->

</div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
  </body>
</html>