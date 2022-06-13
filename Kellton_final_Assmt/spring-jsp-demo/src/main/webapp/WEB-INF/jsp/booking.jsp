<html>
<head>

<title> New Booking </title>
<style>
.btn{

appearance: none;
  background-color: #2ea44f;
  border: 1px solid rgba(27, 31, 35, .15);
  border-radius: 6px;
  box-shadow: rgba(27, 31, 35, .1) 0 1px 0;
  box-sizing: border-box;
  color: #fff;
  cursor: pointer;
  display: inline-block;
  font-family: -apple-system,system-ui,"Segoe UI",Helvetica,Arial,sans-serif,"Apple Color Emoji","Segoe UI Emoji";
  font-size: 14px;
  font-weight: 600;
  margin-left:200px;
  margin-top:20px;
}
h2{font-color="yellow"}

</style>

</head>

<h2 > ${errorMsg} </h2>

<body style="background-color:powderblue;">


<form method ="post" style="margin: auto; margin-top:260px;font-size:25px;width: 600px;">
<h3>ENTER DETAILS:</h3>
 Source Airport : <input type ="text" name="Source" placeholder="Source Airport"/>
<br>

 Destination Airport : <input type ="text" name="Destination" placeholder="Destination Airport"/>
 
<br>
No of Seats Required : <input type ="text" name="Seats" /> <br>
Date of Journey : <input type ="date"> <br>
<button class="btn">Submit</button>

</form>
</body>

</html>