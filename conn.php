<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Task1</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src = "main.js"></script>

</head>
<body>
    <div class="fade">
    <div id="head">ALL USERS</div><br><br>
    <table id="ulist">
        <th>
            <tr style="font-size:35px;font-family:Monotype Corsiva;">
            <td>Name</td>
            <td>Email</td>
            <td>City</td>
            <td>Current Credits</td>
            </tr>
        </th>
        <tbody>
    
    <?php
    $servername = "127.0.0.1";
    $username = "root";
    $password = "";
    $dbname = "task1users";
    
    $conn = mysqli_connect($servername, $username, $password, $dbname);
    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }
    
    $sql = "SELECT * FROM users";
    $result = mysqli_query($conn, $sql);
    if (mysqli_num_rows($result) > 0) {
        while($row = mysqli_fetch_assoc($result)) {
            ?>
                <tr>
                    <td class="funclick"><a href="#"><?php echo $row['name']?></a></td>
                    <td><a href="#"><?php echo $row['email']?></a></td>
                    <td><a href="#"><?php echo $row['city']?></a></td>
                    <td class="cred"><?php echo $row['current_credit']?></td>
                </tr>

            <?php
        }
    } else {
        echo "0 results";
    }
    
    //mysqli_close($conn);
    ?>
    </tbody>
    </table>
    </div>
</body>
</html>