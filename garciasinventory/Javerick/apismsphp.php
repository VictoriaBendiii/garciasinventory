<!DOCTYPE html>
<?php
if(isset($_POST['abc'])){
	// Authorisation details.
	$username = "javs_aqui@yahoo.com.ph";
	$hash = "79bbea69057d84e379aa46f4dfa50173dafc14c67ec22ea28f4fd661c6b1b3fb";

	// Config variables. Consult http://api.txtlocal.com/docs for more info.
	$test = "0";

	// Data for text message. This is the text message data.
	$sender = $_POST['sender']; // This is who the message appears to be from.
	$numbers = $_POST['num']; // A single number or a comma-seperated list of numbers
	$message = $_POST['mess'];
	// 612 chars or less
	// A single number or a comma-seperated list of numbers
	$message = urlencode($message);
	$data = "username=".$username."&hash=".$hash."&message=".$message."&sender=".$sender."&numbers=".$numbers."&test=".$test;
	$ch = curl_init('http://api.txtlocal.com/send/?');
	curl_setopt($ch, CURLOPT_POST, true);
	curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
	curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
	$result = curl_exec($ch); // This is the result from the API
	curl_close($ch);
}
?>
<html>
    <head>
        <meta charset="utf-8">
        <title></title>
    </head>
    <body>
        <form method="post" action="apismsphp">
            <table align="center">
                <tr>
                    <td>sender:</td>
                    <td><input type="text" name="sender" placeholder="enter your name"></td>
                </tr>
                <tr>
                    <td>number:</td>
                    <td><input type="text" name="num" placeholder="enter your number"></td>
                </tr>
                <tr>
                    <td>message:</td>
                    <td><textarea name="mess" placeholder="enter your message"></textarea></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" name="abc" value="send"></td>
                </tr>
            </table>
        </form>
    </body>
</html>