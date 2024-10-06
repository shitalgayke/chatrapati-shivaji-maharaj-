<?php
// Connect to the database
$servername = "your_database_host";
$uname = "your_database_uname";
$password = "your_database_password";
$dbname = "dashboard";

$conn = new mysqli($servername, $uname, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Fetch data from the database
$sql = "SELECT * FROM statistics";
$result = $conn->query($sql);

// Store the data in an array
$data = array();
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $data[] = $row;
    }
}

// Close the database connection
$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <!-- Add your CSS styles here -->
</head>
<body>

    <h1>Dashboard</h1>

    <!-- Display the data on the dashboard -->
    <div>
        <?php foreach ($data as $item): ?>
            <div>
                <h3><?php echo $item['category']; ?></h3>
                <p><?php echo $item['value']; ?></p>
            </div>
        <?php endforeach; ?>
    </div>

    <!-- Add your JavaScript if needed -->

</body>
</html>
