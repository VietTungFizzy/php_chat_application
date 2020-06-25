<?php
include_once 'database_connection.php';

session_start();

$message='';

if(isset($_SESSION['user_id']))
{
    header('location:index.php');
}

if (isset($_POST["login"]))
{
    $query = "SELECT * FROM login WHERE username= :username";
    $statement = $connect->prepare($query);
    $statement->execute(array(
       ':username'=>$_POST["username"] 
    ));
    $count = $statement->rowCount();
    if($count > 0)
    {
        
    }
}