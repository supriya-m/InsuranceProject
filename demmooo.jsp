<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
/* Set height of body and the document to 100% to enable "full page tabs" */
body, html {
  height: 100%;
  margin: 0;
  font-family: Arial;
}

/* Style tab links */
.tablink {
  background-color: #555;
  color: white;
  float: left;
  border: none;
  outline: none;
  cursor: pointer;
  padding: 14px 16px;
  font-size: 17px;
  width: 25%;
}

.tablink:hover {
  background-color: #777;
}

/* Style the tab content (and add height:100% for full page content) */
.tabcontent {
  color: white;
  display: none;
  padding: 100px 20px;
  height: 100%;
}

#Home {background-color: red;}
#News {background-color: green;}
#Contact {background-color: blue;}
#About {background-color: orange;}
</style>
<script>

function openPage(pageName, elmnt, color) {
  // Hide all elements with class="tabcontent" by default */
  var i, tabcontent, tablinks;
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }

  // Remove the background color of all tablinks/buttons
  tablinks = document.getElementsByClassName("tablink");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].style.backgroundColor = "";
  }

  // Show the specific tab content
  document.getElementById(pageName).style.display = "block";

  // Add the specific color to the button used to open the tab content
  elmnt.style.backgroundColor = color;
}

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();
</script>
</head>
<body>
<body>
<button class="tablink" onclick="openPage('AccountCreation', this, 'red')">Account Creation</button>
<button class="tablink" onclick="openPage('profileCreation', this, 'green')" id="defaultOpen">Profile Creation</button>
<button class="tablink" onclick="openPage('viewPolicy', this, 'blue')">View Policy</button>
<button class="tablink" onclick="openPage('generateReport', this, 'orange')">Generate Report</button>

<div id="AccountCreation" class="tabcontent">
<form id="signupform" action="AccountDetailsServlet" method="POST">>>
<h1 style = "color : #ffffff; opacity : 1.9;">ACCOUNT CREATION</h1>
    <div class="input-info">
        <i class="input"></i>
        <input type="text" name="UserName" placeholder="User Name" required>
        <i class="input"></i>
        <input pattern="[a-zA-Z ]*"  type="text"  name="InsuredName" placeholder="Insured Name" required>
        <i class="input"></i>
        <input pattern="[a-zA-Z]*"  type="text"  name="InsuredStreet" placeholder="Insured Street" required>
        <i class="input"></i>
        <input pattern="[a-zA-Z]*"  type="text"  name="InsuredCity" placeholder="Insured City" required>
        <i class="input"></i>
        <input pattern="[a-zA-Z]*"  type="text"  name="InsuredState" placeholder="Insured State" required>
		 <i class="input"></i>
        <input type="text" title = "Enter exactly 5 digits."  pattern="^\d{5}$" name="InsuredZip" placeholder="Insured Zip" required>
        <i class="input"></i> 
     <input type="text" name="LOB" placeholder="Business Segment" list="dr">
      <datalist id="dr">>
      <option name = BA value = "BA">Business Auto</option>
      <option name = Restuarant value = "Restuarant">Restaurant</option>
      <option name = Apartment value = "Apartment">Apartment</option>
      <option name = GenerationMerchant value = "Generation Merchant">Generation Merchant</option></select>
      </datalist>
        
    </div>
    <div class="sign">
        <a href="" target="_blank">
            <button class="signupbutton" form="signupform"><i class="input"></i><b>Create</b></button>
        </a>
    </div>
</form>

</div>

<div id="profileCreation" class="tabcontent">
  <form id="signupform" action="UserCreationServlet" method="POST">>>
<h1 style = "color : #ffffff; opacity : 1.9;">PROFILE CREATION</h1>
    <div class="input-info">
        <i class="input"></i>
        <input pattern="[a-zA-Z]*"  type="text"  name="uname" placeholder="User Name" required>
        <i class="input"></i>
         <input type = "text"  name="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,12}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" placeholder = "password" required>
      <select name="rolecode">
      <option value = "1">Admin</option>
      <option value = "2">Agent</option>
      <option value = "3">Insured</option>
      </select>
    </div>
    <div class="sign">
        <a href="" target="_blank">
            <button class="signupbutton" form="signupform"><i class="input"></i><b>Create</b></button>
        </a>
    </div>
</form>

</div>

<div id="viewPolicy" class="tabcontent">
  <h3>Contact</h3>
  <p>Get in touch, or swing by for a cup of coffee.</p>
</div>

<div id="generateReport" class="tabcontent">
  <h3>About</h3>
  <p>Who we are and what we do.</p>
</div>

</body>
</html>