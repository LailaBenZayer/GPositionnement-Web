<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="script/Chart.js" type="text/javascript"></script>
        <script src="script/jquery-3.5.1.min.js" type="text/javascript"></script>
        <title>INDEX</title>
        <%@include file="/include/css.jsp"  %>
    </head>
    <body>
        <!-- page container area start -->
        <div class="page-container">
            <%@include file="/include/sidebar.jsp"  %>
            <!-- main content area start -->
            <div class="main-content">
                <%@include file="/include/header.jsp"  %>

                <div class="main-content-inner">
                    <!-- sales report area start -->
                    <div class="sales-report-area mt-5 mb-5">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="single-report mb-xs-30">
                                    <div class="s-report-inner pr--20 pt--30 mb-3">
                                        <div class="icon"><i class="fa fa-users"></i></div>
                                        <div class="s-report-title d-flex justify-content-between">
                                            <h4 class="header-title mb-0">Nombre </h4>
                                            <p>!</p>
                                        </div>
                                        <div class="d-flex justify-content-between pb-2">
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="single-report mb-xs-30">
                                    <div class="s-report-inner pr--20 pt--30 mb-3">
                                        <div class="icon"><i class="fa fa-list-alt"></i></div>
                                        <div class="s-report-title d-flex justify-content-between">
                                            <h4 class="header-title mb-0">Nombre </h4>
                                            <p>!</p>
                                        </div>
                                        <div class="d-flex justify-content-between pb-2">
                                           
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="x_panel">

                                <div class="x_content">
                                    <canvas id="mChart"> </canvas>

                                </div>
                            </div>



                        </div>
                    </div>
                   
                    <!-- row area start-->
                </div>
                
            </div>
            <!-- main content area end -->  
            <%@include file="/include/footer.jsp"  %>
        </div>
        <!-- page container area end -->
        <%@include file="/include/js.jsp"  %>

    </body>

</html>
