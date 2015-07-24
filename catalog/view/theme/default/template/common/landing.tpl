<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="catalog/view/js/Chart.js"></script>


<script>


	$.ajax({
            url: 'index.php?route=common/home/pindata',
            beforeSend: function(){
                
               
            },
            success: function(data) {

                  
                    var obj = jQuery.parseJSON(data); 

                    var rating = new Array();
                    var pincode = new Array();


                    //console.log(data);
                    
                    for (var i = 0; i < 10 ; i++) {
                       
                       pincode[i] = obj[i]['pincode'];
                       rating[i] = obj[i]['rating'];
                    };

                    console.log(rating);

                    var barChartData = {
					labels : pincode,
					datasets : [
						{
							fillColor : "rgba(151,187,205,0.5)",
							strokeColor : "rgba(151,187,205,0.8)",
							highlightFill : "rgba(151,187,205,0.75)",
							highlightStroke : "rgba(151,187,205,1)",
							data : rating
						}
					]

					}

					var ctx = document.getElementById("canvas").getContext("2d");
					window.myBar = new Chart(ctx).Bar(barChartData, {
							responsive : true
					});
                    
            	}
        	}); 



	

	
	

	</script>

</head>
<body>
		<div style="width: 50%">
			<canvas id="canvas" height="450" width="600"></canvas>
		</div>




</body>
</html>
