<?php

class Baza {

    protected static $connection;

    protected static $host = 'localhost';
    protected static $username = 'root';
    protected static $password = '';
    protected static $database = 'e_dnevnik';

    public function connect()
    {
        // Try and connect to the database
        if(!isset(self::$connection))
        {
            self::$connection = new mysqli(self::$host, self::$username, self::$password ,self::$database);
            self::$connection->set_charset('utf8');
        }
        // If connection was not successful, handle the error
        if(self::$connection === false)
        {
            // Handle error - notify administrator, log to a file, show an error screen, etc.
            echo 'Cannot connect to database.';
            return false;
        }
        return self::$connection;
    }

    public function query($query)
    {
        // Connect to the database
        $connection = $this->connect();
        // Query the database
        $result = $connection->query($query);
        return $result;
    }

    public function select($query)
    {
        $rows = array();
        $result = $this->query($query);
        if($result === false)
        {
            return false;
        }
        while($row = $result->fetch_assoc())
        {
            $rows[] = $row;
        }
        return $rows;
    }

    public function error()
    {
        $connection = $this->connect();
        return $connection->error;
    }

    public function quote($value)
    {
        $connection = $this->connect();
        return "'" . $connection -> real_escape_string($value) . "'";
    }

}
