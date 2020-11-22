<?php 

/**
 * 
 */
class DBConfig 
{

private $host="localhost";
private $db_name="News";
private $db_user="root";
private $db_password="";

private $pdo;

function __construct(){

	$this->pdo=new PDO("mysql:host=$this->host;dbname=$this->db_name",$this->db_user,$this->db_password);



}

function connect(){

	return $this->pdo;
}



}


 ?>