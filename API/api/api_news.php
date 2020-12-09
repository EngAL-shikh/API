<?php

include('../models/news.php');

$method = $_SERVER['REQUEST_METHOD'];
$news_model=new News();

$news_model->Art_title=$_POST['title'];
$news_model->Art_subject=$_POST['subject'];
$news_model->Art_image=$_POST['image'];
$news_model->sub_cat=$_POST['cat'];


if(isset( $_SERVER['REQUEST_METHOD'])){
    
    //adding
    
    if($method=="POST"){
        
        
        
            if ($news_model->addRow()) {
            echo "news added successfuly ^_9";
            } else {
            echo "filed to add news !!";
        }
    }
    

    
    
    //update
    
        if ($method == "PUT") {
    

        $news_model->updateRow($_GET['id']);
            echo "news updated successfuly";
   
    }

    
    //deleted
if ($method == "DELETE") {
    if ($news_model->deleteNews($_GET['id'])) {
        echo "news deleted successfuly";
    } else {
        echo "filed to delete news !!";
    }


}
    
}else{
    
    //selected
    
    if (isset($_GET['id'])) {
	echo json_encode($news_model->getSingleRows($_GET['id']));

	
}else{
echo json_encode($news_model->getRows());

}

if (isset($_GET['type'])) {

	echo json_encode($news_model->NewsType($_GET['type']));
}
}


?>