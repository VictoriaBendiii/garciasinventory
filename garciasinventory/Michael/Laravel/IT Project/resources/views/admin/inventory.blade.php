<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Garcias Premium Coffee</title>
	<link href="{{ asset ('css/backend_css/bootstrap.min.css') }}" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link href="{{ asset ('css/backend_css/datepicker3.css') }}" rel="stylesheet">
	<link href="{{ asset ('css/backend_css/styles.css') }}" rel="stylesheet">
	
	<!--Custom Font-->
	<link href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
	<!--[if lt IE 9]>
	<script src="js/html5shiv.js"></script>
	<script src="js/respond.min.js"></script>
	<![endif]-->
</head>
<body>
	<nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#sidebar-collapse"><span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span></button>
				<a class="navbar-brand" href="#"><span></span>Admin</a>
					<br>
					<p> Eddie Garcia </p>

				
			</div>
		</div><!-- /.container-fluid -->
	</nav>
	<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
		<div class="divider"></div>
		<ul class="nav menu">
			<li><a href="{{url('/admin/dashboard')}}"><em class="fa fa-dashboard">&nbsp;</em> Dashboard</a></li>
			<li><a href="{{url('/admin/product')}}"><em class="fa fa-calendar">&nbsp;</em> Product Monitoring</a></li>
			<li><a href="{{url('/admin/notification')}}"><em class="fa fa-bar-chart">&nbsp;</em> Notification</a></li>
			<li><a href="{{url('/admin/deliveries')}}"><em class="fa fa-toggle-off">&nbsp;</em> Admin Deliveries</a></li>
			<li class="active"><a href="{{url('/admin/inventory')}}"><em class="fa fa-toggle-off">&nbsp;</em> Inventory</a></li>
			<li><a href="{{url('/admin/stock')}}"><em class="fa fa-clone">&nbsp;</em> Branch Stock Request </a></li>
			<li class="parent "><a data-toggle="collapse" href="#sub-item-1">
				<em class="fa fa-navicon">&nbsp;</em> Add <span data-toggle="collapse" href="#sub-item-1" class="icon pull-right"><em class="fa fa-plus"></em></span>
				</a>
				<ul class="children collapse" id="sub-item-1">
					<li><a class="" href="{{url('/admin/addproduct')}}">
						<span class="fa fa-arrow-right">&nbsp;</span> Add Product
					</a></li>
					<li><a class="" href="{{url('/admin/addaccount')}}">
						<span class="fa fa-arrow-right">&nbsp;</span> Add Account
					</a></li>
				</ul>
			</li>
			<li><a href="{{url('/login')}}"><em class="fa fa-power-off">&nbsp;</em> Logout</a></li>
		</ul>
	</div><!--/.sidebar-->
		
	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="#">
					<em class="fa fa-home"></em>
				</a></li>
				<li class="active">Inventory</li>
			</ol>
		</div><!--/.row-->
		
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Inventory</h1>
			</div>
		</div><!--/.row-->
		
		</div><!--/.row-->
	</div>	<!--/.main-->
	
	<script src="{{asset('js/backend_js/jquery-1.11.1.min.js')}}"></script>
	<script src="{{asset('js/backend_js/bootstrap.min.js')}}"></script>
	<script src="{{asset('js/backend_js/chart.min.js')}}"></script>
	<script src="{{asset('js/backend_js/chart-data.js')}}"></script>
	<script src="{{asset('js/backend_js/easypiechart.js')}}"></script>
	<script src="{{asset('js/backend_js/easypiechart-data.js')}}"></script>
	<script src="{{asset('js/backend_js/bootstrap-datepicker.js')}}"></script>
	<script src="{{asset('js/backend_js/custom.js"></script>
	<script>
		window.onload = function () {
	var chart1 = document.getElementById("line-chart").getContext("2d");
	window.myLine = new Chart(chart1).Line(lineChartData, {
	responsive: true,
	scaleLineColor: "rgba(0,0,0,.2)",
	scaleGridLineColor: "rgba(0,0,0,.05)",
	scaleFontColor: "#c5c7cc"
	});
};
	</script>
		
</body>
</html>