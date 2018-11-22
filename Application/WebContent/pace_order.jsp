<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style >
body{
background-image:url("supply_chain_large.jpg")
}


h1 {
  text-align: center;
}

select {
  -webkit-appearance: none;
  -moz-appearance: none;
  -ms-appearance: none;
  appearance: none;
  outline: 0;
  box-shadow: none;
  border: 0 !important;
  background: #2c3e50;
  background-image: none;
}

.select {
  position: relative;
  display: block;
  width: 20em;
  height: 3em;
  line-height: 3;
  background: #2c3e50;
  overflow: hidden;
  border-radius: .25em;
}
units
{
  width:130%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;

}
select {
  width: 100%;
  height: 100%;
  margin: 0;
  padding: 0 0 0 .5em;
  color: #fff;
  cursor: pointer;
}
select::-ms-expand {
  display: none;
}
/* Arrow */
.select::after {
  content: '\25BC';
  position: absolute;
  top: 0;
  right: 0;
  bottom: 0;
  padding: 0 1em;
  background: #34495e;
  pointer-events: none;
}
/* Transition */
.select:hover::after {
  color: #f39c12;
}
.select::after {
  -webkit-transition: .25s all ease;
  -o-transition: .25s all ease;
  transition: .25s all ease;
}
</style>
</head>
<body>
<form action="Pace_order" method="get">
<table align="left" cellpadding="15">
<tr>
<th>
<div class="center-on-page">
  
  
  <div class="select">
    <select name="slct1" id="slct1">
      <option>SELECT MICROPROCESSOR</option>
      <option value="1">intel core i5 7600 8th generation</option>
      <option value="2">intel core i5 7400 7th generation core</option>
      <option value="3">intel core i7 7800 8th generation</option>
	  <option value="4">intel core i7 7800 7th generation</option>
    </select>
  </div>
  
  
</div>
	</th>
	
	
	<th>
	<div class="center-on-page">
  
  
 
  
</div>
	</th></tr>
<tr>
<th>
<div class="center-on-page">
  
  
  <div class="select">
    <select name="slct2" id="slct2">
      <option>CONNECTORS</option>
      <option value="1">dell adapter usb 3.0 ethernet</option>
      <option value="2">dell adapter usb-c to hdmi</option>
      <option value="3">mini display to vga</option>
    </select>
  </div>
  
</div>
	</th>
	<th>
	<div class="center-on-page">
  
  
  
  
</div>
	</th></tr>
	<tr>
<th>
<div class="center-on-page">
  
  
  <div class="select">
    <select name="slct3" id="slct3">
      <option>LAPTOP CHARGER</option>
      <option value="1">dell 65-watt 3-prong ac adapter</option>
      <option value="2">dell 30-watt ac adapter usb type c</option>
      <option value="3">dell 45-watt 3-prong ac adapter</option>
    </select>
  </div>
  
  
</div>
	</th>
	<th>
	<div class="center-on-page">
  
  
 
  
</div>
	</th></tr>
	<tr>
<th>
<div class="center-on-page">
  
  
  <div class="select">
    <select name="slct4" id="slct4">
      <option>RAM</option>
      <option value="1">dell memory-8gb 2rx8 ddr3l sodimm 1600mhz</option>
      <option value="2">dell memory-4gb 1rx8 ddr4 sodimm 2133mhz</option>
      <option value="3">dell memory-16gb 2rx8 ddr4 sodimm 2666mhz</option>
    </select>
  </div>
  
  
</div>
	</th>
	<th>
	<div class="center-on-page">
  
  
 
  
</div>
	</th></tr>
	<tr>
<th>
<div class="center-on-page">
  
  
  <div class="select">
    <select name="slct5" id="slct5">
      <option>GRAPHIC CARD</option>
      <option value="1">nvidi quadro p2000, 5gb, 4dp</option>
      <option value="2">quadro p400 2gb 3mdp low profile</option>
      <option value="3">visiontek ocpc geforce gtx 1050 4gb gddr5</option>
    </select>
  </div>
  
  
</div>
	</th>
	<th>
	<div class="center-on-page">
  
  
  
  
</div>
	</th></tr>
	<tr>
<th>
<div class="center-on-page">
  
  
  <div class="select">
    <select name="slct6" id="slct6">
      <option>BATTERIES</option>
      <option value="1">dell laptop inspiron 1464 6 cell battery</option>
      <option value="2">dell laptop xps l501x 6 cell battery</option>
      <option value="3">dell laptop vostro 3460 6 cell battery</option>
      <option value="4">alienware laptop m17x 9 cell battery</option>
    </select>
  </div>
  
  
</div>
	</th>
	<th>
	<div class="center-on-page">
  
  
 
  
</div>
	</th></tr>
	<tr>
<th>
<div class="center-on-page">
  
  
  <div class="select">
    <select name="slct7" id="slct7">
      <option>INTERNAL STORAGE</option>
      <option value="1">dell serial ata solid state hard drive - 256gb</option>
      <option value="2">dell serial ata solid state hard drive - 512gb</option>
      <option value="3">dell 1.2tb 10k rpm sas 12gbps hybrid carrier</option>
    </select>
  </div>
  
  
</div>
	</th>
	<th>
<div class="center-on-page">
  
  
 
  
  
</div>
	</th>
	</tr>
	<tr>
	<th>
	<a href="mbom.jsp">SUBMIT</a>
	</th>
	</tr>
	
	</table>
	</form>

</body>
</html>