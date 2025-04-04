<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Testdb extends CI_Controller {

    public function index()
    {
        echo "Use /testdb/dbtest to run the DB connection test.";
    }

    public function dbtest()
    {
        $this->load->database();
        $query = $this->db->query("SELECT DATABASE() as db");

        $result = $query->row();
        echo "Connected to database: " . $result->db;
    }
}
