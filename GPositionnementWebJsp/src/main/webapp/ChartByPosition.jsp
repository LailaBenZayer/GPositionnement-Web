<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Chart</title>
        <script src="script/jquery-3.5.1.min.js" type="text/javascript"></script>
        <script src="scripte/statistic.js" type="text/javascript"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
        
        <%@include file="/include/css.jsp"  %>
    </head>
    <body>
        <!-- page container area start -->
        <div class="page-container">
            <%@include file="/include/sidebar.jsp"  %>
            <!-- main content area start -->
            <div class="main-content">
                <%@include file="/include/header.jsp"  %>


					<div class="container" id="container">
	 <h3>SmartPhone Par Position</h3>
		<div class="container" style="padding: 20px;">
			<canvas id="myChart"></canvas>
		</div>
	</div>
                    
                </div>
            </div>
            <%@include file="/include/footer.jsp"  %>
        </div>
        <!-- main content area end -->  

        <%@include file="/include/js.jsp"  %>


    </body>
</html>