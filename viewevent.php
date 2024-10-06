<?php
include "db_conn.php";
include "header.php";
?>
            <!-- Table Start -->
            <div class="container-fluid pt-4 px-4">
                <div class="row g-4">
                   
                    
                   
                    <div class="col-sm-12 col-xl-6">
                        <div class="bg-secondary rounded h-100 p-4">
                            <h6 class="mb-4">VIEW EVENT</h6>
                            <table class="table table-dark">
                                <thead>
                                    <tr>
                                        <th scope="col">Sr no.</th>
                                        <th scope="col">Event Name</th>
                                        <th scope="col">Description</th>
                                        <th scope="col">Address</th>
                                        <th scope="col">Time</th>
                                        <th scope="col">Date</th>
                                        <th scope="col">Image</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <?php 
                                            $asd = "SELECT * FROM event";
                                            $view = mysqli_query($conn, $asd) or die(mysqli_error($conn));
                                            $count = 1;
                                            while ($fetch = mysqli_fetch_array($view)) { 
                                            ?>
                                                <tr>
                                                    <th scope="row"><?php echo $count++; ?></th>
                                                    <td><?php echo htmlspecialchars($fetch['event_name']); ?></td>
                                                    <td><?php echo htmlspecialchars($fetch['description']); ?></td>
                                                    <td><?php echo htmlspecialchars($fetch['address']); ?></td>
                                                    <td><?php echo htmlspecialchars($fetch['time']); ?></td>
                                                    <td><?php echo htmlspecialchars($fetch['date']); ?></td>
                                                    <td><img src="<?php echo htmlspecialchars($fetch['image']); ?>" width="40" height="40"></td>
                                                    <!-- If you want to display an image, add the necessary code here -->
                                                </tr>
                                  <?php } ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    
                    
                    
                </div>
            </div>
            <!-- Table End -->
            <?php include "footer.php";?>


          