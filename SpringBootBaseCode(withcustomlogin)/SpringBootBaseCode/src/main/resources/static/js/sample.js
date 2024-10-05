function getServerRealTime() {
	getServerTime();
	setTimeout(getServerRealTime, 1000);
}

function getServerTime() {
	$.ajax({
		url: "http://localhost:8080/api/data/time",
		type: "GET",
		dataType: "text",
		success: function(response) {
			$("#datetime").text(response);
		},
		error: function(xhr, status, error) {
			console.log("getServerTime() error: " + error);
		}
	});
}

function saveShift() {
	var number = 0;
	var startTime = "";
	var endTime = "";
	for (let i = 1; i <= 3; i++) {
		number = $("#number" + i).val();
		startTime = $("#shift" + i + "StartTime").val();
		endTime = $("#shift" + i + "EndTime").val();
		$.ajax({
			url: "http://localhost:8080/api/shift/save/" + number + "/" + startTime + "/" + endTime,
			type: "GET",
			dataType: "text",
			success: function(response) {
				$("#message").html("<div class='alert alert-success'><strong>Success!</strong> Sample shift information is successfully saved.</div>");
				console.log("saveShift() success: " + response);
			},
			error: function(xhr, status, error) {
				console.log("saveShift() error: " + error);
			}
		});
	}
}

function saveSampleTableInfo() {
	var column1 = $("#column1").val();
	var column2 = $("#column2").val();
	var column3 = $("#column3").val();
	$.ajax({
		url: "http://localhost:8080/api/data/sample/save",
		type: "GET",
		data: {
			"column1": column1,
			"column2": column2,
			"column3": column3
		},
		success: function(response) {
			if(response != null && response.id > 0) {
				$("#sampleTableMessage").html("<div class='alert alert-success'><strong>Success!</strong> Sample table information is successfully saved.</div>");
			}
			updateSampleTable();
		},
		error: function(xhr, status, error) {
			console.log("saveWarehouseStackInfo error: " + error);
		}
	});
}

function updateSampleTable() {
	$.ajax({
		url: "http://localhost:8080/api/data/sample/retrieve",
		type: "GET",
		success: function(response) {
			var totalData = 0;
			if (response != null) {
				$("#sampleTable tbody").empty();
				for(const idx in response) {
					var newRow = "<tr><td>" + response[idx].column1 + "</td><td>" + response[idx].column2 + "</td><td class='text-end'>" 
						+ response[idx].column3 + "</td></tr>";
					$("#sampleTable tbody").append(newRow);
					totalData += response[idx].column3;
				};
			}
			$("#sample_table").val(totalData);
		},
		error: function(xhr, status, error) {
			console.log("updateWarehouseTable() error: " + error);
		}								
	});
}

function clearSampleTableModal() {
	$("#sampleTableMessage").html("");
	$("#column1").val("");
	$("#column2").val("");
	$("#column3").val("");
}
