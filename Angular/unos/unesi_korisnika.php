 <form action="../dodaj/dodaj_korisnika.php" method="post" class="form-horizontal">
<div class="form-group"><label class="col-sm-2 control-label">Ime</label>
    <div class="col-sm-10"><input type="text" class="form-control" name="Ime"></div>
        </div>

        <div class="form-group"><label class="col-sm-2 control-label">Prezime</label>
            <div class="col-sm-10"><input type="text" class="form-control" name="Prezime"></div>
        </div>

        <div class="form-group"><label class="col-sm-2 control-label">JMBG</label>
            <div class="col-sm-10"><input type="text" class="form-control" name="JMBG"></div>
        </div>

        <div class="hr-line-dashed"></div>

        <div class="form-group"><label class="col-sm-2 control-label">Datum rodjenja</label>
            <div class="col-sm-10"><input type="date" class="form-control" name="Datum_rodjenja"></div>
        </div>

        <div class="hr-line-dashed"></div>

         <div class="form-group"><label class="col-sm-2 control-label">Tip korisnika</label>
            <div class="col-sm-10">
                <select class="form-control m-b chosen" name="Tip_Korisnika">
                    <option value="Profesor">Profesor</option>
                    <option value="Ucenik">Učenik</option>
                     <option value="Roditelj">Roditelj</option>

                </select>
            </div>
        </div>


        <div class="hr-line-dashed"></div>

             
              
        <div class="form-group"><label class="col-sm-2 control-label">Grad</label>
            <div class="col-sm-10">
                <select class="form-control m-b chosen" name="Grad_idGrad">
                    <?php

                    include '../baza/gradovi.php';

                    $gradovi = new Grad();
                    $rezultat = $gradovi->getAll();


                    if ($rezultat->num_rows > 0) {
                        while($redak = $rezultat->fetch_assoc()) { ?>
                            <option value="<?php echo $redak["idGrad"]; ?>"><?php echo $redak["Naziv"]; ?></option>
                        <?php }
                    }
                    ?>
                </select>
            </div>
        </div>
         <div class="form-group"><label class="col-sm-2 control-label">Razred</label>
            <div class="col-sm-10">
                <select class="form-control m-b chosen" name="Razred_idRazred">
                    <?php

                    include '../baza/razredi.php';

                    $razredi = new Razred();
                    $rezultat = $razredi->getAll();


                    if ($rezultat->num_rows > 0) {
                        while($redak = $rezultat->fetch_assoc()) { ?>
                            <option value="<?php echo $redak["idRazred"]; ?>"><?php echo $redak["Godina"]; ?> <?php echo $redak["Odjeljenje"]; ?></option>
                        <?php }
                    }
                    ?>
                </select>
            </div>
        </div>
                     <div class="hr-line-dashed"></div>

        <div class="form-group"><label class="col-sm-2 control-label">E-mail</label>
            <div class="col-sm-10"><input type="text" class="form-control" name="email"></div>
        </div>

        <div class="form-group"><label class="col-sm-2 control-label">Lozinka</label>
            <div class="col-sm-10"><input type="password" class="form-control" name="password"></div>
        </div>

        <div class="hr-line-dashed"></div>

        <div class="form-group">
            <div class="col-sm-4 col-sm-offset-2">
                <button class="btn btn-white">Odustani</button>
                <button class="btn btn-primary" type="submit">Spremi</button>
            </div>
        </div>

    </form>
