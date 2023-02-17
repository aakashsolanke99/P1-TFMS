<%@page import="com.revature.model.Associate"%>
<%@page import="java.util.List"%>
<%@page import="com.revature.jdbc.util.ConnectionFactory"%>
<%@page import="com.revature.dao.impl.AssociateDaoImp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Edit Associate</title>

    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
      crossorigin="anonymous"
    />
  </head>
  <body>
    <div class="container pt-4">
      <div class="row">
        <div class="col-md-6 offset-md-3">
          <div class="card">
            <div class="card-body">
              <p class="fs-3 text-center">Edit Associate</p>
              
              <%
              int id=Integer.parseInt(request.getParameter("Associate_id"));
              AssociateDaoImp dao = new AssociateDaoImp(ConnectionFactory.getConnection());
			  Associate a=dao.getAssociateById(id);
              %>
              
              <form action="edit_associate" method="post">
                <div class="mb-3">
                  <label
                    for="exampleInputEmail1"
                    class="form-label"
                    >Associate Id</label
                  >
                  <input
                    type="text"
                    class="form-control"
                    id="exampleInputEmail1"
                    aria-describedby="emailHelp"
                    name="associate-id"
                    value="<%=a.getAssociateId() %>"
                  />
                </div>
                <div class="mb-3">
                  <label
                    for="exampleInputPassword1"
                    class="form-label"
                    >Associate Name</label
                  >
                  <input
                    type="text"
                    class="form-control"
                    id="exampleInputPassword1"
                    name="name"
                    value="<%=a.getAssociateName() %>"
                  />
                </div>
                <div class="col-md-6 mb-4">
                  <label
                    for="exampleInputPassword1"
                    class="form-label"
                    >Batch</label
                  >
                  <select
                    class="select"
                    style="
                      width: 200%;
                      padding: 13px 10px;
                      border-radius: 5px;
                      color: rgb(23, 18, 18);
                    "
                    name="track"
                    value=<%=a.getAssociateTrack()%>
                    <% System.out.println(a.getAssociateTrack()); %>
                   
                  >
                   
                    <option value="Java">Java</option>
                    <option value="DotNet">DotNet</option>
                    <option value="MainFrame">Mainframe</option>
                    <option value="Testing">Testing</option>
                  </select>
                </div>
                <div class="mb-3">
                  <label
                    for="exampleInputPassword1"
                    class="form-label"
                    >Qualification</label
                  >
                  <input
                    type="text"
                    class="form-control"
                    id="exampleInputPassword1"
                    name="Qualification"
                    value="<%=a.getAssociateQualification() %>"
                  />
                </div>
                <div class="mb-3">
                  <label
                    for="exampleInputPassword1"
                    class="form-label"
                    >Experience</label
                  >
                  <input
                    type="text"
                    class="form-control"
                    id="exampleInputPassword1"
                    name="Experience"
                    value="<%=a.getAssociateExperience() %>"
                  />
                </div>

                <button type="submit" class="btn btn-primary col-md-12" style="background-color: #5fcf80;">Update</button>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
    <script
      src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
      integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
      integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
