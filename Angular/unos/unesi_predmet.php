 <form action="../dodaj/dodaj_predmet.php" method="post" class="form-horizontal">

    <div class="form-group"><label class="col-sm-2 control-label">Naziv predmeta</label>
        <div class="col-sm-10"><input type="text" class="form-control" name="Naziv"></div>
    </div>

      <div class="form-group"><label class="col-sm-2 control-label">Profesor</label>
            <div class="col-sm-10">
                <select class="form-control m-b chosen" name="Korisnik_idProfesor">
                    <?php

                    include '../baza/korisnici.php';

                    $korisnici = new Korisnik();
                    $rezultat = $korisnici->getProf();

                    if ($rezultat->num_rows > 0) {
                        while($redak = $rezultat->fetch_assoc()) { ?>
                            <option value="<?php echo $redak["idKorisnik"]; ?>"><?php echo $redak["Ime"]; ?> 
                            <?php echo $redak["Prezime"]; ?></option>
                        <?php }
                    }
                    ?>
                </select>
            </div>
        </div>

   
    <hr>
    <div class="hr-line-dashed"></div>

    <div class="form-group">
        <div class="col-sm-4 col-sm-offset-2">
            <button class="btn btn-white">Odustani</button>
            <button class="btn btn-primary" type="submit">Spremi</button>
        </div>
    </div>

</form>