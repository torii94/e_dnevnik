
<!DOCTYPE html>
<html lang="en" ng-app="app">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
   

    <title>Učenik pregled</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    
    <script src="https://code.angularjs.org/1.3.0-rc.0/angular.min.js"></script>
    <script src="https://code.angularjs.org/1.3.0-rc.0/angular-route.min.js"></script>
    <script src="apps.js"></script>
    <script>
       app.value("id", "<?php echo $_GET["id"];?>");
    </script>
  </head>

  <body ng-controller="ctrlParent">

    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">E-Dnevnik</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="#">Profil</a></li>
            <li><a href="#">Bilješke</a></li>
          
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
        </div>
          <h2 class="sub-header"></h2>
          <div class="table-responsive">
            <table class="table table-striped" >
              <thead>
                <tr>
                  <th>Redni broj</th>
                  <th>Predmet</th> 
                  <th>Ocjene</th>
                  <th>Zaključna</th>              
                </tr>
              </thead>
              <tbody >
                <tr ng-repeat="ocjene in ocjena  | filter:searchText"
                ng-class="{ active: $index == state.selected }"
                ng-click="state.selected = $index">
                  <td > {{$index+1}} </td>
                  <td>{{ocjene.Naziv}}</td>
                  
                  <td>{{ocjene.Ocjena}}</td>
                  
                  <td></td>
                </tr>
              
              </tbody>
              
            </table>
             <table class="table table-striped" >
              <thead>
                <tr>
                  <th></th>
                  <th></th>
                 
                  <th></th>
                 
                  <th></th>
                
                </tr>
              </thead>
              <tbody >
                <tr class="info" >
                  <td > Konačan uspijeh </td>
                  <td></td>
                  
                  <td></td>
                  
                  <td >dobar(3)</td>
                </tr>
                <tr  class="success" >
                  <td> Opravdano </td>
                  <td></td>
                  
                  <td></td>
                  
                  <td ng-mousemove="date">15</td>
                </tr>
                <tr  class="danger">
                  <td> Neopravdano </td>
                  <td></td>
                  
                  <td></td>
                  
                  <td>25</td>
                </tr>
              
              </tbody>
              
            </table>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
