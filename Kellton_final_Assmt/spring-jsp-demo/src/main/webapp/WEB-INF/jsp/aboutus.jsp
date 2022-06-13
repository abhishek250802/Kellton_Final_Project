<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
}

html {
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
}

.column {
  float: left;
  width: 33.3%;
  margin-bottom: 16px;
  padding: 0 8px;
}
</style>
</head>
<body>
<div class="about-section">
  <h1>About Us Page</h1>
  <p>Some text about who we are and what we do.</p>
  <p>Resize the browser window to see that this page is responsive by the way.</p>
</div>

<h2 style="text-align:center">Our Team</h2>
<div class="row">
  <div class="column">
    <div class="card">
      <img src="https://lh3.googleusercontent.com/a-/AOh14Gjr2nWzy9HFz8ptPQcbs3VDSjLZEm6tpP2SRhbZxg=s288-p-rw-no" alt="Jane" style="width:100%">
      <div class="container">
        <h2>Harsh Nath</h2>
        <p class="title">CEO & Founder</p>
        <p>Some text that describes me lorem ipsum ipsum lorem.</p>
        <p>harsh.nath@kelltontech.com</p>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <img src="https://pps.whatsapp.net/v/t61.24694-24/287195842_852337149072841_7371882918337971821_n.jpg?ccb=11-4&oh=01_AVxgy0c90jpcRmdPFv2_Z7kYiX4lDZSvCVaE81inCBA6NQ&oe=62B88506" alt="Mike" style="width:100%">
      <div class="container">
        <h2>Abishek Kumar Chaudhary </h2>
        <p class="title">Art Director</p>
        <p>Some text that describes me lorem ipsum ipsum lorem.</p>
        <p>abhishek.chaudhary2@kelltontech.com</p>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <img src="https://pps.whatsapp.net/v/t61.24694-24/261246792_2166887403466281_9014381877787682488_n.jpg?ccb=11-4&oh=01_AVwqMKoivRWkGmsuqxf_Xti19wI3bUMkbfui_A-93E8B6A&oe=62B540D4" alt="John" style="width:100%">
      <div class="container">
        <h2>Shubham Sheth</h2>
        <p class="title">Designer</p>
        <p>Some text that describes me lorem ipsum ipsum lorem.</p>
        <p>shubham.sheth@kelltontech.com</p>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>
</div>
</body>
</html>