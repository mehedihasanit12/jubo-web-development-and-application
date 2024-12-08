<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>

    <ul>
        <li><a href="web.php?page=home">Home</a></li>
        <li><a href="web.php?page=about">About</a></li>
        <li><a href="web.php?page=contact">Contact</a></li>
        <li><a href="web.php?page=portfolio">Portfolio</a></li>
    </ul>


    <h1>This is home page</h1>



    <table border="1" width="700">
        <tr>
            <th>Name</th>
            <th>Email</th>
            <th>Mobile</th>
        </tr>

        <?php foreach($students as $student) { ?>
            <tr>
                <td><?php echo $student['name'];?></td>
                <td><?php echo $student['email'];?></td>
                <td><?php echo $student['mobile'];?></td>
            </tr>
            <?php } ?>
    
    </table>
</body>
</html>