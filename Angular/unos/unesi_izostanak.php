 <form action="../dodaj/dodaj_izostanak.php" method="post" class="form-horizontal">

<div class="form-group"><label class="col-sm-2 control-label">Opravdano</label>
        <select class="form-control" name="Opravdano">
            <option value=1>Opravdano</option>
            <option value=0>Neopravdano</option>
        </select>
    </div>
 
    <div class="form-group"><label class="col-sm-2 control-label">Datum</label>
            <div class="col-sm-10"><input type="date" class="form-control" name="Datum"></div>
    </div>

     <div class="form-group"><label class="col-sm-2 control-label">Učenik</label>
        <div class="col-sm-10">
            <select class="form-control m-b chosen" name="Korisnik_idUcenik">
                <?php

                include '../baza/korisnici.php';

                $korisnici = new Korisnik();
                $rezultat = $korisnici->getUcenik();

                if ($rezultat->num_rows > 0) {
                    while($redak = $rezultat->fetch_assoc()) { ?>
                        <option value="<?php echo $redak["idKorisnik"]; ?>"><?php echo $redak["Ime"]; ?> <?php echo $redak["Prezime"]; ?></option>
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