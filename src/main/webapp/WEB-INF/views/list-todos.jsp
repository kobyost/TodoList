<%@ include file ="../common/header.jspf"%>


    <nav class="navbar navbar-default">

        <a href="/" class="navbar-brand">Brand</a>

        <ul class="nav navbar-nav">
            <li class="active"><a href="#">Home</a></li>
            <li><a href="/list-todo.do">Todos</a></li>
            <li><a href="http://www.in28minutes.com">In28Minutes</a></li>
        </ul>

        <ul class="nav navbar-nav navbar-right">
            <li><a href="/logout.do">Logout</a></li>
        </ul>

    </nav>

    <div class="container">
        <H1>Welcome ${name}</H1>

     <h2>Your Todos are : </h2>  
       
       <table class="table table-striped">
       <thead>
	       	<th> Description</th>
	       	<th> Category</th>
	       	<th> Actions</th>
       </thead>
	       <tbody>
	       <c:forEach items="${todos}" var="todo">
		       <tr>
		       	<td>  	${todo.name}	</td>  
		       	<td>	${todo.catagory} </td> 
		       	<td>	<a class = "btn btn-danger" href="/delete-todo.do?todoName=${todo.name}&todoCatagory=${todo.catagory}">Delete</a> </td> 
		       </tr>
	       </c:forEach>
	       </tbody>
       
       
       </table>
       
        
        <a class="btn btn-success"
                    href="/add-todo.do">Add New Todo</a>
    </div>

    <%@ include file ="../common/footer.jspf"%>

    <script src="webjars/jquery/1.11.1/jquery.min.js"></script>
    <script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</body>

</html>