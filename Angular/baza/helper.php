<?php

require_once 'dba.php';

class Helper {

    function getAll()
    {
        $sql = "SELECT * FROM ".strtolower(get_class($this));

        $baza = new Baza();
        $rezultat = $baza->query($sql);

        return $rezultat;
    }

    function getByID($id)
    {
        $sql = "SELECT * FROM ".strtolower(get_class($this))." WHERE id=$id";

        $baza = new Baza();
        $rezultat = $baza->query($sql);


        if ($rezultat->num_rows > 0) {
            while ($redak = $rezultat->fetch_assoc()) {
                return $redak;
            }
        }
    }

    function izbrisi($id){
        $sql = "DELETE FROM ".strtolower(get_class($this))." WHERE id = $id";

        $baza = new Baza();
        $rezultat = $baza->query($sql);

        return $rezultat;
    }
}
