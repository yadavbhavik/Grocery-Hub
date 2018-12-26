<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
  
<title>Seller Registration</title>
<style>
* {
  box-sizing: border-box;
}

body {
  background-color: #f1f1f1;
}

#regForm {
  background-color: #ffffff;
  margin: 100px auto;
  font-family: Raleway;
  padding: 40px;
  width: 70%;
  min-width: 300px;
}

h1 {
  text-align: center;  
}

input {
  padding: 10px;
  width: 100%;
  font-size: 17px;
  font-family: Raleway;
  border: 1px solid #aaaaaa;
}

/* Mark input boxes that gets an error on validation: */
input.invalid {
  background-color: #ffdddd;
}

/* Hide all steps by default: */
.tab {
  display: none;
}

button {
  background-color: #4CAF50;
  color: #ffffff;
  border: none;
  padding: 10px 20px;
  font-size: 17px;
  font-family: Raleway;
  cursor: pointer;
}

button:hover {
  opacity: 0.8;
}

#prevBtn {
  background-color: #bbbbbb;
}

/* Make circles that indicate the steps of the form: */
.step {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbbbbb;
  border: none;  
  border-radius: 50%;
  display: inline-block;
  opacity: 0.5;
}

.step.active {
  opacity: 1;
}

/* Mark the steps that are finished and valid: */
.step.finish {
  background-color: #4CAF50;
}
</style>
<style>
/* The container */
.container {
  display: block;
  position: relative;
  padding-left: 35px;
  margin-bottom: 12px;
  cursor: pointer;
  font-size: 22px;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
}

/* Hide the browser's default checkbox */
.container input {
  position: absolute;
  opacity: 0;
  cursor: pointer;
  height: 0;
  width: 0;
}

/* Create a custom checkbox */
.checkmark {
  position: absolute;
  top: 0;
  left: 0;
  height: 25px;
  width: 25px;
  background-color: #eee;
}

/* On mouse-over, add a grey background color */
.container:hover input ~ .checkmark {
  background-color: #ccc;
}

/* When the checkbox is checked, add a blue background */
.container input:checked ~ .checkmark {
  background-color: #2196F3;
}

/* Create the checkmark/indicator (hidden when not checked) */
.checkmark:after {
  content: "";
  position: absolute;
  display: none;
}

/* Show the checkmark when checked */
.container input:checked ~ .checkmark:after {
  display: block;
}

/* Style the checkmark/indicator */
.container .checkmark:after {
  left: 9px;
  top: 5px;
  width: 5px;
  height: 10px;
  border: solid white;
  border-width: 0 3px 3px 0;
  -webkit-transform: rotate(45deg);
  -ms-transform: rotate(45deg);
  transform: rotate(45deg);
}
</style>
</head>


<body>

