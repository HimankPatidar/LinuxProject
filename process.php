<?php
$username = $_POST['username'];
$password = $_POST['password'];

if (!empty($username) && !empty($password)) {
    $data = "Username: $username, Password: $password";
    $command = "echo \"$data\" | /home/ubuntu/backup.sh";
    $output = shell_exec($command);

    echo "Data submitted and backed up successfully!";
} else {
    echo "Please fill out the form completely.";
}
?>
