<?php include "db_conn.php";?>

<?php 
define('PATH','http://localhost/shivaji%20maharaj/');
if(isset($_POST['submit']))
{
    
  extract($_POST);
  $path = "upload/";
  $path = $path . basename( $_FILES['image']['name']);
move_uploaded_file($_FILES['image']['tmp_name'], $path);
    $path1 = PATH.$path;


  $add="insert into fort(title,description,address,link,image) values('$title','$description','$address','$link','$path1')";        
  $result=mysqli_query($conn,$add) or die(mysqli_error($conn));
  if($result)
  {
    echo "<script>";
    echo "alert('Inserted Successfully..!');";
    echo "window.location.href='viewfort.php';";
    echo "</script>";
  }
  else
  {
    echo "<script>";
    echo "alert('Error in insert');";
    echo "window.location.href='viewfort.php';";
    echo "</script>";
  }
}

?>


<?php include "header.php";?>
<script type="text/javascript">
            $(document).ready(function(){
                //Image file input change event
                $("#image").change(function(){
                    readImageData(this);//Call image read and render function
                });
            });
             
            function readImageData(imgData){
                if (imgData.files && imgData.files[0]) {
                    var readerObj = new FileReader();
                    
                    readerObj.onload = function (element) {
                        $('#preview_img').attr('src', element.target.result);
                    }
                    
                    readerObj.readAsDataURL(imgData.files[0]);
                }
            }
        </script>

<!-- Form Start -->
<div class="container-fluid pt-4 px-4">
    <div class="row g-4">
        <div class="col-sm-12 col-xl-6">
            <div class="bg-secondary rounded h-100 p-4">
                <h6 class="mb-4">ADD FORT</h6>
                <form  method="POST" enctype="multipart/form-data">
                    <!-- Add the appropriate action and method to the form -->

                    <div class="mb-3">
                        <label for="title" class="form-label">Title</label>
                        <input type="text" class="form-control" id="title" name="title"  >
                    </div>
                    <div class="mb-3">
                        <label for="description" class="form-label">Description</label>
                        <input type="text" class="form-control" id="description" name="description" >
                    </div>
                    <div class="mb-3">
                        <label for="address" class="form-label">Address</label>
                        <input type="text" class="form-control" id="address" name="address">
                    </div>
                    <div class="mb-3">
                        <label for="link" class="form-label">Link</label>
                        <input type="text" class="form-control" id="link" name="link">
                    </div>
                    <div class="mb-3">
                        <label for="image" class="form-label">Image</label>
                        <input type="file" class="form-control" id="image" name="image">
                    </div>

                    <button type="submit" name="submit" class="btn btn-primary">Submit</button>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- Form End -->
<?php include "footer.php";?>
