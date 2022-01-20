<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestion Utilisateur</title>
        <script src="script/jquery-3.5.1.min.js" type="text/javascript"></script>
        <script src="script/utilisateur.js" type="text/javascript"></script>
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
                    <div class="row">
                        <div class="col-lg-6 col-ml-12">
                            <div class="row">
                                <!-- basic form start -->
                                <div class="col-12 mt-5">
                                    <div class="card">
                                        <div class="card-body">
                                            <h4 class="header-title">Informations Utilisateur</h4>
                                            <form>
                                                <input id="op" type="hidden" name="op"/>
                                                <div class="form-group">
                                                    <label for="exampleInputCode">Nom :</label>
                                                    <input type="text" class="form-control mb-4 input-rounded" id="nom" name="nom" aria-describedby="emailHelp" placeholder="Entrer Nom">
                                                </div>
                                                <div class="form-group">
                                                    <label for="exampleInputLibelle">Prenom</label>
                                                    <input type="text" class="form-control mb-4 input-rounded" id="prenom" name="libelle" placeholder="Entrer prenom">
                                                </div>
                                                <div class="form-group">
                                                    <label for="exampleInputLibelle">Telephone</label>
                                                    <input type="text" class="form-control mb-4 input-rounded" id="telephone" name="telephone" placeholder="Entrer Telephone">
                                                </div>
                                                <div class="form-group">
                                                    <label for="exampleInputLibelle">Email</label>
                                                    <input type="email" class="form-control mb-4 input-rounded" id="email" name="email" placeholder="aa@gmail.com">
                                                </div>
                                                <div class="form-group">
                                                    <label for="exampleInputLibelle">Date Naissance</label>
                                                    <input type="date" class="form-control mb-4 input-rounded" name="dateNaissance" id="dateNaissance" placeholder="Entrer date">
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
                                    <h4 class="header-title">Liste Utilisateurs</h4>

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
                                                <table class="table table-hover">
                                                    <tr class="heading-td">
                                                        <th>ID</th>
                                                        <th>Nom</th>
                                                        <th>Prenom</th>
                                                        <th>Telephone</th>
                                                        <th>Email</th>
                                                        <th>Date Naissance</th>
                                                        <th>Supprimer</th>
                                                        <th>Modifier</th>
                                                    </tr>
                                                    <tbody id="content">

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

        <script>
            $(document).ready(function () {
                $("#myInput").on("keyup", function () {
                    var value = $(this).val().toLowerCase();
                    $("#content tr").filter(function () {
                        $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                    });
                });
            });
        </script>


    </body>

</html>
