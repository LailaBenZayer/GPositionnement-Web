<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="ma.entites.Utilisateur"%>
<%@page import="controllers.*"%>
<%@page import="javax.ejb.EJB"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestion SmartPhone</title>
        <script src="script/jquery-3.5.1.min.js" type="text/javascript"></script>
        <script src="script/smartphone.js" type="text/javascript"></script>
        <%@include file="/include/css.jsp"  %>
        <script src="script/utilisateur.js" type="text/javascript"></script>
    </head>
    <body>
        <!-- page container area start -->
        <div class="page-container">
            <%@include file="/include/sidebar.jsp"  %>
            <!-- main content area start -->
            <div class="main-content">
                <%@include file="/include/header.jsp"  %>
                <div class="main-content-inner">
                    <div class="row">
                        <div class="col-lg-6 col-ml-12">
                            <div class="row">
                                <!-- basic form start -->
                                <div class="col-12 mt-5">
                                    <div class="card">
                                        <div class="card-body">
                                            <h4 class="header-title">Informations SmartPhone</h4>
                                            <form>
                                                <input id="op" type="hidden" name="op"/>
                                                <div class="form-group">
                                                    <label for="exampleInputCode">IMEI :</label>
                                                    <input type="text" class="form-control mb-4 input-rounded" name="imei" id="imei"  placeholder="Entrer imei">
                                                </div>
                                                
                                                <div class="form-group">
                                                    <label for="user">Utilisateur</label>
                                                    <select style="margin-bottom: 5%" class="form-control" id="user">
                                                        <option selected disabled>Choisir Utilisateur</option>
                                                       
                                                    </select>
                                                </div>
                                                <!-- <button type="submit" class="btn btn-primary mt-4 pr-4 pl-4">Ajouter</button>-->
                                                <button class="btn btn-primary mt-4 pr-4 pl-4" type="submit" id="add"> Ajouter</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <!-- basic form end -->
                            </div>
                        </div>
                    </div>
                    <!-- trading history area start -->
                    <div class="col-lg-12 mt-sm-30 mt-xs-30">
                        <div class="card">
                            <div class="card-body">
                                <div class="d-sm-flex justify-content-between align-items-center">
                                    <h4 class="header-title">Liste SmartPhones</h4>
                                    <div class="search-box pull-left">
                                        <form action="#">
                                            <input class="form-control" id="myInput" type="text" name="search" placeholder="Search..." required>
                                            <i class="ti-search"></i>
                                        </form>
                                    </div>
                                </div>
                                <div class="trad-history mt-4">
                                    <div class="tab-content" id="myTabContent">
                                        <div class="tab-pane fade show active" id="buy_order" role="tabpanel">
                                            <div class="table-responsive">
                                               <!-- <table class="table table-borderless">-->
                                                <table class="table table-hover">
                                                    <tr class="heading-td">
                                                        <th>ID</th>
                                                        <th>IMEI</th>
                                                        <th>Utilisateur</th>
                                                        <th>Supprimer</th>
                                                        <th>Modifier</th>
                                                    </tr>
                                                    <tbody id="contentsmart">

                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- trading history area end -->
                </div>
            </div>
            <%@include file="/include/footer.jsp"  %>
        </div>
        <!-- main content area end -->  

        <%@include file="/include/js.jsp"  %>

              
    </body>

</html>
