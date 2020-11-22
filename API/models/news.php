<?php 
include('../conn.php');
class News
{



public $database;

function __construct()
{

  $this->database=new DBConfig();

}


function getRows(){

	$pdo=$this->database->connect();
    
    
   $stat= $pdo->prepare("SELECT news.Art_title,Art_subject,Art_image,Art_date,cat_news.cat_title,sub_cat_news.sub_cat_title,sub_sub_cat_news.sub_sub_cat_title FROM news,cat_news,sub_cat_news,sub_sub_cat_news WHERE sub_sub_cat_news.sub_sub_cat_id=news.sub_sub_cat_id AND sub_sub_cat_news.sub_cat_id=sub_cat_news.sub_cat_id AND sub_cat_news.cat_id=cat_news.cat_id 
"

);
    
    $stat->execute();
    
    return $stat->fetchAll(PDO::FETCH_OBJ);
    
    
}
    

 function getSingleRows($id){

  $pdo=$this->database->connect();
    
    
   $stat= $pdo->prepare("SELECT news.Art_title,Art_subject,Art_image,Art_date,cat_news.cat_title,sub_cat_news.sub_cat_title,sub_sub_cat_news.sub_sub_cat_title FROM news,cat_news,sub_cat_news,sub_sub_cat_news WHERE sub_sub_cat_news.sub_sub_cat_id=news.sub_sub_cat_id AND sub_sub_cat_news.sub_cat_id=sub_cat_news.sub_cat_id AND sub_cat_news.cat_id=cat_news.cat_id and news.id=?
"

);
    
    $stat->execute([$id]);
    
    return $stat->fetchAll(PDO::FETCH_OBJ);
    
    
}




function NewsType($type){

    $pdo=$this->database->connect();
    
    
   $stat= $pdo->prepare("SELECT news.Art_title,Art_subject,Art_image,Art_date,cat_news.cat_title,sub_cat_news.sub_cat_title,sub_sub_cat_news.sub_sub_cat_title FROM news,cat_news,sub_cat_news,sub_sub_cat_news WHERE sub_sub_cat_news.sub_sub_cat_id=news.sub_sub_cat_id AND sub_sub_cat_news.sub_cat_id=sub_cat_news.sub_cat_id AND sub_cat_news.cat_id=cat_news.cat_id AND cat_news.cat_id=?");
    
    $stat->execute([$type]);
    
    return $stat->fetchAll(PDO::FETCH_OBJ);
    
}
    
    
    
    function addRow($data){
        
        
    }
    
     function updateRow($id){
        
        
    }
    
         function deleteRow($id){
        
        
    }
    
    
}

 ?>