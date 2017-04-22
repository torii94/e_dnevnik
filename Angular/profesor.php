
<!DOCTYPE html>
<html lang="en" ng-app="app">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
   

    <title>Profesor pregled</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>


<!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    
    <script src="https://code.angularjs.org/1.3.0-rc.0/angular.min.js"></script>
    <script src="https://code.angularjs.org/1.3.0-rc.0/angular-route.min.js"></script>
    <script src=apps.js></script>
    <script>
       app.value("id", "<?php echo $_GET["id"];?>");
    </script>
  </head>

  <body ng-controller="ctrlParent">

    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">E-dnevnik</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="#">Učenici</a></li>
            <li><a href="#">Profil</a></li>
          </ul>
          <form class="navbar-form navbar-right">
            <input ng-model="searchText" type="text" class="form-control" placeholder="Search...">
          </form>
        </div>
      </div>
    </nav>

    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
          <ul class="nav nav-sidebar">
            <li class="active"><a href="#">Overview <span class="sr-only">(current)</span></a></li>
         
        </div>
        

          <h2 class="sub-header">Section title</h2>
          <div class="table-responsive">
          
            <table class="table table-bordered" >
                <thead>
                  <tr>
                    <th>Redni broj</th>
                    <th>Ime</th>
                    <th>Prezime</th>            
                    <th>Ocjene</th>
                    <th>Nova ocjena</th>             
                    <th>Prisutan</th>
                    <th>Biljeska</th>
                    <th>Zaključna</th>
                  </tr>
                </thead>
                  <tbody >
                  
                  <tr   ng-repeat="predmeti in predmet  | filter:searchText"
                        ng-class="{ active: $index == state.selected }"
                        ng-click="state.selected = $index">
                   
                    <td>{{$index+1}} </td>
                    <td>{{predmeti.Ime}}</td>
                    <td>{{predmeti.Prezime}}</td>
                    <td >{{predmeti.Ocjena}}</td>
                    <td><a class="btn btn-primary btn-xs" href="unos/unesi_predmet_ucenik.php" role="button"> <button  class="btn btn-primary btn-xs"  type="submit">dodaj ocjenu</button> </a></td>
                    <td><label class="radio-inline checked ">
                        <input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1" checked="checked"> da
                        </label>
                        <label class="radio-inline">
                        <input type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2"> ne
                      </label>
                    </td>
                    <td><textarea class="form-control" rows="1"></textarea></td>
                    <td> <a class="btn btn-success btn-xs" href="unos/unesi_predmet_ucenik.php" role="button"> <button  class="btn btn-success btn-xs" type="submit">zakljuci</button> </a></td>
                  </tr>
                
              </tbody>
            </table>
            
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
