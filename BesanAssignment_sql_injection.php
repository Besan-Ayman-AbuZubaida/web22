<?php
$errors=[];
$email='';
$password='';
$userName='';
$fileName='';
$servername="localhost"; $user_name='root'; $pass=''; $db_name='web2';
$conn=new mysqli($servername, $user_name, $pass, $db_name);
if($conn->connect_error){
    die("Connecton Failed: ".$conn-> connect_error);
}
else{
    // echo "connection succeed";


if(isset($_POST['submit'])){

    if($_POST['userName']=='') 
        $errors[]='Please Enter User name';
     
    else
        $userName=$_POST['userName'];

    if($_POST['email']=='')
        $errors[]='Please Enter Email';
    
    else {  
        if(!filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)){
           
            $errors[]='Email not valid';
        }
         else{
          $email=$_POST['email'];
          
        }
    }
    if($_POST['password']==''){
        $errors[]='Please Enter password';
    }
    else{
        if (strlen($_POST['password'])<8)
            $errors[]="Password can't be less than 8 characters";
        else{
            $password=$_POST['password'];
            
        }
        
    }
    if($_FILES){
        if(!file_exists('uploads')){
            mkdir('uploads');
        }
    
    $fileExtensions=['jpg','png','jpeg'];
    $fileName=$_FILES['file']['name'];
    $arr=explode('.',$fileName);
    $myfileExt=strtolower(end($arr));
    if(!in_array($myfileExt,$fileExtensions)){
        $errors[] = 'File must be image of extensions jpg, png or jpeg ';
    }
    else{
    if($_FILES['file']['size'] > 1024*1024) {
        $errors[] = 'Image size must be less than 1 MB';
    }
    else{
        $fileTmp=$_FILES['file']['tmp_name'];
        $moveTo=getcwd()."\\uploads\\$fileName";
        if(move_uploaded_file($fileTmp,$moveTo)) echo "moved successfully to uploads file";
    }
}
         
    }


if(count($errors) > 0) {
    echo "<ul class='text-danger'>";
    foreach($errors as $error){
        echo "<li>" . $error . "</li>";
    }
    echo '</ul>';
}
else{ //count($errors)== 0
    
    $hash = password_hash($password, PASSWORD_DEFAULT);
    $gender=$_POST['gender'];
    $q=$conn->prepare("insert into users set user_name=?, email=?, password=?, gender=?, file_name=?");
    $q->bind_param("sssss",$userName,$email,$hash,$gender,$fileName);
    $q->execute();
    
}}}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
</head>
<body>
<form action="" method="post" enctype="multipart/form-data">
<div class="mb-3">
    <label for="exampleInputUserName" class="form-label">User Name</label>
    <input type="text" class="form-control" name="userName" value=<?php echo htmlspecialchars($userName, ENT_QUOTES); ?> >
  </div>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="email" value=<?php echo htmlspecialchars($email, ENT_QUOTES); ?>> 
    <!-- <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div> -->
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" name="password">
  </div>

    <div class="mb-3 form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1" name="remember">
    <label class="form-check-label" for="exampleCheck1">Remember me</label>
  </div>

  Gender
  <div class="form-check">
  <input class="form-check-input" type="radio" name="gender" value="male" id="flexRadioDefault1">
  <label class="form-check-label" for="flexRadioDefault1">
   Male
  </label>
</div>
<div class="form-check">
   
  <input class="form-check-input" type="radio" name="gender" value="female" id="flexRadioDefault2" checked>
  <label class="form-check-label" for="flexRadioDefault2">
    Female
  </label>
</div>

<input type="file" name="file" > <br> <br>
  <button type="submit" name="submit" class="btn btn-primary">Submit</button>
</form>
    
</body>
</html>