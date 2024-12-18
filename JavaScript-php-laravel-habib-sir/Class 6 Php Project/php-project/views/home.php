<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
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