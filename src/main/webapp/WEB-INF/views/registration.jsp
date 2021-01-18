<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"
	integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js"
	integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj"
	crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="width: 100vw; background-size: cover; background-position: center; background-repeat: no-repeat; overflow: hidden; height: 100vh; background-image: url('https://cdn2.f-cdn.com/contestentries/1490804/32875450/5cbfe247369ee_thumb900.jpg');">

	<nav class="navbar navbar-dark bg-dark">
		<div class="container-fluid">
			<button class="btn btn-link">
				<a class="navbar-brand" href="login">Login</a>
			</button>
		</div>
	</nav>
	<div class="container">
		<div class="row">
			<div class="col-md-4 col-md-offset-7">
				<div class="panel panel-default">
					<div class="panel-heading">
						<div>
							<h3>${message}</h3>
						</div>
					</div>
					<div class="panel-body"
						style="padding: 10pt; box-shadow: 4rem 0 3rem rgb(43, 44, 43);margin-top: 10%; border: 1px solid black">
						<h3 class="panel-title">
							<em class="card text-center">Registration Page</em>
						</h3>
						<form class="form-control" method="post" role="form">
							<div class="form-group">
								<label for="username" class="col-sm-3 control-label">Username:</label>
								<div class="col-sm-9">
									<input class="form-control" placeholder="Enter your name ..." required="required"
										type="text" name="name" />
								</div>
							</div>
							<div class="form-group">
								<label for="password" class="col-sm-3 control-label">Password:</label>
								<div class="col-sm-9">
									<input class="form-control" type="password" placeholder="Enter your password ..."
										required="required" id="password" name="password" />
								</div>
							</div>

							<div class="form-group">
								<label style="display: inline" for="password"
									class="col-sm-3 control-label">Confirm Password:</label>
								<div class="col-sm-9">
									<input class="form-control" type="password" placeholder="reenter your password ..."
										required="required" id="password" name="confirmation" />
								</div>
							</div>

							<div class="form-group last">
								<div class="col-sm-offset-3 col-sm-9">
									<button type="submit" style="margin-top:5px;margin-left:25px" class="btn btn-success">Register</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>