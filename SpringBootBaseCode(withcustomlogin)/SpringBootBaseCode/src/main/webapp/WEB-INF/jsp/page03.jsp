<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title></title>
<link href="webjars/font-awesome/6.5.2/css/all.min.css" rel="stylesheet">
<link href="webjars/bootstrap/5.3.3/css/bootstrap.min.css"
	rel="stylesheet">
<script src="webjars/bootstrap/5.3.3/js/bootstrap.min.js"></script>
<script src="webjars/jquery/3.7.1/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/sample.js"></script>
</head>
<body>
	<div class="ms-2 border-bottom border-2">
		<strong style="color: black; vertical-align: bottom; font-size: 34;">Spring
			Boot Demo Project</strong>
	</div>
	<div class="container-fluid">
		<div class="row flex-nowrap">
			<div class="col py-3">
				<a class="btn btn-success fs-5 text-white fw-bold mb-1 me-1"
					href="/page01"> Page 1 </a> <a
					class="btn btn-success fs-5 text-white fw-bold mb-1 me-1"
					href="/page02"> Page 2 </a> <a
					class="btn btn-success fs-5 text-white fw-bold mb-1 me-1" href="#">
					Page 3 </a> <a
					class="btn btn-success fs-5 text-white fw-bold mb-1 me-1"
					href="/page04"> Page 4 </a>
					<a class="btn btn-danger fs-5 text-white fw-bold mb-1 me-1" href="/logout">
					    Logout
					</a>
				<div class="row border-top border-2 m-2">
					<div class="col-sm-12 mt-2">
						<h3>Page 3</h3>
					</div>
				</div>
				<div class="row mb-2 ms-4">
					<label for="sample_table"
						class="col-sm-3 offset-1 col-form-label">Table Column 3 Total: </label>
					<div class="col-sm-2">
						<input type="number" class="form-control" id="sample_table">
					</div>
				</div>
				<div class="row flex-nowrap">
					<div class="col py-3">
						<div class="col-sm-6">
							<table class="table table-striped table-bordered" id="sampleTable">
								<thead>
									<tr class="text-center">
										<th scope="col">Column 1</th>
										<th scope="col">Column 2</th>
										<th scope="col">Column 3</th>
									</tr>
								</thead>
								<tbody>
								</tbody>
								<tfoot>
									<tr>
										<td colspan="4" class="text-center">
											<button class="btn btn-info" data-bs-toggle="modal"
												data-bs-target="#sampleTableModal"
												onclick="clearSampleTableModal();">Add Row</button>
										</td>
									</tr>
								</tfoot>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="modal fade" id="sampleTableModal" tabindex="-1"
		aria-labelledby="sampleTableModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Sample Table Data</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<div id="sampleTableMessage"></div>
					<div class="container-fluid">
						<div class="row">
							<div class="row mb-2">
								<div class="col-sm-12">Please input sample table
									information.</div>
							</div>
							<div class="row mb-2">
								<label for="column1" class="col-sm-4 col-form-label">Column 1:</label>
								<div class="col-sm-8">
									<input type="text" class="form-control" id="column1">
								</div>
							</div>
							<div class="row mb-2">
								<label for="column2" class="col-sm-4 col-form-label">Column 2:</label>
								<div class="col-sm-8">
									<input type="text" class="form-control" id="column2">
								</div>
							</div>
							<div class="row mb-2">
								<label for="column3" class="col-sm-4 col-form-label">Column 3:</label>
								<div class="col-sm-8">
									<input type="number" class="form-control" id="column3">
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary"
						onclick="saveSampleTableInfo();">Save</button>
				</div>
			</div>
		</div>
	</div>
	
	<script type="text/javascript">updateSampleTable();</script>
</body>
</html>