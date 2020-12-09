<?php 
include('../conn.php');
class News
{


  public $Art_title;
  public  $Art_subject;
  public $Art_image;
  public $sub_cat;


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
    
    

    
    
    
     function updateRow($id){
           $pdo=$this->database->connect();
         try{

        $stmt=  $pdo->prepare("UPDATE news set Art_title='amroz',Art_subject='amroz',Art_image='amroz',Art_date=now(),sub_sub_cat_id=11 where id=?");
         $stmt->execute([$id]);
        
  
        
             
   }catch(PDOException $e){
   return false;
       }
        
        
    }
    
    
    
    
    //deleted
   public function deleteNews($id)
    {
         try{
             
      $pdo=$this->database->connect();
      $stmt=  $pdo->prepare("DELETE FROM news WHERE  ID=?");
   
       return $stmt->execute([$id]);
          }catch(PDOException $e){
             return false;
                  }
    }
    
    
    function addRow()
 {
   try{
     $pdo=$this->database->connect();
     $qury='insert into news values(null,?,?,?,now(),?)';
    $stmt=  $pdo->prepare($qury);
    $stmt->execute([$this->Art_title,$this->Art_subject,$this->Art_image,$this->sub_cat]);
  return true;
}
    catch(PDOException $e){
return false;
    }
    
    
}}
    


 ?>