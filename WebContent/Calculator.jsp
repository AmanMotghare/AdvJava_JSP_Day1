<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
	.form-outline{
		margin-left:20px;
		margin-right:20px;
	}
	.btn{
		margin: 20px 60px;
	}
	section{
	background-color: #664E23;
	}
	.midblock{
		border-radius: 25px;
		background-color: #FFF5E4;
	}
</style>
</head>
<body>

	<%
		int total=0;
		String operation_name = null;

		String operation = request.getParameter("operation");
		
		String First = request.getParameter("firstnumber");
		String Second = request.getParameter("secondnumber");
		
		int FirstNumber = Integer.parseInt(First);
		int SecondNumber = Integer.parseInt(Second);

		if(operation.equals("+")){
			total = FirstNumber + SecondNumber;
			operation_name = "Addition";
		}
		else if(operation.equals("-")){
			total = FirstNumber - SecondNumber;
			operation_name = "Substraction";
		}
		else if(operation.equals("/")){
			total = FirstNumber % SecondNumber;
			operation_name = "Division";
		}
		else if(operation.equals("*")){
			total = FirstNumber * SecondNumber;
			operation_name = "Multiplication";
		}

	%>
		
		
<section class="vh-100">
  <div class="container h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-lg-12 col-xl-11">
        <div class="card text-black midblock">
          <div class="card-body midblock p-md-5">
            <div class="row justify-content-center">
              <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">

                <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4"> R	E S U L T </p>
               		<h4 class = "container"><%=operation_name %> of <%= FirstNumber%> and <%=SecondNumber %> is : <%= total%> </h4>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

</body>
</html>
