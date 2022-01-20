<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
<link href="scripte/footer.css" rel="stylesheet" type="text/css" />


<script src="script/jquery-3.5.1.min.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="script/map.css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
<link href="scripte/footer.css" rel="stylesheet" type="text/css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ma template</title>
        </script><script src="script/jquery-3.5.1.min.js" type="text/javascript"></script>
		<script src="script/smartphone.js" type="text/javascript"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="script/jquery-3.5.1.min.js" type="text/javascript"></script>
        <script src="script/utilisateur.js" type="text/javascript"></script>
        <%@include file="/include/css.jsp"  %>


</head>
        
    <body>
        <!-- page container area start -->
        <div class="page-container">
            <%@include file="/include/sidebar.jsp"  %>
            <div class="form-row" style="margin: 20px">
				
			</div>
            <!-- main content area start -->
            <div class="main-content">
                <%@include file="/include/header.jsp"  %>
                <div class="form-group col-md-6">
					<label for="inputDate">Date</label> <input type="date"
						class="form-control" id="inputDate"> <button  class="btn btn-round btn-info " type="submit" id="submitt"> Chercher</button>
				</div>

				<div id="map"></div>
			
		<div class="container">
		
<div class="card card-outline-secondary">
			<h3>Position</h3>

	 <div class="col-lg-12 mt-5">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="header-title">Google Map</h4>
                                <div id="google_map"></div>
                            </div>
                        </div>
                    </div>




            </div>
            <%@include file="/include/footer.jsp"  %>
        </div>
        <!-- main content area end -->  

        <%@include file="/include/js.jsp"  %>



<script
		src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
	<script type="text/javascript" src="script/map.js">
		
	</script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDeR8QO50fgwE-ny80ZhXT619bcGzo7aiM&callback=initMap&libraries=&v=weekly"
		async></script>
 
 google.maps.event.addDomListener(window, 'load', initialize);
</body>
</html>