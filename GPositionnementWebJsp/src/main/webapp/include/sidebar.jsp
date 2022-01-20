<%-- 
    Document   : sidebar
    Created on : 18 déc. 2020, 20:04:32
    Author     : 4g
--%>

        <!-- sidebar menu area start -->
        <div class="sidebar-menu">
            <div class="sidebar-header">
                <div class="logo">
                    <a href="index.html"><img src="<%= request.getContextPath()%>/templateStyle/images/icon/logo.png" alt="logo"></a>
                </div>
            </div>
            <div class="main-menu">
                <div class="menu-inner">
                    <nav>
                        <ul class="metismenu" id="menu">
                            <li class="active">
                                <a href="javascript:void(0)" aria-expanded="true"><i class="ti-dashboard"></i><span>dashboard</span></a>
                                <ul class="collapse">
                                    <li><a href="<%= request.getContextPath()%>/index.jsp">Home</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="javascript:void(0)" aria-expanded="true"><i class="ti-layout-sidebar-left"></i><span>Gestion
                                    </span></a>
                                <ul class="collapse">
                                    <li><a href="<%= request.getContextPath()%>/Utilisateur.jsp">Utilisateur</a></li>
                                    <li><a href="<%= request.getContextPath()%>/SmartPhone.jsp">SmartPhone</a></li>
                                    <li><a href="<%= request.getContextPath()%>/map.jsp">Map</a></li>
                                </ul>
                            </li>
                            
                           
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
        <!-- sidebar menu area end -->