<form id="regForm" action="Seller_registration" method="post">
  <h1>Seller Registration</h1>
  <!-- One "tab" for each step in the form: -->
  <div class="tab"><h4>Seller Details:</h4>
    <p><input placeholder="Name..." oninput="this.className = ''" name="sellername"></p>
    <p><input placeholder="Mobile No..." oninput="this.className = ''" name="sellermobileno"></p>
    <p><input placeholder="Alternative Mobile no..." oninput="this.className = ''" name="alternativemobileno"></p>
    <p><input placeholder="Email..." oninput="this.className = ''" name="selleremail"></p>
    <p><input placeholder="Confirm Email..." oninput="this.className = ''" name="sellerconfirmemail"></p>
    <p><input placeholder="Address..." oninput="this.className = ''" name="selleraddress"></p>
  </div>
  <div class="tab"><h3>Shop Details:</h3>
    <p><input placeholder="Shop Name..." oninput="this.className = ''" name="shopname"></p>
    <p><input placeholder="Shop Address..." oninput="this.className = ''" name="shopaddress">*As per given document</p>
	<p><span style="font-size:17px">Shop Category:</span></p>
	<label class="container" >Food Grains  <span style="font-size:15px">(For Ex: Wheat,Rice,...)</span> 
	  <input type="checkbox" checked="checked">
	  <span class="checkmark"></span> 
	</label>
	<label class="container">Dairy Product   <span style="font-size:15px">(For Ex: Milk,Butter,Cheese,...)</span>
	  <input type="checkbox">
	  <span class="checkmark"></span>
	</label>
	<label class="container">Fruit & vegetables  <span style="font-size:15px"> (For Ex: Apple,Banana,Potato,Garlic,...)</span>
	  <input type="checkbox">
	  <span class="checkmark"></span>
	</label>
	<label class="container">Daily Needs  <span style="font-size:15px">(For Ex: Soap,Sugar,...)</span>
	  <input type="checkbox">
	  <span class="checkmark"></span>
	</label>
	<label class="container">Berverages  <span style="font-size:15px">(For Ex: Colddrink,ice-cream,...)</span>
	  <input type="checkbox">
	  <span class="checkmark"></span>
	</label> 
	<label class="container">Namkeen & Sweets   <span style="font-size:15px">(For Ex: cake,chips,...)</span>
	  <input type="checkbox">
	  <span class="checkmark"></span>
	</label>
    <p><input placeholder="Shop Email..." oninput="this.className = ''" name="shopemail"></p>
    <p><input placeholder="Shop Mobile No..." oninput="this.className = ''" name="shopmobileno"></p>
    <p><span style="font-size:17px">Shop Payment Method:</span></p>
    	<label class="container" >COD  <span style="font-size:15px">(cash on delivery)</span> 
	  		<input type="checkbox" checked="checked">
	  		<span class="checkmark"></span> 
		</label>
    	<label class="container" >Online 
	  		<input type="checkbox" checked="checked">
	  		<span class="checkmark"></span> 
		</label>
    </p>
  </div>
  <div class="tab">Document Upload Details:
    <p><input placeholder="Aadhar Card No." oninput="this.className = ''" name="aadharcardno"></p>
  	<p><label for="avatar">Aadhar Card Image:</label><input type="file" id="avatar" name="imgaadhar" accept="image/png, image/jpeg"></p>
    <p><input placeholder="GST No." oninput="this.className = ''" name="gstno"></p>
    <p><input placeholder="PanCard No." oninput="this.className = ''" name="pancardno"></p>
    <p><label for="avatar">Pan Card Image:</label><input type="file" id="avatar" name="imgpancard" accept="image/png, image/jpeg"></p>
    <p><input placeholder="Bank Account No." oninput="this.className = ''" name="bankaccountno"></p>
    <p><input placeholder="Seller Bank Holder Name" oninput="this.className = ''" name="sellerbankholdername"></p>
    <p><input placeholder="IFSC No." oninput="this.className = ''" name="ifscno"></p>
  </div>
  <div style="overflow:auto;">
    <div style="float:right;">
      <button type="button" id="prevBtn" onclick="nextPrev(-1)">Previous</button>
      <button type="button" id="nextBtn" onclick="nextPrev(1)">Next</button>
    </div>
  </div>
  <!-- Circles which indicates the steps of the form: -->
  <div style="text-align:center;margin-top:40px;">
    <span class="step"></span>
    <span class="step"></span>
    <span class="step"></span>
    
  </div>
</form>

<script>
var currentTab = 0; // Current tab is set to be the first tab (0)
showTab(currentTab); // Display the crurrent tab

function showTab(n) {
  // This function will display the specified tab of the form...
  var x = document.getElementsByClassName("tab");
  x[n].style.display = "block";
  //... and fix the Previous/Next buttons:
  if (n == 0) {
    document.getElementById("prevBtn").style.display = "none";
  } else {
    document.getElementById("prevBtn").style.display = "inline";
  }
  if (n == (x.length - 1)) {
    document.getElementById("nextBtn").innerHTML = "Submit";
  } else {
    document.getElementById("nextBtn").innerHTML = "Next";
  }
  //... and run a function that will display the correct step indicator:
  fixStepIndicator(n)
}

function nextPrev(n) {
  // This function will figure out which tab to display
  var x = document.getElementsByClassName("tab");
  // Exit the function if any field in the current tab is invalid:
  if (n == 1 && !validateForm()) return false;
  // Hide the current tab:
  x[currentTab].style.display = "none";
  // Increase or decrease the current tab by 1:
  currentTab = currentTab + n;
  // if you have reached the end of the form...
  if (currentTab >= x.length) {
    // ... the form gets submitted:
    document.getElementById("regForm").submit();
    return false;
  }
  // Otherwise, display the correct tab:
  showTab(currentTab);
}

function validateForm() {
  // This function deals with validation of the form fields
  var x, y, i, valid = true;
  x = document.getElementsByClassName("tab");
  y = x[currentTab].getElementsByTagName("input");
  // A loop that checks every input field in the current tab:
  for (i = 0; i < y.length; i++) {
    // If a field is empty...
    if (y[i].value == "") {
      // add an "invalid" class to the field:
      y[i].className += " invalid";
      // and set the current valid status to false
      valid = false;
    }
  }
  // If the valid status is true, mark the step as finished and valid:
  if (valid) {
    document.getElementsByClassName("step")[currentTab].className += " finish";
  }
  return valid; // return the valid status
}

function fixStepIndicator(n) {
  // This function removes the "active" class of all steps...
  var i, x = document.getElementsByClassName("step");
  for (i = 0; i < x.length; i++) {
    x[i].className = x[i].className.replace(" active", "");
  }
  //... and adds the "active" class on the current step:
  x[n].className += " active";
}
</script>

</body>
</html>
