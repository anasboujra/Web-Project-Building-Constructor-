<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<c:import url="/inc/includes/header.jsp"></c:import>
    <title>Salaires</title> 
</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
            <c:import url="inc/sidebar.jsp"></c:import>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                  <c:import url="/inc/includes/topbar.jsp"></c:import>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
				<div class="container-fluid">

                    <!-- Page Heading -->
                     <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">Salaires</h1>
                        <a onclick="window.print();" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
                           <i class="fas fa-download fa-sm text-white-50"></i> 
                           Exporter PDF
                        </a>
                    </div>                      
                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Archive des salaires  </h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>Mois</th>
                                            <th>Nom</th>
                                            <th>Prénom</th>
                                            <th>CIN</th>
                                            <th>Salaire</th>                                            
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>Mois</th>
                                            <th>Nom</th>
                                            <th>Prénom</th>
                                            <th>CIN</th>
                                            <th>Salaire</th>                                             
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                    <c:forEach items="${ wages }" var="salary">
                                        <tr>
                                            <td>${ salary.mois }</td>
                                            <td>${ salary.employe.nom }</td>
                                            <td>${ salary.employe.prenom }</td>
                                            <td>${ salary.employe.cin }</td>
                                            <td>${ salary.salaire } DH</td>
                                        </tr>                                     
                                    </c:forEach>
                                  
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            	<c:import url="/inc/includes/footer.jsp"></c:import>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

   <c:import url="/inc/includes/scripts.jsp"></c:import>

</body>

</html>


