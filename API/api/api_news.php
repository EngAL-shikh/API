<?php

include('../models/news.php');

$news_model=new News();

if (isset($_GET['id'])) {
	echo json_encode($news_model->getSingleRows($_GET['id']));

	
}else{
echo json_encode($news_model->getRows());

}

if (isset($_GET['type'])) {

	echo json_encode($news_model->NewsType($_GET['type']));
}



?>