<html>
<head>
<title>IRL Printer Data Systems</title>
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
					class="btn btn-success fs-5 text-white fw-bold mb-1 me-1" href="/page03">
					Page 3 </a> <a
					class="btn btn-success fs-5 text-white fw-bold mb-1 me-1"
					href="#"> Page 4 </a>
					<a class="btn btn-danger fs-5 text-white fw-bold mb-1 me-1" href="/logout">
					    Logout
					</a>
				<div class="row border-top border-2 m-2">
					<div class="col-sm-6 mt-2">
						<h3>Page 4</h3>
					</div>
				</div>
				<div class="row mb-2 ms-2">
					<div class="col-sm-12" id="message"></div>
				</div>
				<div class="row mb-2 ms-4">
					<div class="col-sm-12">Please input start time and end time
						for every task.</div>
				</div>
				<div class="row mb-2 ms-4">
					<label for="shift1StartTime" class="col-sm-1 col-form-label"><b>Shift
							1:</b></label> <input type="hidden" id="number1" value="1"> <label
						for="shift1StartTime" class="col-sm-1 col-form-label">Start
						Time:</label>
					<div class="col-sm-2">
						<input type="time" class="form-control" id="shift1StartTime"
							value="${shift1.startTime}">
					</div>
					<label for="shift1EndTime" class="col-sm-1 col-form-label">End
						Time:</label>
					<div class="col-sm-2">
						<input type="time" class="form-control" id="shift1EndTime"
							value="${shift1.endTime}">
					</div>
				</div>
				<div class="row mb-2 ms-4">
					<label for="shift2StartTime" class="col-sm-1 col-form-label"><b>Shift
							2:</b></label> <input type="hidden" id="number2" value="2"> <label
						for="shift2StartTime" class="col-sm-1 col-form-label">Start
						Time:</label>
					<div class="col-sm-2">
						<input type="time" class="form-control" id="shift2StartTime"
							value="${shift2.startTime}">
					</div>
					<label for="shift2EndTime" class="col-sm-1 col-form-label">End
						Time:</label>
					<div class="col-sm-2">
						<input type="time" class="form-control" id="shift2EndTime"
							value="${shift2.endTime}">
					</div>
				</div>
				<div class="row mb-2 ms-4">
					<label for="shift3StartTime" class="col-sm-1 col-form-label"><b>Shift
							3:</b></label> <input type="hidden" id="number3" value="3"> <label
						for="shift3StartTime" class="col-sm-1 col-form-label">Start
						Time:</label>
					<div class="col-sm-2">
						<input type="time" class="form-control" id="shift3StartTime"
							value="${shift3.startTime}">
					</div>
					<label for="shift3EndTime" class="col-sm-1 col-form-label">End
						Time:</label>
					<div class="col-sm-2">
						<input type="time" class="form-control" id="shift3EndTime"
							value="${shift3.endTime}">
					</div>
				</div>
				<div class="row mb-2 ms-4 mt-4">
					<div class="col-sm-7 text-center">
						<button type="button" class="btn btn-secondary me-2">Clear</button>
						<button type="submit" class="btn btn-primary"
							onClick="saveShift();">Save</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>